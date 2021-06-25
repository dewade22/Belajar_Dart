import 'dart:io';
import 'package:latihan_dart2_function/luas_persegi_panjang.dart';

void main(List<String> arguments) {
  LuasPersegiPanjang Luas;
  //double Panjang, Lebar;
  Luas = new LuasPersegiPanjang();
  print('Hitung Luas Persegi Panjang');
  print('Masukkan Panjang');
  //set Dengan Method
  Luas.setPanjang(double.tryParse(stdin.readLineSync()));
  print('Masukkan Lebar');
  //Set dengan Property(Bawaan Dart)
  Luas.Lebar = double.tryParse(stdin.readLineSync());
/*
  Sebaiknya untuk menghitung luas langsung meng get fungsi Luas
  print(Luas.HitungLuas().toString());
*/
//get Fungsi Luas; lebih baik langsung get fungsi daripada menjalankan dan mengakses fungsi
  print(Luas.Luas.toString());

  print('Panjang : ' +
      //Get Menggunakan Method
      Luas.getPanjang().toString() +
      ' Lebar : ' +
      //Get Menggunakan Property Bawaan dart
      Luas.Lebar.toString());
}
