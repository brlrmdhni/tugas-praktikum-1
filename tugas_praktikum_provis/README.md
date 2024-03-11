# Praktikum 1 - Pemrograman Visual dan Piranti Bergerak

Dalam tugas pertama ini, mahasiswa diperintahkan untuk membuat sebuah program Dart yang menerapkan konsep OOP (Object Oriented Programing) dan Asyncronous.

Berikut ini adalah penjelasan implementasi OOP dan Asyncronus.

## Implementasi OOP & Asyncronous

![ReferenceImage](/screenshots/img-0.png)

class MahasiswaException merupakan kelas eksekusi yang digunakan untuk menangani kondisi kesalahan yang terjadi saat mengeksekusi metode validate dalam class Mahasiswa. Jika terjadi eksekusi yang tidak beresultatif, maka akan dibuat eksekusi dengan kelas MahasiswaException. Kelas ini memiliki konstruktor yang menerima satu parameter yaitu message, yang mana ini akan menjadi pesan error. lalu, pesan error tersebut akan tersimpan dalam variabel message dalam class MahasiswaException.

![ReferenceImage](/screenshots/img-1.png)

class Mahasiswa memiliki fungsi static validate yang digunakan untuk memvalidasi data mahasiswa. Fungsi ini menerima dua parameter: nama dan nim. Fungsi validate menggunakan metode async/await untuk menunggu proses validasi selesai. Proses validasi ini akan mengecek apakah data yang diinputkan sesuai dengan data mahasiswa yang terdaftar, yaitu Berliana dengan nim 2316795.

Jika data yang diinputkan tidak valid, maka akan dithrow exception, yaitu:

## 1. MahasiswaException, jika nama atau nim kosong

Berikut ini adalah gambaran outputnya :
### MahasiswaException terjadi jika nama kosong
![ReferenceImage](/screenshots/output-jika-nama-kosong.png)
### MahasiswaException terjadi jika nim kosong
![ReferenceImage](/screenshots/output-jika-nim-kosong.png)

## 2. Exception, jika nama bukan "Berliana" atau nim bukan "2316795"

Berikut ini adalah gambaran outputnya :
### Exception terjadi jika nama bukan Berliana atau nim bukan 2316795
![ReferenceImage](/screenshots/output-jika-nama-&-nim-bukan-berliana-2316795.png)

# Eksekusi Program

![ReferenceImage](/screenshots/img-3.png)

Dalam kode di atas, saya menggunakan try-catch untuk menangani kondisi kesalahan. Jika terjadi eksekusi yang tidak beresultatif, maka akan dibuat eksekusi dengan class MahasiswaException atau Exception. Kode ini akan menampilkan pesan error dan stack trace jika terjadi kesalahan. Jika tidak terjadi kesalahan, maka akan menampilkan pesan "Program Selesai".

![ReferenceImage](/screenshots/output-jika-tidak-ada-exception.png)

Berikut ini adalah ringkasan penjelasan detail ekseskusi program:

1. Blok try: Berisi kode yang berpotensi menghasilkan error. Dalam contoh ini, kode di dalam blok try adalah pemanggilan fungsi validate.
2. Blok catch: Berisi kode yang akan dijalankan jika terjadi error di dalam blok try. Dalam contoh ini, blok catch akan mencetak pesan error dan stack trace.
3. MahasiswaException: class exception khusus yang digunakan untuk menandakan error pada validasi data mahasiswa.
4. Exception: class exception umum yang digunakan untuk menandakan error general.
5. await: Digunakan untuk menunggu proses validasi selesai.








