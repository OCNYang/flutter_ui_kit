import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/other/imgConst.dart';
import 'dart:math';

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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        mini: true,
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(IMG_HEAD),
                      ), //Scaffold.of(context).showSnackBar(new SnackBar(content: new Text('edit avatar')));
                      Positioned(
                        bottom: 25 - sin(45) * 25,
                        right: 25 - sin(45) * 25,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.brown[400],
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(6),
                            child: Icon(
                              Icons.edit,
                              size: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 10, right: 20),
                      child: Text(
                        'OCNYang · 歐心',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'Flutter dev',
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Row(
                children: <Widget>[
                  buildMapItemView('200', 'Recipes'),
                  buildMapItemView('5480', 'Views'),
                  buildMapItemView('1.3 k', 'Followers'),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              splashColor: Colors.black12,
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Wallet",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Divider(
                            height: 5,
                            color: Colors.transparent,
                          ),
                          Text(
                            'Balance:\$ 254',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      flex: 1,
                    ),
                    DecoratedBox(
                      decoration:
                          BoxDecoration(color: Colors.brown, borderRadius: BorderRadius.all(Radius.circular(3))),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
                        child: Text(
                          'Recharge',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              splashColor: Colors.black12,
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Contact Information",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Divider(
                      height: 5,
                      color: Colors.transparent,
                    ),
                    Text(
                      'Patrizia_Devan@gmail.com',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              splashColor: Colors.black12,
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "My Collection",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Divider(
                      height: 5,
                      color: Colors.transparent,
                    ),
                    Text(
                      'Already collected 40 recipes',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              splashColor: Colors.black12,
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      "My Comment",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Divider(
                      height: 5,
                      color: Colors.transparent,
                    ),
                    Text(
                      '45 commment posted',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Divider(
                      height: 5,
                      color: Colors.transparent,
                    ),
                    SizedBox(
                      height: 30,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: ((BuildContext context, int index) {
                          return VerticalDivider(
                            width: 5,
                          );
                        }),
                        itemCount: 4,
                        itemBuilder: ((BuildContext context, int index) {
                          if (index == 3) {
                            return Container(
                              width: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                color: Colors.brown,
                              ),
                              child: Text(
                                '40',
                                style: TextStyle(color: Colors.white70),
                              ),
                            );
                          } else {
                            return ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(3)),
                              child: Image.asset(
                                "asset/images/${index % 11}.jpg",
                                width: 30,
                                fit: BoxFit.cover,
                              ),
                            );
                          }
                        }),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded buildMapItemView(String value, String key) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Divider(
            height: 5,
            color: Colors.transparent,
          ),
          Text(
            key,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          )
        ],
      ),
      flex: 1,
    );
  }
}
