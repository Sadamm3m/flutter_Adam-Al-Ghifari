import 'dart:io';
main() async{
  print("Masukkan pengali : ");
  //parse konversi dari string ke int
  int pengali = int.parse(stdin.readLineSync()!);//memasukan inputan
  var score = [1, 2 , 3 , 4 , 5 ];
  print(score );
  print("\t");
  for (var score in score ){
    print(score*pengali);
  }
}