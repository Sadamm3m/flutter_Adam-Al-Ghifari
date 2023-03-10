## 7_Branching - Looping - Function
### Pada pertemuan kali ini berisi tentang 
- Pengambil Keputusan 
Adalah Menentukan alur program pada kondisi tertentu 
ada 3 percabangan 
  - if 
  Menentukan nilai bool (Dari operator logic atau comparation) 
  Menjalan kan bagian proses jika nilai bool bernilai true
  ```
  void main(){
  var usia = 18;
  if (usia <20){
      print("remaja");
    }
  }
  ```
  - if-else
  berjalan dengan if 
  Menambahkan alternatif jika nilai bool bernilai fals 
  ```
  void main(){
  var usia = 18;
  if (usia <20){
      print("remaja");
    }
    else{
      Print("masi kanak kanak")
    }
  }
  ```
  - else-if
  berjalan dengan if 
  Menambahkan alternatif jika nilai bool bernilai fals  
  menambahkan pengujian nilai bool lain 
  
  ```
  void main(){
  var usia = 18;
  if (usia <20){
      print("remaja");
    }
    else if(usia<40){
      Print("dewasa");
    }else{
      print('tidak ada golongan')
    }
  }
  ```
- Perulangan
  Dalam datr perulangan ada 3
   - for
    Dapat diketahui perulangan terjadi 
    Memerlukan Nilai awal 
    Memerlukan nilai bool, Jika true perulangan berlajut 
    Memerlukan pengubah nilai 
    ```
    void main(){
      for(var i = 0; i <= 10; i +=1){
        print("i");
      }
    }
    ```
    
   - while 
   Tidak diketahui perulangan terjadi 
   Memerlukan nilai bool, jika true perulangan berlanjut
   ```
   void main(){
    var i = 0;
    while(i < 10){
        print(i);
        i++;
      } 
   }
   ```
   
   - do-while
   Menubah bentuk while
   proses minimal dijalankan sekali, akan berjalan terus jika nilai bool bernilai true
   ```
   void main(){
     var i = 0;
     do{
        print(i);
        i++;
      } while(i < 10 );
   }
   ```
 - Break and continue
 cara lain menghentikan perulangan
     ```
    void main(){
      for(var i = 0; true; i ++){
        if(i == 10);
        break; // maka perulangan akan berhenti pada perulangan ke 10
      }
      print("i");
    }
    ``` 
  
  
  
  
  
