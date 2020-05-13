import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrowsingTabPage extends StatefulWidget {
  @override
  BrowsingTabPageState createState() {
    return BrowsingTabPageState();
  }
}

class BrowsingTabPageState extends State<BrowsingTabPage> with SingleTickerProviderStateMixin {
  int _currentTabIndex = 0;
  PageController _pageController;
  TabController _tabController;

  final Map<int, Widget> children = const <int, Widget>{
    0: Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Text('Cook Book'),
    ),
    1: Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Text('Collection'),
    ),
  };

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(initialPage: _currentTabIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

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
      body: buildBodyByCupertino(),
    );
  }

  Widget buildBodyByMaterial() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey, width: 0.5),
          ),
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.brown,
            unselectedLabelColor: Colors.grey,
            isScrollable: false,
            indicatorSize: TabBarIndicatorSize.tab,
            onTap: (int index) {
              _pageController.jumpToPage(index);
            },
            tabs: [Tab(text: 'Cook Book'), Tab(text: 'Collection')],
          ),
        ),
        Expanded(
          flex: 1,
          child: PageView.builder(
            itemCount: 2,
            itemBuilder: ((BuildContext context, int index) {
              return getViewPageItemView(index);
            }),
            onPageChanged: (int index) {
              _tabController.animateTo(index);
            },
            controller: _pageController,
          ),
        ),
      ],
    );
  }

  /// 使用 iOS 风格的 tab，使用 _pageController.animateToPage() 联动效果在苹果手机上没有问题
  /// 在安卓手机上，tab 无法联动 viewPager
  /// 应该是动画的原因。
  Widget buildBodyByCupertino() {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 15),
          child: CupertinoSegmentedControl<int>(
            children: children,
            selectedColor: Colors.brown,
            borderColor: Colors.grey,
            onValueChanged: (int newValue) {
//              setState(() {
//                _currentTabIndex = newValue;
//              });
              _pageController.jumpToPage(newValue);
            },
            groupValue: _currentTabIndex,
          ),
        ),
        Expanded(
          flex: 1,
          child: PageView.builder(
            itemCount: 2,
            itemBuilder: ((BuildContext context, int index) {
              return getViewPageItemView(index);
            }),
            onPageChanged: (int index) {
              setState(() {
                _currentTabIndex = index;
              });
            },
            controller: _pageController,
          ),
        )
      ],
    );
  }

  Widget getViewPageItemView(int index) {
    return SizedBox(
      width: double.infinity,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int position) {
          return getListItemView(index * 1000 + position);
        },
        itemCount: 50,
        separatorBuilder: (BuildContext context, int position) {
          return Divider(
            height: 15,
            color: Colors.transparent,
          );
        },
      ),
    );
  }

  Widget getListItemView(int index) {
    return Row(
      children: <Widget>[
        VerticalDivider(
          width: 15,
          color: Colors.transparent,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            "asset/images/${index % 11}.jpg",
            width: 100,
            height: 88,
            fit: BoxFit.cover,
          ),
        ),
        VerticalDivider(
          width: 10,
          color: Colors.transparent,
        ),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: new Text(
                    'Vegetable dish $index',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.watch_later,
                        size: 13,
                        color: Colors.grey,
                      ),
                      VerticalDivider(
                        width: 5,
                        color: Colors.transparent,
                      ),
                      new Text(
                        '15 minute video',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: new Text(
                    '\$ 25.30',
                    style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  flex: 1,
                ),
              ],
            ),
          ),
          flex: 1,
        ),
        Icon(
          Icons.chevron_right,
          size: 15,
          color: Colors.grey,
        ),
        VerticalDivider(
          width: 15,
          color: Colors.transparent,
        ),
      ],
    );
  }
}
