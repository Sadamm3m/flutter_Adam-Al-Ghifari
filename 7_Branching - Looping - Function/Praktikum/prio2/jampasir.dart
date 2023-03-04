import 'dart:io';
void main() {
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