import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text(
            "First App",
            style: TextStyle(
              backgroundColor: Colors.teal,
            ),
          ),
          actions: [
            IconButton(onPressed: printMsg, icon: Icon(Icons.search)),
          ],
          backgroundColor: Colors.tealAccent,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(
                  start: 20.0,
                  end: 20.0,
                  top: 20.0,
                  bottom: 20.0,
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 2,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    topEnd: Radius.circular(20.0),
                    topStart: Radius.circular(20.0),
                    bottomEnd: Radius.circular(20.0),
                    bottomStart: Radius.circular(20.0)
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image(
                  image: NetworkImage(
                      "https://www.royalflowersgroup.com/wp-content/cache/thumbnails/2015/04/roses-rfg-930x1080-c.jpg"),
                  height: 150.0,
                  width: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        )));
  }

  printMsg() => print('Hello');
}
