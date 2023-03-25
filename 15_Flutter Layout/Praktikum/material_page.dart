import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  final List nama =[
    'PurplePenguin22',
    'GreenGiraffe99',
    'SilverSunshine11',
    'BlueButterfly44',
    'GoldenDragonfly77',
  ];
  final List nomor=[
    '(555) 123-4567',
    '(555) 234-5678',
    '(555) 345-6789',
    '(555) 456-7890',
    '(555) 567-8901',
  ];
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 70, 69, 69),
        title: Text ('MaterialApp'),
      ),

      drawer: Drawer(
        child : Container(
          color: Color.fromARGB(255, 36, 35, 35),
          child: ListView(
          children: const [
            ListTile(title: Text ('home',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)))),
            ListTile(title: Text('Setting',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)))),
          ],
        ),
        )
      ),

      body: Column(
        children: [

          Container(
            margin:  const EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all()),
          ),

          Expanded(
            child:ListView.builder(
              itemCount: nama.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(nama[index]),
                    subtitle: Text(nomor[index]),
                    leading: CircleAvatar(
                      child: Text(nama[index][0]),
                    ),
                  )
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child:BottomNavigationBar(
              unselectedItemColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 70, 69, 69),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
              ]
            ), 
          )
        ],
      )
    );
  }
} 

