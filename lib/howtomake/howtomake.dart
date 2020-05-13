import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/details/cookdetails.dart';

class HowToMakeTabPage extends StatefulWidget {
  @override
  HowToMakeTabPageState createState() {
    return HowToMakeTabPageState();
  }
}

class HowToMakeTabPageState extends State<HowToMakeTabPage> {
  var _articleTitle = ['Knife Skills', 'Everyday basics', 'Some beautiful'];

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
            icon: Icon(Icons.tune),
            onPressed: () {},
          ),
        ],
        actionsIconTheme: IconThemeData(
          color: Colors.grey,
        ),
      ),
      body: ListView.builder(
        itemBuilder: ((BuildContext context, int index) {
          return getArticleItem(index);
        }),
        itemCount: 3,
        scrollDirection: Axis.vertical,
      ),
    );
  }

  Widget getArticleItem(int index) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            _articleTitle.elementAt(index % _articleTitle.length),
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 230,
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            physics: BouncingScrollPhysics(),
            itemBuilder: ((BuildContext context, int position) {
              if (0 == position || 19 == position) {
                return VerticalDivider(
                  width: 10,
                  color: Colors.transparent,
                );
              } else {
                return GestureDetector(
                  child: getSectionItem(index, position),
                  onTap: () {
                    Navigator.push(context, new CupertinoPageRoute(builder: (context) => CookDetailsPage("asset/images/${((index + 1) * position) % 11}.jpg")));
                  },
                );
              }
            }),
            separatorBuilder: ((BuildContext context, int index) {
              return VerticalDivider(
                width: 10,
                color: Colors.transparent,
              );
            }),
          ),
        )
      ],
    );
  }

  Widget getSectionItem(int index, int position) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Image(
                    image: AssetImage("asset/images/${((index + 1) * position) % 11}.jpg"),
                  ),
                  Icon(
                    Icons.play_circle_filled,
                    color: Colors.white70,
                    size: 35,
                  )
                ],
              )),
          flex: 1,
        ),
        Padding(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          child: Text(
            'The cheeses guide',
            maxLines: 1,
            textAlign: TextAlign.start,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
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
                  '2 mint',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
              Icon(
                Icons.remove_red_eye,
                size: 15,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, right: 10),
                child: Text(
                  '2k',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
