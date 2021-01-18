import 'package:elearning/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:elearning/components/List.dart';

import 'package:elearning/controller/mainController.dart';

class roadMapNew extends StatefulWidget {
  @override
  _roadMapNewState createState() => _roadMapNewState();
}

//kia issue hy asb? dykho error ajat ah jb click krti hu ap k samny h
class _roadMapNewState extends State<roadMapNew> {
  MainController mainController = Get.put(MainController());
  int isSelected = 0;
  int SelectedIndex = 0;
  onTaps(int index) {
    setState(() {
      isSelected = index;
    });
  }

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
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
        ),
        // Padding(
        //   padding: EdgeInsets.only(left: Get.width / 2 - 180),
        //   child: Icon(
        //     Icons.menu,
        //     size: 40,
        //     color: Colors.black,
        //   ),
        // ),
        title: Text("App Logo", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        // Image.asset(
        //   "assets/images/actor.jpg",
        //   width: 70,
        // ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: Get.width / 2 - 180),
            child: Icon(
              Icons.menu,
              size: 30,
              color: Colors.black,
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.only(right: Get.width / 2 - 170),
          //   child: IconButton(
          //     icon: Icon(
          //       Icons.search,
          //       size: 45,
          //       color: Colors.black,
          //     ),
          //     onPressed: () {},
          //   ),
          // )
        ],
      ),
      body: GetBuilder<MainController>(
        builder: (_) {
          return Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              width: Get.width,
              height: Get.height,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          // EdgeInsets.symmetric(horizontal: 50),
                          EdgeInsets.only(
                        left: 20,
                        top: 80,
                      ),
                      child: Container(
                          // margin: EdgeInsets.symmetric(horizontal: 12),
                          height: 70,
                          // width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                            color: Color(0xFF3C3C3C),
                            // Color(0xFFF8F1F0)
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              // padding: EdgeInsets.all(0),
                              // crossAxisCount: 2,
                              itemCount: roadList.length,
                              // crossAxisSpacing: 20,
                              // mainAxisSpacing: 20,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        onTaps(index);
                                      });
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 5,
                                        top: 9,
                                        bottom: 9,
                                      ),
                                      child: Container(
                                        // width: 90,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            isSelected == index
                                                ? BoxShadow(
                                                    color: Colors.grey,
                                                    spreadRadius: 1,
                                                    blurRadius: 1,
                                                    offset: Offset(0,
                                                        1), // changes position of shadow
                                                  )
                                                : BoxShadow(
                                                    color: Colors.transparent)
                                          ],
                                          color: isSelected == index
                                              ? Color(0xFFF3F3F3)
                                              : Color(0xFF3C3C3C),
                                          // Color(0xFFF8F1F0),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          // image: DecorationImage(
                                          //   image: AssetImage(_
                                          //       .selectedCategory [index]
                                          //       .image),
                                          //   fit: BoxFit.fill,
                                          // ),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              roadList[index].heading,
                                              style: TextStyle(
                                                  color: isSelected == index
                                                      ? Colors.black
                                                      : Colors.white,
                                                  //  Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                              //  kTitleTextStyle,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              // staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                            ),
                          )),
                    ),
                    // Container(
                    //   height: 150,
                    //   width: MediaQuery.of(context).size.width,
                    //   child: ListView.builder(
                    //     scrollDirection: Axis.horizontal,
                    //     itemCount: roadList.length,
                    //     itemBuilder: (context, i) {
                    //       return Padding(
                    //         padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    //         child: Container(
                    //           height: 90,
                    //           width: 90,
                    //           decoration: BoxDecoration(
                    //               shape: BoxShape.circle,
                    //               image: DecorationImage(
                    //                   fit: BoxFit.cover,
                    //                   image: AssetImage(roadList[i].circlePic))),
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // )
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 28.0),
                    //   child: Container(
                    //       height: 75,
                    //       width: 350,
                    //       decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(45),
                    //           color: Color(0xFF3E3E3E)),
                    //       child: Padding(
                    //         padding: const EdgeInsets.symmetric(horizontal: 29.0),
                    //         child: ListView.builder(
                    //             scrollDirection: Axis.horizontal,
                    //             itemCount: 4,
                    //             itemBuilder: (context, i) {
                    //               return Padding(
                    //                   padding: const EdgeInsets.symmetric(
                    //                       horizontal: 8.0),
                    //                   child: SelectedIndex == i
                    //                       ? enableText()
                    //                       : disableText(i));
                    //             }),
                    //       )),
                    // ),

                    Container(
                      height: 500,
                      width: Get.width,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: roadList.length,
                          itemBuilder: (context, i) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20.0),
                              child: Container(
                                height: 300,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  // image: DecorationImage(
                                  //     image: AssetImage(roadList[i].coverPic))
                                  color: Color(0xFF191F2D),
                                  // image: DecorationImage(
                                  //   image: AssetImage(roadList[i].coverPic),
                                  //   fit: BoxFit.cover,
                                  // )
                                ),
                                child: Stack(
                                  children: [
/* -------------------------------------------------------------------------- */
/*                                  Wikepedia                                 */
/* -------------------------------------------------------------------------- */

                                    // Positioned(
                                    //   top: 220,
                                    //   left: 130,
                                    //   child: Text(
                                    //     "Tiger",
                                    //     style: TextStyle(
                                    //         fontSize: 50,
                                    //         color: Colors.white,
                                    //         fontWeight: FontWeight.bold),
                                    //   ),
                                    // ),

                                    Positioned(
                                      top: 12,
                                      left: 12,
                                      child: Container(
                                        width: 400,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        roadList[i].circlePic)),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  roadList[i].heading,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22),
                                                ),
                                                Text(
                                                  roadList[i].location,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 90.0),
                                              child: Container(
                                                  height: 80,
                                                  width: 80,
                                                  child: Image.asset(
                                                      "assets/images/actor.jpg")),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),

