import 'dart:io';

void main() {
  int faktorial = 1;
  print("Masukkan bilangan bulat : ");
  int n = int.parse(stdin.readLineSync()!);//memasukan inputan
  if (n < 0){
    print("Angka yang dimasukkan bukan bilangan bulat");
  } else {
    for (int i = 1; i <= n; i++){
      faktorial *= i;
    }
    print("Hasil faktorial dari ");
    print(n);
    print("adalah");
    print(faktorial);
  }
}