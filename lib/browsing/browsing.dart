import 'package:flutter/material.dart';

class BrowsingTabPage extends StatefulWidget {
  @override
  BrowsingTabPageState createState() {
    return BrowsingTabPageState();
  }
}

class BrowsingTabPageState extends State<BrowsingTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Browsing",
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
            icon: Icon(Icons.tune),
            onPressed: () {},
          ),
        ],
        actionsIconTheme: IconThemeData(
          color: Colors.grey,
        ),
      ),
      body: Text('jsjjsjsjsjsj'),
    );
  }
}
