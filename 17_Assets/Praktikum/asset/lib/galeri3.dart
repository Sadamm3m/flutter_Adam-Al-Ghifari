import 'package:flutter/material.dart';

class AboutScreen3 extends StatelessWidget{
  const AboutScreen3 ({Key?key}) :super(key: key);
  @override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text('Galeri'),
    ),
    body: Column(children: [
      Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(0),
        child: const Image(image: AssetImage('assets/3.jpg')),
      )
    ],),
  );
}
}