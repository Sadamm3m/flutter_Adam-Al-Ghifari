import 'package:animasi/kontak.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
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
  final _formKey = GlobalKey<FormState>();
  final _nama = TextEditingController();
  final _nomor = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ADD kontak'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            child: const Icon(Icons.add_ic_call_outlined),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: const Text(
              'CREATE NEW CONTACTS',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Center(
            child: Container(
                padding: const EdgeInsets.all(10),
                width: 600,
                child: const Text(
                  'Apabila Anda Ingin Menambahkan Kontak Dapat Mengisi Data Dibawah Ini',
                  textAlign: TextAlign.center,
                )),
          ),
          Form(
            key: _formKey,
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: _nama,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "Ketik nama lengkap anda",
                      labelText: "Nama Lengkap",
                    ),
                    //memberikan validasi jika form kosong
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    controller: _nomor,
                    keyboardType: TextInputType.number,
                    maxLines: null,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.phone),
                        labelText: 'Nomor',
                        hintText: 'Masukan Nomor'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nama.add(_nama.text);
                        nomor.add(_nomor.text);
                      });
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            child: const Text('Contak'),
            onPressed: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secodaryAnimation) {
                    return const Kontak();
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    final tween =
                        Tween(begin: const Offset(0, 1), end: Offset.zero);
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
