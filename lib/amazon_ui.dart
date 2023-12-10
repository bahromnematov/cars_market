import 'package:flutter/material.dart';

class AmazonUI extends StatefulWidget {
  @override
  _AmazonUIState createState() => _AmazonUIState();
}

class _AmazonUIState extends State<AmazonUI> {
  int currentindex = 0;

  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.grey[300],
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    height: 120,
                    padding: EdgeInsets.only(
                        left: 20, right: 20, bottom: 10, top: 30),
                    color: Color(0xFF018197),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            padding: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "What are you looking for?",
                                      border: InputBorder.none,
                                      icon: Icon(
                                        Icons.search,
                                        color: Color(0xFF018197),
                                      ),
                                    ),
                                  ),
                                ),
                                Icon(Icons.mic, color: Color(0xFF018197)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          height: 50,
                          width: 50,
                          child: Center(
                            child: Icon(Icons.shopping_cart_checkout_rounded),
                          ),
                        )
                      ],
                    )),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 45,
                  color: Color(0xFFB4EFE7),
                  child: Row(
                    children: [
                      Icon(Icons.location_pin),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Deliver to Tobey -Alhambre 91801",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      PageView(
                        onPageChanged: (int page) {
                          setState(() {
                            currentindex = page;
                          });
                        },
                        children: [
                          MekerPage(
                            image: "assets/amazon/image_1.jpeg",
                          ),
                          MekerPage(
                            image: "assets/amazon/image_2.jpeg",
                          ),
                          MekerPage(
                            image: "assets/amazon/item_1.jpeg",
                          ),
                        ],
                      ),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: buildIndegator()),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  height: 66,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Categories",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "See More",
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 160,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      itemCategory(
                          image: "assets/amazon/item_5.jpeg",
                          title: "Women \nFashion"),
                      itemCategory(
                          image: "assets/amazon/item_5.jpeg",
                          title: "Women \nFashion"),
                      itemCategory(
                          image: "assets/amazon/item_5.jpeg",
                          title: "Women \nFashion"),
                      itemCategory(
                          image: "assets/amazon/item_5.jpeg",
                          title: "Women \nFashion"),
                      itemCategory(
                          image: "assets/amazon/item_5.jpeg",
                          title: "Women \nFashion"),
                      itemCategory(
                          image: "assets/amazon/item_5.jpeg",
                          title: "Women \nFashion"),
                      itemCategory(
                          image: "assets/amazon/item_5.jpeg",
                          title: "Women \nFashion"),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      singleTab(false, "for You"),
                      singleTab(true, "for You"),
                      singleTab(false, "for You"),
                      singleTab(false, "for You"),
                      singleTab(false, "for You"),
                      singleTab(false, "for You"),

                    ],
                  ),
                )
              ],
            ),
          )),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_add,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              label: ""),
        ],
      ),
      drawer: Drawer(),
    );
  }

  Widget MekerPage({image, title, title2}) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      height: 280,
      child: Image.asset(
        image,
        height: 240,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget Endigator(bool isActivete) {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(horizontal: 5),
      duration: Duration(milliseconds: 300),
      height: 6,
      width: isActivete ? 12 : 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.black,
      ),
    );
  }

  List<Widget> buildIndegator() {
    List<Widget> indegators = [];
    for (int i = 0; i < 3; i++) {
      if (currentindex == i) {
        indegators.add(Endigator(true));
      } else {
        indegators.add(Endigator(false));
      }
    }
    return indegators;
  }

  Widget itemCategory({image, title}) {
    return Container(
      padding: EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            height: 100,
            width: 80,
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          Text(title)
        ],
      ),
    );
  }

  Widget singleTab(bool type, String text) {
    return AspectRatio(
      aspectRatio: 1.6 / 1,
      child: InkWell(
        onTap: () {
          setState(() {}
          );
        },
        child: Text(
          text,
          style: TextStyle(
              fontSize: type ? 22 : 20,
              fontWeight: FontWeight.bold,
              color: type ? Colors.blue : Colors.black),
        ),
      ),
    );
  }
}
