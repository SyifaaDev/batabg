package com.informasipasar.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.core.content.ContextCompat;

public class BootReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        try {
            ContextCompat.startForegroundService(
                    context, new Intent(context, BackgroundService.class));
        } catch (Exception ignored) {}
    }
}
