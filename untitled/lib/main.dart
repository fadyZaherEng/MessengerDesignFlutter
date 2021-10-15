import 'package:flutter/material.dart';
import 'package:untitled/Contact.dart';
import 'package:untitled/LogInActivity.dart';
import 'package:untitled/MessengerClass.dart';
import 'package:untitled/StateFulWidgetExample.dart';
import 'package:untitled/homeActivity.dart';
import 'package:untitled/signIn.dart';

import 'StackClass.dart';

// void main() {
//   runApp(MyFirstApp());
// }
main()=>runApp( MyFirstApp());
//widget two type
//StatelessWidget
//StatefulWidget

class MyFirstApp extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
      return   MaterialApp(
         home: UserCounter(),
        );
  }
  // This widget is the root of your application.
}