## 8_Advance Function - Async-Await - Collection
###  Pada minggu ini kita belajar mengenai

- Fungsi lanjut  
Dalam fungsi lanjut terdapat beberapa fungsi
  - Anonymus Function
   memiliki ciri, Tidak memiliki nama, fungsi sebagai data
  - Arrow Function Dapat memiliki nama atau tidak, Berisi 1 data, nilai return fungsi ini diambil dari data tersebut
   fungsi halo melakukan print di dalam nya
   ```sh
   Var helo = () => print('helo');
   ```

- Async-Await
Async-Await menjalan kan proses tanpa menunggu  
proses ditulis dalam bentuk fungsi  
sedangkan Await akan menunggu hingga proses Async selesai dan baju akan dijalankan  
```
    void main(List<String> arguments) async {
      countDown(3);
    }

    countDown(int n) {
      print("baris pertama");
      Future.delayed(Duration(seconds: n)).then((value) {
        print("baris kedua");
      });
      print("baris terakhir");
    }
```
- Tipe data future  
data yang dapat ditunggu 
Membawa data return dari fungsi asyng
- Colection 
kumpulan data pada suatu tempat 
 - list Menyimpan data(elemen) secara baris
 ```
 void main()async{
  var score = [1, 2 , 3 , 4 , 5 ];
  print(score );
  for (var score in score ){
    print(score);
 }
 ```
