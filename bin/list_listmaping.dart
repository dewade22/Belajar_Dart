import 'dart:io';

import 'dart:math';

void main(List<String> arguments) {
  //contoh list
  List<int> list = [];
  List<int> myList = [1, 2, 3];

  //mengakses list
  int angka = myList[1];
  print(angka);

  //Modifikasi elemen dalam list
  myList[0] = myList[0] + 7;
  print(myList[0]);

  //Modifikasi dengan nilai random
  Random random = new Random();
  myList[0] = random.nextInt(50);
  int b = myList[random.nextInt(myList.length - 1)];
  int hasil = myList[0] * b;
  print('nilai myList[0] = ' +
      myList[0].toString() +
      ' nilai b = ' +
      b.toString() +
      ' hasil = ' +
      hasil.toString());

  //Print semua nilai  di MyList menggunakan for
  for (int a = 0; a < myList.length; a++) {
    print(myList[a]);
  }

  //menggunakan for pendek
  for (int bilangan in myList) {
    print(bilangan);
  }

  //menggunakan foreach
  myList.forEach((element) {
    print(element);
  });

  //Menambahkan index baru ke myList
  myList.add(19);
  print('================');

  // menambahkan semua element Mylist ke List
  list.addAll(myList);

  //menggunakan foreach
  myList.forEach((element) {
    print(element);
  });

  print('+++++++++++++++++++++++++++');
  list.forEach((element) {
    print(element);
  });

  print('========================');
  List<String> listString = [];
  //List Maping
  /*cara dengan foreach
  list.forEach((element) {
    listString.add('Bilangan : ' + element.toString());
  });
  */

  listString = list.map((e) => 'Bilangan : ' + e.toString()).toList();
  listString.forEach((element) {
    print(element);
  });
}
