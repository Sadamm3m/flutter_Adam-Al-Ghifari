class BeratHewan {
  var ayam = 5;
  var sapi = 720;
  var kambing = 140;
  var unta = 800;
}
class Mobil{
  var ListHewan=[
    'ayam',
    'sapi',
    'kambing',
    'unta',
  ];
  total(){
    if(ListHewan.length <= 5){
      print('tambah muatan');
      ListHewan.add('kucing');
      print(ListHewan);
    }if(ListHewan.length >= 5){
      print('penuh');
      print(ListHewan);
    }
  }
}
void main() {
  Mobil p1 = Mobil();
  print(p1.ListHewan);
  print(p1.ListHewan.length);
  print(p1.total);
}