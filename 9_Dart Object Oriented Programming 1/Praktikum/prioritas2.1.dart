import 'dart:math';
class kalkulator{
  int a = 0; 
  int b = 0;
   
  add({required int a, required int b}) {
    return a + b;
  }
  Pengurangan({required int a, required int b}) {
    return a - b;
  }
  Kali ({required int a, required int b}) {
    return a * b;
  }
  Bagi ({required int a, required int b}) {
    return a / b;
  }
}
void main() {
  kalkulator kalkulasi = kalkulator();
  var y = kalkulasi.add(a: 5, b: 7);
  var x = kalkulasi.Pengurangan(a: 5, b: 7);
  var z = kalkulasi.Kali(a: 5, b: 7);
  var a = kalkulasi.Bagi(a: 5, b: 7);
  print(y);
  print(x);
  print(z);
  print(a);
}