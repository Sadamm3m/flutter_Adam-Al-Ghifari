## 11_Introduction Flutter Widget
###  Pada minggu ini kita belajar mengenai

- statless wiget 
Hanya berfokus dapa tampilan, tidak bergantung pada perubahan data Dibuta dengan extends pada class statless wiget
```
class GreenFrog extends StatelessWidget {
  const GreenFrog({ super.key });

  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xFF2DBD3A));
  }
}
```

- statefule wiget
mementingkan perubahan data, Dibut dengan extends pada clas statefule wiget, 1 state menggunakan 2 class(wiget dan State).
```
class YellowBird extends StatefulWidget {
  const YellowBird({ super.key });

  @override
  State<YellowBird> createState() => _YellowBirdState();
}

class _YellowBirdState extends State<YellowBird> {
  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xFFFFE306));
  }
}
```
- Bulit in wiget
wiget yang sudah bisa digunakan setelah install fluter
  - material app
   ```
   const MaterialApp();
   ```
  - scaffold
   ```
   const Scaffold();
   ```
  - appbar
   ```
   const AppBar();
   ```
  - text
   ```
   const Text();
   ```
