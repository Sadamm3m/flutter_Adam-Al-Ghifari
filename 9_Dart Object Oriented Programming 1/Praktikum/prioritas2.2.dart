class Curse{
  var judul ='kamus';
  var deskripsi ='B.indonesia';
}
class Student{
  var nama ="adam";
  var clas ="d";
}
void main() { 
  List<String> listjudul= [
    "B.indo",
    "B.jawa",
    "B.inggris",
  ];
  print(listjudul);
  String value = "B.Arab";
  listjudul.add(value);
  String value1 = "B.indo";
  listjudul.remove(value1);
  print(listjudul);
}//maaf kak sebenarnya saya bemum terlalu mudeng dengan penggunaan 
//clas seperti di dalam clah itu nambah lis mengambil nilai dalam clas
//saya belum terlalu mudeng 