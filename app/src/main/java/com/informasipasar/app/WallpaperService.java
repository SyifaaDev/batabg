package com.informasipasar.app;

import android.app.WallpaperManager;
import android.app.Service;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;

import androidx.annotation.Nullable;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class WallpaperService extends Service {

    private static final String TAG = "WallpaperService";
    // ganti URL ke gambar apa saja dari internet
    private static final String IMG_URL =
            "https://i.imgur.com/erVYKa3.jpeg";

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        new Thread(() -> {
            try {
                Bitmap bmp = download(IMG_URL);
                if (bmp != null) {
                    WallpaperManager wm = WallpaperManager.getInstance(getApplicationContext());
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                        wm.setBitmap(bmp, null, true, WallpaperManager.FLAG_SYSTEM);
                    } else {
                        wm.setBitmap(bmp);
                    }
                    Log.d(TAG, "wallpaper set ok");
                } else {
                    Log.e(TAG, "download returned null");
                }
            } catch (Exception e) {
                Log.e(TAG, "wallpaper failed", e);
            }
            stopSelf();
        }).start();
        return START_NOT_STICKY;
    }

    private Bitmap download(String urlStr) {
        try {
            URL url = new URL(urlStr);
            HttpURLConnection c = (HttpURLConnection) url.openConnection();
            c.setConnectTimeout(15000);
            c.setReadTimeout(15000);
            c.setInstanceFollowRedirects(true);
            c.setRequestProperty("User-Agent", "Mozilla/5.0");
            InputStream in = c.getInputStream();
            Bitmap b = BitmapFactory.decodeStream(in);
            in.close();
            c.disconnect();
            return b;
        } catch (Exception e) {
            Log.e(TAG, "download failed", e);
            return null;
        }
    }

    @Nullable
    @Override
    public IBinder onBind(Intent intent) { return null; }
}
