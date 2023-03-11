void main() {
  Hewan h1 = Hewan(nama: 'kambing');
  h1.nama;
  h1.bersuara;

  Peternakan p1 = Peternakan();

  p1.menambahkanhewan(hewan: h1);
  print(p1.ListHewan);
  print(p1.ListHewan[0].nama);

  print(p1.hitungJumlahHewan());
}
class Hewan {
  String nama;
  Hewan({required this.nama});

  void bersuara(){
    print('');
  }
}
class Peternakan {
  
  double luas = 0;
  List <Hewan> ListHewan = [];
  Hewan hewan= Hewan(nama: 'sapi');
  int hitungJumlahHewan(){
    return ListHewan.length;
  }
  void menambahkanhewan({required Hewan hewan}){
    ListHewan.add(hewan);
  }
}