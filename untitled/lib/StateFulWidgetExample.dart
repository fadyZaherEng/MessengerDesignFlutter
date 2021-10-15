import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserCounter extends StatefulWidget
{
  @override
  State<UserCounter> createState() {
    return _UserCounterState();
  }
}

class _UserCounterState extends State<UserCounter> {
  int counter=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Counter',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              MaterialButton(
                onPressed: (){
                 setState(() {
                   counter++;
                 });
                },
                child: Text('PLUS',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.blue,
                ),),
              ),
              Text('${counter}',
                style: TextStyle(
                  fontSize: 60.0,
                  color: Colors.black,
                ),),
              TextButton(onPressed: (){
               setState(() {
                 counter--;
               });
              },
                  child: Text('MINUS',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.blue,
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
  //called before build method.
  @override
  void initState() {
    super.initState();
  }
}