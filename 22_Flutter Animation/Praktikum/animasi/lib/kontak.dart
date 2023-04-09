import 'package:animasi/Add_kontak.dart';
import 'package:flutter/material.dart';

class Kontak extends StatefulWidget {
  const Kontak({Key? key}) : super(key: key);
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<Kontak> {
  List nama = [
    'PurplePenguin22',
    'GreenGiraffe99',
    'SilverSunshine11',
    'BlueButterfly44',
    'GoldenDragonfly77',
  ];
  List nomor = [
    '(555) 123-4567',
    '(555) 234-5678',
    '(555) 345-6789',
    '(555) 456-7890',
    '(555) 567-8901',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ini kontak'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: nama.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(nama[index]),
                    subtitle: Text(
                      nomor[index],
                    ),
                    leading: CircleAvatar(
                      child: Text(nama[index][0]),
                    ),
                    trailing: InkWell(
                      onTap: (() {
                        setState(() {
                          nama.removeAt(index);
                        });
                      }),
                      child: const Icon(Icons.delete),
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            child: const Text('ADD Contak'),
            onPressed: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                    pageBuilder: (context, animation, secodaryAnimation) {
                  return const ListViewPage();
                }, transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                  final tween =
                      Tween(begin: const Offset(1, 0), end: Offset.zero);
                  return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                  );
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
