import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/other/imgConst.dart';

class CookDetailsPage extends StatefulWidget {
  @override
  CookDetailsState createState() {
    return CookDetailsState();
  }
}

class CookDetailsState extends State<CookDetailsPage> {
  List<String> _reviewsImgList = [HEAD, BG_1, HEAD, BG_1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 400,
            pinned: true,
            backgroundColor: Colors.white,
            floating: true,
            iconTheme: IconThemeData(color: Colors.black),
            snap: false,
            actions: <Widget>[IconButton(icon: Icon(Icons.share), onPressed: () {})],
            brightness: Brightness.light,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              //titlePadding: EdgeInsets.only(bottom: 0),
              collapseMode: CollapseMode.pin, //背景的收缩模式
              title: Text(
                'Brown Bread with Sweet\nBanana & Egg Poached',
                style: TextStyle(fontSize: 20, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              background: Image.asset(
                BG_1,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.red[500],
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.red[500],
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.red[500],
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.red[500],
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Colors.grey[500],
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: Center(
                      child: Text(
                        '214 Reviews',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.red[500],
                      size: 35,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 20),
                      child: Text(
                        '1254',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ),
                    Icon(
                      Icons.bookmark,
                      color: Colors.grey[300],
                      size: 35,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5,
                      ),
                      child: Text(
                        'Save',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 20,
                  color: Colors.transparent,
                ),
                InkWell(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Reviews',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'View all',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  splashColor: Colors.black12,
                  onTap: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    '1 Image - 260 comments',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                childAspectRatio: 1.0,
                mainAxisSpacing: 10,
              ),
              delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                if (index == _reviewsImgList.length) {
                  return getReviewsAddImgItemView();
                } else {
                  return getReviewsItemView(_reviewsImgList.elementAt(index));
                }
              }, childCount: _reviewsImgList.length + 1),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 70,
              margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      HEAD,
                    ),
                  ),
                  VerticalDivider(width: 10, color: Colors.transparent),
                  // 这里的使用 Expanded 控件占用剩余的宽度空间，不然子控件 Column 的宽度将受其子控件的影响，从而使内部的 Text 显示异常
                  // 这里需要深思的是 Column Row 此类控件占用空间的方式，并不是占用父控件的最大剩余空间，也受其子控件的影响。
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Elorn Causer',
                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          "So tasty! can't wait to cook it again 22 Aug,2018to cook it again 22 Aug,2018",
                          style: TextStyle(color: Colors.grey),
                          softWrap: true,
                          maxLines: 2,
                        ),
                      ],
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: getProgressView('40 min.', 'Cooking', Colors.brown, 0.75),
                    flex: 1,
                  ),
                  Expanded(
                    child: getProgressView('0 min.', 'Baking', Colors.brown, 0.45),
                    flex: 1,
                  ),
                  Expanded(
                    child: getProgressView('30 min.', 'Resting', Colors.brown, 0.65),
                    flex: 1,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
              child: Text(
                'Ingredients',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                  child: Text(
                    'AAAAAAAAAAA$index',
                    style: TextStyle(color: Colors.grey),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget getReviewsItemView(String assertImg) {
    return _getReviewsClipRRect(Image.asset(
      assertImg,
      fit: BoxFit.cover,
    ));
  }

  Widget getReviewsAddImgItemView() {
    return _getReviewsClipRRect(DecoratedBox(
      decoration: BoxDecoration(color: Colors.grey),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.camera_alt,
            color: Colors.white70,
            size: 50,
          ),
          Text(
            'Add photo',
            style: TextStyle(color: Colors.white70),
          )
        ],
      ),
    ));
  }

  Widget _getReviewsClipRRect(Widget widget) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: widget,
    );
  }

  getProgressView(String s, String t, Color valuecolor, double d) {
    return AspectRatio(
      aspectRatio: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: CircularProgressIndicator(
                        strokeWidth: 5,
                        backgroundColor: Colors.grey[200],
                        value: d,
                      ),
                    )),
                Center(
                  child: Text(
                    s,
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            flex: 1,
          ),
          Text(
            t,
            style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
