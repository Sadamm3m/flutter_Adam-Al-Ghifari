import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<Menu> {
  List nama = [];
  List nomor = [];
  List pesan = [];
  final _formKey = GlobalKey<FormState>();
  final _nama = TextEditingController();
  final _email = TextEditingController();
  final _pesan = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              child: const Image(image: AssetImage('assets/logo.png')),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      'WELCOME',
                      style: TextStyle(fontSize: 35),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(0),
                      margin: const EdgeInsets.all(0),
                      width: 100,
                      height: 100,
                      child: const Image(image: AssetImage('assets/logo.png')))
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(0),
              margin: const EdgeInsets.all(0),
              child: const Text(
                'Thank you for visiting my application, in the menu below we provide an input menu,'
                'input name, email and message menu if you have problems running my application.',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            margin: const EdgeInsets.all(0),
            child: const Text(
              'CONTAC US',
              style: TextStyle(fontSize: 35),
              textAlign: TextAlign.center,
            ),
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
                    controller: _email,
                    maxLines: null,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.email),
                        labelText: 'Email',
                        hintText: 'Masukan Email'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _pesan,
                    minLines: 3,
                    maxLines: 3,
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.message), hintText: "Enter Massage"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nama.add(_nama.text);
                        nomor.add(_email.text);
                        pesan.add(_pesan.text);
                      });
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
          ),
          (_pesan.value.text.isEmpty)
              ? const Text('Enter Masage')
              : Text('Masage: ${_pesan.value.text}'),
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
                          setState(
                            () {
                              nama.removeAt(index);
                            },
                          );
                        }),
                        child: const Icon(Icons.delete)),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
