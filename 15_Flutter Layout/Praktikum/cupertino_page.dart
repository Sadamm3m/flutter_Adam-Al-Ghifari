import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{

  @override

  Widget build(BuildContext context){
    return  const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text ('CupertinoApp'),
      ),

      child: Center(
        child: Text('This is Cupertino App'),
        
      ),
    );
  }
} 