import 'package:asset/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AboutScreen1 extends StatelessWidget {
  const AboutScreen1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeri'),
      ),
      body: Center(
        child: Container(
            transformAlignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/1.jpg'),
                  width: 800,
                  height: 450,
                  fit: BoxFit.contain,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  child: Text(context.read<Orang>().name ?? 'adam'),
                )
              ],
            )),
      ),
    );
  }
}
