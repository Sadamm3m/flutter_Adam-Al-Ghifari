import 'dart:io';
void main() {

  pola4();
  
}

void polasatu(){
  int baris=5;
  for (int i=1; i<= baris; i++){
    for(int j=1; j<=baris -i; j++){
      stdout.write('');
    }
    for(int k =1; k<= i; k++){
      stdout.write(k);
    }
    stdout.write('\n');
  }
}

void poladua(){
  for (int a=5; a>= 1; a--){
    for(int z=1; z<=a; z++){
      stdout.write('$z');
    }
    print('');
  }
}


void polatigaseberan(){
  for (int a=1; a<=5; a++){
    for(int z=1; z<=5; z++){
      if(z - a <=0){
        stdout.write('');
      }else{
        stdout.write('${z-a + 1}');
      }
    }
    print('');
  }
}

void polatiga(){
  for (int a=1; a<=5; a++){
    for(int z=1; z<=5; z++){
      if(z - a+1 <=0){
        stdout.write('');
      }else{
        stdout.write('${z-a + 1}');
      }
    }
    print('');
  }
  for (int a=5; a>=1; a--){
    for(int z=1; z<=5; z++){
      if(z - a+1 <=0){
        stdout.write('');
      }else{
        stdout.write('${z-a + 1}');
      }
    }
    print('');
  }
}

void po(){
  for (int a=1; a<=5; a++){
    for(int z=1; z<=5; z++){
      if(z - a+1 <=0){
        stdout.write('');
      }else{
        stdout.write('${z-a + 1}');
      }
    }
    print('');
  }
  for (int a=5; a>=1; a--){
    for(int z=1; z<=5; z++){
      if(z - a+1 <=0){
        stdout.write('');
      }else{
        stdout.write('${z-a + 1}');
      }
    }
    print('');
  }
}





void pola4() {
  for (int a = 5; a >= 1; a--) {
    for (int z = 1; z <= 5; z++) {
      if(z - a + 1 <= 0) {
        stdout.write(' ');
      } else {
        stdout.write('${z - a + 1} ');
      }
    }
    print('');
  }
}

void last() {
  for (int a = 1; a <= 4; a++) {
    for (int z = 1; z <= 5; z++) {
      if(z - a+1  <= 0) {
        stdout.write(' ');
      } else {
        stdout.write('${z - a + 1} ');
      }
    }
    print('');
  }
  for (int a = 5; a >= 1; a--) {
    for (int z = 1; z <= 5; z++) {
      if(z - a + 1 <= 0) {
        stdout.write(' ');
      } else {
        stdout.write('${z - a + 1} ');
      }
    }
    print('');
  
  }
}