/* -------------------------------------------------------------------------- */
/*                             heart and santizier                            */
/* -------------------------------------------------------------------------- */

                                    // Positioned(
                                    //   top: 12,
                                    //   left: 280,
                                    //   child: Container(
                                    //     width: 80,
                                    //     child: Column(
                                    //       children: [
                                    //         IconButton(
                                    //           icon: Icon(
                                    //             Icons.favorite,
                                    //             color: Colors.red,
                                    //           ),
                                    //           onPressed: () {},
                                    //         ),
                                    //         IconButton(
                                    //           icon: Icon(
                                    //             Icons.sanitizer,
                                    //             color: Colors.white,
                                    //           ),
                                    //           onPressed: () {},
                                    //         ),
                                    //       ],
                                    //     ),
                                    //   ),
                                    // ),
                                    Positioned(
                                      top: 100,
                                      left: 10,
                                      right: 0,
                                      child: Container(
                                        width: Get.width,
                                        child: Row(
                                          children: [
                                            // Container(
                                            //   height: 70,
                                            //   width: 70,
                                            //   decoration: BoxDecoration(
                                            //       color: Colors.white,
                                            //       shape: BoxShape.circle),
                                            //   child: Center(
                                            //     child: IconButton(
                                            //       icon:
                                            //           Icon(Icons.play_circle_fill),
                                            //       onPressed: () {},
                                            //     ),
                                            //   ),
                                            // ),
                                            // SizedBox(
                                            //   width: 10,
                                            // ),
                                            Flexible(
                                              // width: 170,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15),
                                                child: Text(
                                                  roadList[i].description,
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

/* -------------------------------------------------------------------------- */
/*                            Description And Tweet                           */
/* -------------------------------------------------------------------------- */

                                    Positioned(
                                      top: 195,
                                      left: 25,
                                      right: 0,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: Text(
                                                "Tweer Decription",
                                                style: TextStyle(
                                                    color: Color(0xFF305E82),
                                                    fontSize: 20),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "05:30",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 40.0),
                                                  child: Text(
                                                    "05 June 2009",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 40.0),
                                                  child: Text(
                                                    "Tweet with Iphone",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF305E82)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0, left: 0),
                                                  child: Text(
                                                    "05:3asdjjjasdjkaasdassdasdkjjkas",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20.0, top: 10),
                                                  child: Text(
                                                    "05 June 2009",
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    // Positioned(
                                    //     top: 165,
                                    //     left: 160,
                                    //     child: Text(
                                    //       roadList[i].location,
                                    //       style: TextStyle(color: Colors.white),
                                    //     )),

/* -------------------------------------------------------------------------- */
/*                             Food and Beverages                             */
/* -------------------------------------------------------------------------- */

                                    // Positioned(
                                    //   top: 170,
                                    //   left: 80,
                                    //   child: Row(
                                    //     children: [
                                    //       Container(
                                    //         height: 40,
                                    //         width: 40,
                                    //         child: RatingBar.builder(
                                    //           initialRating: 4,
                                    //           minRating: 4,
                                    //           direction: Axis.horizontal,
                                    //           allowHalfRating: true,
                                    //           itemCount: 4,
                                    //           itemPadding: EdgeInsets.symmetric(
                                    //               horizontal: 4.0),
                                    //           itemBuilder: (context, _) => Icon(
                                    //             Icons.star,
                                    //             size: 10,
                                    //             color: Colors.amber,
                                    //           ),
                                    //           onRatingUpdate: (rating) {
                                    //             print(rating);
                                    //           },
                                    //         ),
                                    //       ),
                                    //       Text(
                                    //         roadList[i].distance,
                                    //         style: TextStyle(
                                    //           fontSize: 12,
                                    //           color: Colors.white,
                                    //         ),
                                    //       ),
                                    //       Padding(
                                    //         padding: EdgeInsets.only(left: 10),
                                    //         child: Text(
                                    //           "Food and Beverages",
                                    //           style: TextStyle(fontSize: 15),
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),

/* -------------------------------------------------------------------------- */
/*                         Stack COntainer with Likes                         */
/* -------------------------------------------------------------------------- */

                                    // Positioned(
                                    //   top: 230,
                                    //   left: 50,
                                    //   child: Container(
                                    //     height: 90,
                                    //     width: 275,
                                    //     decoration: BoxDecoration(
                                    //       color: Colors.white,
                                    //       borderRadius:
                                    //           BorderRadius.circular(25),
                                    //       boxShadow: [
                                    //         BoxShadow(
                                    //           color: Colors.black,
                                    //           blurRadius: 1.0,
                                    //           spreadRadius: 3.0,

                                    //           offset: Offset(6.0,
                                    //               2.0), // shadow direction: bottom right
                                    //         )
                                    //       ],
                                    //     ),
                                    //     child: Padding(
                                    //       padding: const EdgeInsets.symmetric(
                                    //           vertical: 20.0),
                                    //       child: Row(
                                    //         mainAxisAlignment:
                                    //             MainAxisAlignment.start,
                                    //         children: [
                                    //           Row(
                                    //             children: [
                                    //               IconButton(
                                    //                   icon: Icon(
                                    //                     Icons.favorite,
                                    //                     color: Colors.red,
                                    //                   ),
                                    //                   onPressed: () {}),
                                    //               Text(
                                    //                 "120.2",
                                    //                 style: TextStyle(
                                    //                     color: Colors.black),
                                    //               ),
                                    //             ],
                                    //           ),
                                    //           Row(
                                    //             children: [
                                    //               IconButton(
                                    //                   icon: Icon(
                                    //                     Icons.favorite,
                                    //                     color: Colors.red,
                                    //                   ),
                                    //                   onPressed: () {}),
                                    //               Text("120.2"),
                                    //             ],
                                    //           ),
                                    //           Row(
                                    //             children: [
                                    //               IconButton(
                                    //                   icon: Icon(
                                    //                     Icons.favorite,
                                    //                     color: Colors.red,
                                    //                   ),
                                    //                   onPressed: () {}),
                                    //               Text("120.2"),
                                    //             ],
                                    //           ),
                                    //         ],
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
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
