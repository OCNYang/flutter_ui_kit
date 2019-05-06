import 'package:flutter/material.dart';

class FiltersTabPage extends StatefulWidget {
  @override
  FiltersTabPageState createState() {
    return FiltersTabPageState();
  }
}

const List<String> categoryItems = <String>['Deserts', 'Drinks', 'Snacks', 'Breakfast', 'Mains', 'Starters'];
const List<String> dietItems = <String>['Vegetarian', 'Meatless', 'Baked', 'Sugar-free', 'Alcohol-free', 'Pan-free'];
const List<String> cuisineItems = <String>[
  'Chinese',
  'Italian',
  'Asian',
  'European',
  'American',
  'Indian',
  'Spanish',
  'Portuguese'
];

class FiltersTabPageState extends State<FiltersTabPage> {
  String _selectCategory = '';
  String _selectDiet = '';
  String _selectCuisine = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Filters",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
//          点击时的阴影有差别
//          FlatButton(
//              shape: CircleBorder(),
//              onPressed: () {},
//              child: Text(
//                "Apply",
//                style: TextStyle(color: Colors.grey),
//              )),
          IconButton(
              icon: Text(
                "Apply",
                style: TextStyle(color: Colors.grey),
              ),
              onPressed: () {})
        ],
        actionsIconTheme: IconThemeData(
          color: Colors.grey,
        ),
      ),
      body: ListView(
        children: <Widget>[
          buildSectionItemView("Category", categoryItems),
          buildSectionItemView("Diet", dietItems),
          buildSectionItemView("Cuisine", cuisineItems),
        ],
      ),
    );
  }

  buildSectionItemView(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 10),
          child: Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 2, right: 2),
          child: Wrap(
            children: items.map<Widget>((String name) {
              return Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: ChoiceChip(
                  label: Text(
                    name,
                    style: TextStyle(
                        color: ((title == "Category"
                                    ? _selectCategory
                                    : (title == "Diet" ? _selectDiet : _selectCuisine))) ==
                                name
                            ? Colors.white
                            : Colors.grey),
                  ),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 0.5), borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Colors.transparent,
                  selectedColor: Colors.brown,
                  selected:
                      ((title == "Category" ? _selectCategory : (title == "Diet" ? _selectDiet : _selectCuisine))) ==
                          name,
                  onSelected: (bool value) {
                    setState(() {
                      String newValue = value ? name : '';
                      switch (title) {
                        case "Category":
                          {
                            _selectCategory = newValue;
                          }
                          break;
                        case "Diet":
                          {
                            _selectDiet = newValue;
                            break;
                          }
                        default:
                          {
                            _selectCuisine = newValue;
                            break;
                          }
                      }
                    });
                  },
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
