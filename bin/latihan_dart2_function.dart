import 'dart:io';

//Fungsi dengan return value
double LuasSegi3(double param1, double param2) {
  return param1 * param2 / 2;
}

//Fungsi tanpa return value

void HelloWorld(String nama) {
  print('Hello ' + nama);
}

//fungsi dengan Name parameters
//Kelebihan dapat diisi satu name parameter dengan memanggil name param
String Says(String from, String message,
    {String to = "somebody", String appName}) {
  return from +
      " say " +
      message +
      (to != null ? " to " + to : "") +
      (appName != null ? " via " + appName : "");
}

//Fungsi dengan optional parameters
//Kelebihan, Mudah dalam penulisan
String Says2(String from, String message,
    [String to = "Somebody", String appName = "ChatApp"]) {
  return from +
      " say " +
      message +
      (to != null ? " to " + to : "") +
      (appName != null ? " via " + appName : "");
}

//Arrow function
double LuasSegi4(double panjang, double lebar) => panjang * lebar;

//Anonymus Function
int doMathOperator(int a, b, Function(int, int) operator) => operator(a, b);

void main(List<String> arguments) {
  double alas, tinggi;
  print('Masukkan Alas');
  alas = double.tryParse(stdin.readLineSync());
  print('Masukkan Tinggi');
  tinggi = double.tryParse(stdin.readLineSync());
  double hasil = LuasSegi3(alas, tinggi);
  print('luas segi 3 = ' + hasil.toString());
  print('Masukkan Nama Anda');
  HelloWorld(stdin.readLineSync());
  print(Says("Dewade", "Hello", to: "Orang Lain", appName: "ChatApp"));
  print(Says("Dewade", "Hello", appName: "ChatApp"));
  print(Says2("dewade", "Hello", "ChatApp"));
  print(LuasSegi4(5, 2));

  //Function First Class Object
  Function f;
  f = LuasSegi4;
  print(f(8.0, 2.4));

  //Anonymus Function
  print(doMathOperator(5, 2, (a, b) => a * b));
}
