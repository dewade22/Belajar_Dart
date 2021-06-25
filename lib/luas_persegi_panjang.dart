class LuasPersegiPanjang {
  //fungsi dari _ pada variabel adalah membuat menjadi private
  double _panjang, _lebar;

//Method Setter; mendapatkan nilai dari enkapsulasi.dart kemudian di set ke variabel _panjang dan _lebar
  void setPanjang(double value) {
    if (value < 0) {
      value *= -1;
    }
    _panjang = value;
  }

  //Property setter (Bawaan Dart)
  void set Lebar(double value) {
    if (value < 0) {
      value *= -1;
    }
    _lebar = value;
  }

//Method Getter; berfungsi untuk mendapatkan nilai dari variabel private agar dapat diakses di kelas lain
  double getPanjang() => _panjang;
//property getter (Bawaaan Dart)
  double get Lebar => _lebar;

//Fungsi untuk menghitung Luas
  double HitungLuas() => this._panjang * this._lebar;

  //Sebaiknya untuk hitung luas dibuatkan Fungsi seperti dibawah ini
  double get Luas => this._panjang * this._lebar;
}
