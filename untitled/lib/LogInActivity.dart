import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(
          "First App",
        ),
        actions: [
          IconButton(onPressed: printMsg, icon: Icon(Icons.search)),
        ],
        backgroundColor: Colors.tealAccent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Container(
            width: double.infinity,
            color: Colors.teal,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  backgroundColor: Colors.red,
                  ),
                ),
                Text(
                  "Second Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "Third Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "Fourth Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "Second Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "Third Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "Fourth Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "Second Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "Third Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "Fourth Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "Second Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "Third Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "Fourth Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "Second Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "Third Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "Fourth Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "First Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "Second Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "Third Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "Fourth Text",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void printMsg() {
    print("Log In");
  }
}
