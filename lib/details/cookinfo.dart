import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/other/imgConst.dart';

class CookInfoPage extends StatefulWidget {
  @override
  CookInfoState createState() {
    return CookInfoState();
  }
}

class CookInfoState extends State<CookInfoPage> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 0.7,
            child: Image.asset(
              BG_1,
              fit: BoxFit.cover,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                )
              ],
            ),
          ),
          AspectRatio(
              aspectRatio: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Bread & Meat",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    '54 Recipes available',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              )),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        HEAD,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 12, bottom: 12),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Brown bread poached',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.red[500],
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.red[500],
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.red[500],
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.red[500],
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.grey[500],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, bottom: 30),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.watch_later,
                          size: 15,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 10),
                          child: Text(
                            '30 mint',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.whatshot,
                          size: 15,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 10),
                          child: Text(
                            '450 cal',
                            style: TextStyle(
                              fontSize: 14,
                              decoration: TextDecoration.none,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
