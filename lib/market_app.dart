import 'package:flutter/material.dart';

import 'electric_page.dart';

class MarketApp extends StatefulWidget {
  @override
  _MarketAppState createState() => _MarketAppState();
}

class _MarketAppState extends State<MarketApp> {
  int selectedTabIndex = 0;
  List<TabModel> tabList = [
    TabModel("All"),
    TabModel("Red"),
    TabModel("Blue"),
    TabModel("Green"),
    TabModel("Grey"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text(
          "Cars",
          style: TextStyle(color: Colors.red, fontSize: 25,fontWeight: FontWeight.bold),
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.red,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int i = 0; i < tabList.length; i++)
                      singleTab(i == selectedTabIndex, tabList[i].text),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              makeItem("assets/images/im_car1.jpg"),
              makeItem("assets/images/im_car2.jpg"),
              makeItem("assets/images/im_car3.jpg"),
              makeItem("assets/images/im_car4.png"),
              makeItem("assets/images/im_car5.jpg"),
            ],
          ),
        ),
      ),
    );
  }

  Widget singleTab(bool type, String text) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: InkWell(
        onTap: () {
          setState(() {
            selectedTabIndex = tabList.indexWhere((tab) => tab.text == text);
          });
        },
        child: Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: type ? Colors.red : Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: type ? 20 : 17, fontWeight: FontWeight.bold,color: type?Colors.white:Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  Widget makeItem(String image) {
    return ElectricCarWidget(
      image: image,
    );
  }
}

class TabModel {
  String text;

  TabModel(this.text);
}
