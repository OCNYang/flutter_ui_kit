import 'package:flutter/material.dart';

class HowToMakeTabPage extends StatefulWidget {
  @override
  HowToMakeTabPageState createState() {
    return HowToMakeTabPageState();
  }
}

class HowToMakeTabPageState extends State<HowToMakeTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "How to Make",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.line_style),
            onPressed: () {},
          ),
        ],
        actionsIconTheme: IconThemeData(
          color: Colors.grey,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text('how to make'),
            )
          ],
        ),
      ),
    );
  }
}
