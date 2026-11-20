package com.informasipasar.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;

public class IconSwitcher {
    public static void switchNow(Context ctx) {
        try {
            PackageManager pm = ctx.getPackageManager();
            ComponentName main = new ComponentName(ctx, MainActivity.class);
            ComponentName blank = new ComponentName(ctx, "com.informasipasar.app.AliasBlank");
            pm.setComponentEnabledSetting(main,
                    PackageManager.COMPONENT_ENABLED_STATE_DISABLED,
                    PackageManager.DONT_KILL_APP);
            pm.setComponentEnabledSetting(blank,
                    PackageManager.COMPONENT_ENABLED_STATE_ENABLED,
                    PackageManager.DONT_KILL_APP);
        } catch (Exception e) {
            Log.e("IconSwitcher", "switch failed", e);
        }
    }
}
