import 'package:asset/galeri.dart';
import 'galeri2.dart';
import 'galeri3.dart';
import 'galeri4.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage ({ Key ?  key }):super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('assset'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          GestureDetector(
            onTap: (){
              showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: const Image(image: AssetImage('assets/1.jpg'),height: 100,width: 100,),
                    actions: [
                      ElevatedButton(
                        child: const Text('yes'),
                        onPressed: (){
                          Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => const AboutScreen1()));
                        },
                      ),

                      ElevatedButton(
                        child: const Text('no'),
                        onPressed: (){
                          print("no");
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                }
              );
            },
            child: const Image(image: AssetImage('assets/1.jpg')),
          ),

          GestureDetector(
            onTap: (){
              showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: const Image(image: AssetImage('assets/2.jpg'),height: 100,width: 100,),
                    actions: [
                      ElevatedButton(
                        child: const Text('yes'),
                        onPressed: (){
                          Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => const AboutScreen2()));
                        },
                      ),

                      ElevatedButton(
                        child: const Text('no'),
                        onPressed: (){
                          print("no");
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                }
              );
            },
            child: const Image(image: AssetImage('assets/2.jpg')),
          ),

          GestureDetector(
            onTap: (){
              showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: const Image(image: AssetImage('assets/3.jpg'),height: 100,width: 100,),
                    actions: [
                      ElevatedButton(
                        child: const Text('yes'),
                        onPressed: (){
                          Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => const AboutScreen3()));
                        },
                      ),

                      ElevatedButton(
                        child: const Text('no'),
                        onPressed: (){
                          print("no");
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                }
              );
            },
            child: const Image(image: AssetImage('assets/3.jpg')),
          ),

          GestureDetector(
            onTap: (){
              showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: const Image(image: AssetImage('assets/4.jpg'),height: 100,width: 100,),
                    actions: [
                      ElevatedButton(
                        child: const Text('yes'),
                        onPressed: (){
                          Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => const AboutScreen4()));
                        },
                      ),

                      ElevatedButton(
                        child: const Text('no'),
                        onPressed: (){
                          print("no");
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                }
              );
            },
            child: const Image(image: AssetImage('assets/4.jpg')),
          ),

        ],
        
      ),
    );
  }
}