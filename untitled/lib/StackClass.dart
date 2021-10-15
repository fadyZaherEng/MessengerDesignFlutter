import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(
          "First App",
          style: TextStyle(),
        ),
        actions: [
          IconButton(onPressed: printMsg, icon: Icon(Icons.search)),
        ],
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
              start: 10.0, end: 10.0, top: 10.0, bottom: 10.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    topEnd: Radius.circular(
                      50.0,
                    ),
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image(
                  image: NetworkImage(
                      "https://www.linkpicture.com/q/IMG_٢٠٢١٠٩٢٢_٢٣٢٨٣٦.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.blue.withOpacity(0.4),
                margin: EdgeInsetsDirectional.only(
                  top: 10.0,
                  bottom: 10.0,
                  start: 10.0,
                  end: 10.0,
                ),
                padding: EdgeInsetsDirectional.only(
                  top: 5.0,
                  bottom: 5.0,
                  start: 5.0,
                  end: 5.0,
                ),
                child: Text(
                  'Flowers',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void printMsg() {
    print("Stack");
  }
}
