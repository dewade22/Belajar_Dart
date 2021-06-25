import 'dart:io';

void main(List<String> arguments) {
  //Declare variabel Luas dengan tipe data sesuai nama classs
  LuasLingkaran Luas;
  print('Hitung Luas Lingkaran');
  print('Masukkan Jari2');
  //Membuat Luas dapat mengakses class LuasLingkaran
  Luas = new LuasLingkaran();
  //Memberi nilai jari2 dari class Luas Lingkaran
  Luas.jari2 = double.tryParse(stdin.readLineSync());
  print(Luas.Hitung().toString());
}

class LuasLingkaran {
  double jari2;
  double Hitung() => 3.14 * this.jari2 * this.jari2;
}
