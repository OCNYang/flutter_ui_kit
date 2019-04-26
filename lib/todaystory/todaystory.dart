import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/other/imgConst.dart';

class TodayStoryTabPage extends StatefulWidget {
  @override
  TodayStoryTabPageState createState() {
    return TodayStoryTabPageState();
  }
}

class TodayStoryTabPageState extends State<TodayStoryTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Today's Story",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Recommended',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250,
              width: double.infinity,
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                itemBuilder: ((BuildContext context, int index) {
                  if (0 == index || 19 == index) {
                    return VerticalDivider(
                      width: 10,
                      color: Colors.transparent,
                    );
                  } else {
                    return getRecommendedItemView();
                  }
                }),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                separatorBuilder: ((BuildContext context, int index) {
                  return VerticalDivider(
                    width: 10,
                    color: Colors.transparent,
                  );
                }),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Recent',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverFixedExtentList(
            delegate: new SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return getRecentItemView();
              },
              childCount: 15,
            ),
            itemExtent: 100,
          ),
        ],
      ),
    );
  }

  Widget getRecentItemView() {
    return new Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            child: Image(
              image: AssetImage(HEAD),
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  child: Text(
                    'Gluten-free spaghetti with tomatoes,Sweet potato fritters with guacamole and egg',
                    maxLines: 2,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    '30 mint video',
                    maxLines: 1,
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getRecommendedItemView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            child: Image(
              image: AssetImage(HEAD),
            ),
          ),
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
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
            'Best dishes to enjoy them.',
            maxLines: 1,
            style: TextStyle(color: Colors.grey, fontSize: 13),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Row(
            children: <Widget>[
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
        )
      ],
    );
  }
}
