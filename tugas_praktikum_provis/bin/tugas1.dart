class MahasiswaException implements Exception {
  String message;
  MahasiswaException(this.message);
}

class Mahasiswa {
  static Future<void> validate(String nama, String nim) async {
    if (nama == "") {
      throw MahasiswaException("Nama Anda kosong!");
    } else if (nim == "") {
      throw MahasiswaException("NIM Anda kosong!");
    } else if (nama != 'Berliana' || nim != '2316795') {
      throw Exception('Validasi Gagal!');
    }
  }
}

void main() async {
  try {
    await Mahasiswa.validate("Ana", "2316797");
    print('Program Selesai');
  } on MahasiswaException catch (exception, stackTrace) {
    print('Validasi Tidak Berhasil : ${exception.message}');
    print('Stack Trace : ${stackTrace.toString()}');
  } on Exception catch (exception, stackTrace) {
    print('Tidak Berhasil : ${exception.toString()}');
    print('Stack Trace : ${stackTrace.toString()}');
  } finally {
    print('Program Selesai');
  }
}

