import 'package:flutter/material.dart';

class MeTabPage extends StatefulWidget {
  @override
  MeTabPageState createState() {
    return MeTabPageState();
  }
}

class MeTabPageState extends State<MeTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Text('Meeeeeeeee'),
    );
  }
}
