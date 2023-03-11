void main() {
  var ListHewan=[
    'ayam',
    'sapi',
    'kambing',
    'unta',
  ];
  print(ListHewan);
  if(ListHewan.length <= 4){
    print('list kurang dari 5 tambah');
    ListHewan.add('kucing');
    print(ListHewan);
  }else{
    print("penuh");
  };
  var list = ListHewan.length;
  print('total muatan adalah $list');
}
class BeratHewan {
  var ayam = 5;
  var sapi = 720;
  var kambing = 140;
  var unta = 800;
}