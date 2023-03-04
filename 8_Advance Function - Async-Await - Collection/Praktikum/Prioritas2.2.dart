import 'dart:io';
void main() {
  var nomer=[7,5,3,5,2,1];
  int sum = 0;
  for (int angka in nomer) {
    sum += angka;
  }
  print("angka$nomer total :$sum");
  var len =nomer.length;
  print("panjang list :$len");
  num total = sum / len;
  print("rata-rata nilai diatas =");
  print(total.ceil());//ceil() membulatkan bilangan ke atas
  //floor() Membulatkan bilangan kebawah
}