import 'package:elearning/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:elearning/components/List.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class roadMap extends StatefulWidget {
  @override
  _roadMapState createState() => _roadMapState();
}

class _roadMapState extends State<roadMap> {
  int SelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: Get.width / 2 - 180),
          child: Icon(
            Icons.arrow_back_ios,
            size: 40,
            color: Colors.black,
          ),
        ),
        title: Image.asset(
          "assets/images/actor.jpg",
          width: 70,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: Get.width / 2 - 170),
            child: IconButton(
              icon: Icon(
                Icons.search,
                size: 45,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 120.0),
        child: Container(
          width: Get.width,
          height: Get.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Container(
                      height: 75,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Color(0xFF3E3E3E)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 29.0),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, i) {
                              return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: SelectedIndex == i
                                      ? enableText()
                                      : disableText(i));
                            }),
                      )),
                ),
                Container(
                  height: 500,
                  width: Get.width,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: roadList.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 20.0),
                          child: Container(
                            height: 300,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                image: DecorationImage(
                                  image: AssetImage(roadList[i].coverPic),
                                  fit: BoxFit.cover,
                                )),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 12,
                                  left: 12,
                                  child: Container(
                                    width: 180,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    roadList[i].circlePic)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          roadList[i].heading,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 12,
                                  left: 280,
                                  child: Container(
                                    width: 80,
                                    child: Column(
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          ),
                                          onPressed: () {},
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.sanitizer,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 100,
                                  left: 70,
                                  right: 0,
                                  child: Container(
                                    width: Get.width,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle),
                                          child: Center(
                                            child: IconButton(
                                              icon:
                                                  Icon(Icons.play_circle_fill),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Flexible(
                                          // width: 170,
                                          child: Text(
                                            roadList[i].description,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                    top: 165,
                                    left: 160,
                                    child: Text(
                                      roadList[i].location,
                                      style: TextStyle(color: Colors.white),
                                    )),
                                Positioned(
                                  top: 170,
                                  left: 80,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        child: RatingBar.builder(
                                          initialRating: 4,
                                          minRating: 4,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 4,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 4.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            size: 10,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ),
                                      Text(
                                        roadList[i].distance,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "Food and Beverages",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 230,
                                  left: 50,
                                  child: Container(
                                    height: 90,
                                    width: 275,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 1.0,
                                          spreadRadius: 3.0,

                                          offset: Offset(6.0,
                                              2.0), // shadow direction: bottom right
                                        )
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              IconButton(
                                                  icon: Icon(
                                                    Icons.favorite,
                                                    color: Colors.red,
                                                  ),
                                                  onPressed: () {}),
                                              Text(
                                                "120.2",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  icon: Icon(
                                                    Icons.favorite,
                                                    color: Colors.red,
                                                  ),
                                                  onPressed: () {}),
                                              Text("120.2"),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                  icon: Icon(
                                                    Icons.favorite,
                                                    color: Colors.red,
                                                  ),
                                                  onPressed: () {}),
                                              Text("120.2"),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  disableText(int i) {
    return InkWell(
      onTap: () {
        setState(() {
          SelectedIndex = i;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "ajmb",
            style: TextStyle(color: Colors.grey[200], fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 6,
            width: 50,
          ),
        ],
      ),
    );
  }

  enableText() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "ajmbs",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(
          height: 5,
        ),
        Container(height: 6, width: 50, color: Colors.red),
      ],
    );
  }
}
