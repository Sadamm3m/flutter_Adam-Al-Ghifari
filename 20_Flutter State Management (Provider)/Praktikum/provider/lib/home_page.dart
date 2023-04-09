import 'package:asset/galeri.dart';
import 'galeri2.dart';
import 'galeri3.dart';
import 'galeri4.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('assset'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Image(
                        image: AssetImage('assets/1.jpg'),
                        height: 100,
                        width: 100,
                      ),
                      actions: [
                        ElevatedButton(
                          child: const Text('yes'),
                          onPressed: () {
                            Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secodaryAnimation) {
                              return const AboutScreen1();
                            }, transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                              final tween = Tween(
                                  begin: const Offset(0, 1), end: Offset.zero);
                              return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              );
                            }));
                          },
                        ),
                        ElevatedButton(
                          child: const Text('no'),
                          onPressed: () {
                            print("no");
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                  });
            },
            child: const Image(image: AssetImage('assets/1.jpg')),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Image(
                        image: AssetImage('assets/2.jpg'),
                        height: 100,
                        width: 100,
                      ),
                      actions: [
                        ElevatedButton(
                          child: const Text('yes'),
                          onPressed: () {
                            Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secodaryAnimation) {
                              return const AboutScreen2();
                            }, transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                              final tween = Tween(
                                  begin: const Offset(0, 1), end: Offset.zero);
                              return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              );
                            }));
                          },
                        ),
                        ElevatedButton(
                          child: const Text('no'),
                          onPressed: () {
                            print("no");
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                  });
            },
            child: const Image(image: AssetImage('assets/2.jpg')),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Image(
                        image: AssetImage('assets/3.jpg'),
                        height: 100,
                        width: 100,
                      ),
                      actions: [
                        ElevatedButton(
                          child: const Text('yes'),
                          onPressed: () {
                            Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secodaryAnimation) {
                              return const AboutScreen3();
                            }, transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                              final tween = Tween(
                                  begin: const Offset(0, 1), end: Offset.zero);
                              return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              );
                            }));
                          },
                        ),
                        ElevatedButton(
                          child: const Text('no'),
                          onPressed: () {
                            print("no");
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                  });
            },
            child: const Image(image: AssetImage('assets/3.jpg')),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Image(
                        image: AssetImage('assets/4.jpg'),
                        height: 100,
                        width: 100,
                      ),
                      actions: [
                        ElevatedButton(
                          child: const Text('yes'),
                          onPressed: () {
                            Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secodaryAnimation) {
                              return const AboutScreen4();
                            }, transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                              final tween = Tween(
                                  begin: const Offset(0, 1), end: Offset.zero);
                              return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              );
                            }));
                          },
                        ),
                        ElevatedButton(
                          child: const Text('no'),
                          onPressed: () {
                            print("no");
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                  });
            },
            child: const Image(image: AssetImage('assets/4.jpg')),
          ),
        ],
      ),
    );
  }
}
