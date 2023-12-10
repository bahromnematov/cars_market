import 'package:flutter/material.dart';

class FacebookUi extends StatefulWidget {
  const FacebookUi({super.key});

  @override
  State<FacebookUi> createState() => _FacebookUiState();
}

class _FacebookUiState extends State<FacebookUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "facebook",
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_rounded,
                color: Colors.black,
              ))
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            color: Colors.white,
            height: 140,
            child: Column(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/facebook/user_2.jpeg"))),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 12),
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                width: 2, color: Colors.grey.shade400)),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "What's on your mind?",
                              border: InputBorder.none),
                        ),
                      ),
                    )
                  ],
                )),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.video_call,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Live",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: 2,
                      color: Colors.grey.shade300,
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.photo,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Photo",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: 2,
                      color: Colors.grey.shade300,
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Check In",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: 2,
                      color: Colors.grey.shade300,
                    ),
                  ],
                )),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            height: 220,
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                item_story(
                    story_image: "assets/facebook/feed_2.jpeg",
                    user_mage: "assets/facebook/user_2.jpeg",
                    user_name: "User Five"),
                item_story(
                    story_image: "assets/facebook/feed_2.jpeg",
                    user_mage: "assets/facebook/user_2.jpeg",
                    user_name: "User Five"),
                item_story(
                    story_image: "assets/facebook/feed_2.jpeg",
                    user_mage: "assets/facebook/user_2.jpeg",
                    user_name: "User Five"),
                item_story(
                    story_image: "assets/facebook/feed_2.jpeg",
                    user_mage: "assets/facebook/user_2.jpeg",
                    user_name: "User Five"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget item_story({user_mage, story_image, user_name}) {
    return AspectRatio(
      aspectRatio: 1.4 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(story_image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.1),
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.blue),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(user_mage),
                      fit: BoxFit.cover,
                    )),
              ),
              Text(
                user_name,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
