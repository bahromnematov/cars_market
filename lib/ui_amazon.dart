import 'package:flutter/material.dart';

class UiAmazon extends StatefulWidget {
  const UiAmazon({super.key});

  @override
  State<UiAmazon> createState() => _UiAmazonState();
}

class _UiAmazonState extends State<UiAmazon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF018197),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Row(
          children: [
            Image(
              image: AssetImage("assets/amazon/amazon_logo.jpg"),
              width: 100,
            )
          ],
        ),
        actions: [
          Icon(
            Icons.mic,
            color: Colors.white,
          ),
          SizedBox(
            width: 12,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          SizedBox(
            width: 12,
          )
        ],
      ),
      body: Container(
          color: Colors.grey.shade300,
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Color(0xFF018197),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.search,
                                    color: Color(0xFF018197),
                                  ),
                                  hintText: "What are you looking for?"),
                            ),
                          ),
                          Icon(
                            Icons.camera_alt,
                            color: Color(0xFF018197),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 46,
                    color: Colors.blueGrey,
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Deliver to Korea , Republic of Uzbekistan",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          width: 180,
                          child: Center(
                            child: Text(
                              "We ship 45 milion products",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(70),
                                    bottomLeft: Radius.circular(70)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/amazon/image_1.jpeg"),
                                    fit: BoxFit.cover)),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    color: Colors.white,
                    width: double.infinity,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sigin for the best experence",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.orange,
                          child: Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Create an account",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deal of the day",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Image(
                          image: AssetImage("assets/amazon/image_2.jpeg"),
                          fit: BoxFit.cover,
                          height: 240,
                          width: double.infinity,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Up to 32% off APC UPC Battery Back",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "\$10.99 - \$79.9",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deal of the day",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                     Container(
                       height: MediaQuery.of(context).size.width,
                       child: Row(
                         children: [
                           Expanded(
                             child: Column(
                               children: [
                                 Expanded(
                                   child: Image(
                                     image: AssetImage("assets/amazon/item_1.jpeg"),
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                                 SizedBox(height: 5,),
                                 Expanded(
                                   child: Image(
                                     image: AssetImage("assets/amazon/item_2.jpeg"),
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                                 SizedBox(height: 5,),
                               ],
                             ),
                           ),
                           SizedBox(width: 5,),
                           Expanded(
                             child: Column(
                               children: [
                                 Expanded(
                                   child: Image(
                                     image: AssetImage("assets/amazon/item_3.jpeg"),
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                                 SizedBox(height: 5,),
                                 Expanded(
                                   child: Image(
                                     image: AssetImage("assets/amazon/item_4.jpeg"),
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                                 SizedBox(height: 5,),
                               ],
                             ),
                           ),

                         ],
                       ),

                     ),
                        // SizedBox(
                        //   height: 15,
                        // ),

                      ],
                    ),
                  ),

                ],
              ),
            ],
          )),
    );
  }
}
