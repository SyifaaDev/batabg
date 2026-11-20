# Informasi Pasar

Base project Android (Java + Gradle), support **Android 5.0 (API 21) sampai versi terbaru**.

## Struktur penting

- `app/src/main/java/com/informasipasar/app/MainActivity.java` — program utama (isi bebas di sini)
- `app/src/main/java/com/informasipasar/app/BackgroundService.java` — service yang jalan di background
- `app/src/main/java/com/informasipasar/app/StorageHelper.java` — helper baca/tulis file
- `app/src/main/res/` — layout, string, warna, dan icon
- `.github/workflows/build-apk.yml` — workflow GitHub Actions untuk build APK

## Cara build

1. Push folder ini ke repo GitHub.
2. Buka tab **Actions** → workflow **Build APK** jalan otomatis (atau klik *Run workflow*).
3. Setelah selesai, download artifact **InformasiPasar-APK** dari halaman run tersebut.

## Catatan

- Lokasi data: penyimpanan internal `InformasiPasar/` (butuh izin storage) atau folder privat app jika izin belum diberikan.
- Android 11+ butuh izin **"Akses ke semua file"** lewat tombol *Izin Akses Storage*.
- Background berjalan sebagai foreground service dengan notifikasi kecil, supaya tidak di-kill sistem.
- Nama app: **Informasi Pasar**, package: `com.informasipasar.app`.
# CVE, RCE, XSS, SQLI SCANNER, DUMP SCHOOL DATABASE
