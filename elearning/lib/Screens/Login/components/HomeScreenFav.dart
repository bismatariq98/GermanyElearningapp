import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:elearning/controller/mainController.dart';

//yes
class HomeScreenFav extends StatefulWidget {
  @override
  _HomeScreenFavState createState() => _HomeScreenFavState();
}

class _HomeScreenFavState extends State<HomeScreenFav> {
  // int select = 0;

  // indexLove(int i) {
  //   setState(() {
  //     select = i;
  //   });
  // }
  bool isselecttion = false;
  @override
  void initState() {
    mainController.loadData();
    mainController.loadDataSub();
    // mainController.sortedListDatas();
    // mainController.loadSelectedDataSub();

    super.initState();
  }

  String searchedText = "";
  bool isChange = false;
  MainController mainController = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    // Icon searchIcon = Icon(Icons.search);
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        // leading: Icon(Icons.ac_unit_sharp),
        actions: [
          // Text("Favourite Intrestes") vo new page dkhana mjy ha thk h??
        ],
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   label: Text("GO"),
      //   onPressed: () {
      //     mainController.loadDatasubSub();
      //     mainController.selectedCategoryListData();

      //     Get.to(SubCategoryNew());
      //   },
      //   elevation: 5,
      // ),
      body: GetBuilder<MainController>(
        builder: (_) {
          return Container(
            height: 1000,
            width: Get.width,
            child: Stack(children: [
              Positioned(
                top: 0,
                child: Container(
                  height: 180,
                  width: Get.width,
                  decoration: BoxDecoration(
                    // color: Color(0xFFFFAB00),
                    color: Colors.white,
                    //  Color(0XFF0F278E),
                    // image: DecorationImage(
                    //     image: AssetImage("assets/images/bn.jpg")),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(45)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 25, left: 30),
                            child: Container(
                              width: 210,
                              child: Text(
                                "Choose Interests",
                                style: TextStyle(
                                    fontSize: 27,
                                    color: isselecttion
                                        ? Colors.orange
                                        : Color(0xFF0F278E),
                                    // Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0, top: 22),
                            child: Container(
                              width: 120,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: _.isContinueSelection
                                      ? Color(0xFFF67D53)
                                      : Colors.grey,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "Continue",
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.white,
                                        // Color(0xFF0F278E)
                                      ),
                                    ),
                                  ),
                                  // IconButton(
                                  //   icon: Icon(Icons.arrow_forward),
                                  //   onPressed: () {},
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                top: 150,
                left: 20,
                child:
                    // Text(
                    //   "Choose One Intrest",
                    //   style: TextStyle(color: Colors.white, fontSize: 25),
                    // ),
                    Container(
                  height: 45,
                  width: 380,
                  decoration: BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.grey,
                      //     offset: Offset(0.0, 1.0), //(x,y)
                      //     blurRadius: 6.0,
                      //   ),
                      // ],
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          searchedText = value;
                        });
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          contentPadding: EdgeInsets.only(left: 10),
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          // suffixIcon: Container(
                          //   margin: EdgeInsets.all(4),
                          //   decoration: BoxDecoration(
                          //       shape: BoxShape.circle,
                          //       color: Color(0XFF0F278E)),
                          //   child: Icon(
                          //     Icons.search,
                          //     color: Colors.white,
                          //   ),
                          // ),
                          //test karo zara nh hua

                          hintText: "Type too Search...",
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 225,
                left: 70,
                child: Text(
                  "Select at least one interest",
                  style: TextStyle(
                      color: Color(0xFF0F278E),
                      //  Colors.white,
                      fontSize: 25),
                ),
                //  Container(
                //   height: 35,
                //   width: 240,
                //   decoration: BoxDecoration(
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.grey,
                //           offset: Offset(0.0, 1.0), //(x,y)
                //           blurRadius: 6.0,
                //         ),
                //       ],
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(30)),
                //   child:
                //   TextFormField(
                //     onChanged: (value) {
                //       setState(() {
                //         searchedText = value;
                //       });
                //     },
                //     decoration: InputDecoration(
                //         contentPadding: EdgeInsets.only(left: 10),
                //         fillColor: Colors.white,
                //         border: InputBorder.none,
                //         suffixIcon: Container(
                //           margin: EdgeInsets.all(4),
                //           decoration: BoxDecoration(
                //               shape: BoxShape.circle, color: Color(0XFF0F278E)),
                //           child: Icon(
                //             Icons.search,
                //             color: Colors.white,
                //           ),
                //         ),
                //         hintText: "Type too Search..."),
                //   ),
                // ),
              ),

              // Positioned(
              //   top: 120,
              //   left: 300,
              //   child: Container(
              //       height: 30,
              //       width: 30,
              //       decoration: BoxDecoration(
              //           shape: BoxShape.circle, color: Color(0XFF0F278E)),

              //       // decoration: BoxDecoration(
              //       //     boxShadow: [
              //       //       BoxShadow(
              //       //         color: Colors.grey,
              //       //         offset: Offset(0.0, 1.0), //(x,y)
              //       //         blurRadius: 6.0,
              //       //       ),
              //       //     ],
              //       //     color: Colors.white,
              //       //     borderRadius: BorderRadius.circular(30)),
              //       child: IconButton(
              //         icon: Icon(
              //           Icons.cancel,
              //           color: Colors.white,
              //         ),
              //         onPressed: () {
              //           setState(() {
              //             // if (!isChange) {
              //             //   isChange = true;
              //             //   searchController.clear();
              //             // } else {
              //             //   isChange = false;
              //             // }

              //             // if (searchIcon.icon == Icons.search) {
              //             //   searchIcon = Icon(Icons.cancel);
              //             //   isChange = true;
              //             // } else {
              //             //   searchIcon = Icon(Icons.search);
              //             // }
              //           });
              //         },
              //       )
              //       //  TextFormField(
              //       //   decoration: InputDecoration(
              //       //       fillColor: Color(0XFFFFAB00),
              //       //       border: InputBorder.none,
              //       //       prefixIcon: Icon(Icons.search),
              //       //       hintText: "Search"),
              //       // ),
              //       ),
              // ),
              Positioned(
                top: 270,
                bottom: 0,
                child:
                    //  Container(height: 50, width: 50, color: Colors.red),

                    Container(
                  width: Get.width,
                  height: Get.height,
                  child: ListView.builder(
                    itemCount: _.categories.length,
                    itemBuilder: (ctx, ind) {
                      return _.categories[ind].name.contains(searchedText)
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 12, top: 12),
                                    child: Text(
                                      _.categories[ind].name,
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Container(
                                    height: 110,
                                    width: Get.width,
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        physics: ClampingScrollPhysics(),
                                        itemCount: _
                                            .sortedListCategory(
                                                _.categories[ind].name)
                                            .length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (ctx, i) {
                                          return Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: InkWell(
                                              onTap: () {
                                                _.updateSelectionContinue();
                                                // indexLove(i);
                                                // _.loadSelectedDataSub(
                                                //     _.categories[ind].name);
                                                _.updateSelection(
                                                  _
                                                      .sortedListCategory(_
                                                          .categories[ind]
                                                          .name)[i]
                                                      .name,
                                                  _.categories[ind].name,
                                                );
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(22),
                                                  // border: Border.all(
                                                  //     color: Colors.grey,
                                                  //     width: 2)
                                                ),
                                                height: 150,
                                                width: 150,
                                                child: Stack(
                                                  children: [
                                                    Positioned.fill(
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        height: 100,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                                // "assets/images/business.png"
                                                                _.sortedListCat[i]
                                                                    .image),
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 25),
                                                              child: Text(
                                                                _.sortedListCat[i]
                                                                    .name,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        17,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .white),
                                                                // style: kTitleTextStyle,
                                                              ),
                                                            ),
                                                            // Text(
                                                            //   '${_.categories[index].numOfCourses} Courses',
                                                            //   style: TextStyle(
                                                            //     color: kTextColor.withOpacity(.5),
                                                            //   ),
                                                            // )
                                                            //check whatsapp
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    _.checkSelection(
                                                      _.sortedListCat[i].name,
                                                    )
                                                        ? Positioned.fill(
                                                            child:
                                                                AnimatedContainer(
                                                            duration: Duration(
                                                                seconds: 1),
                                                            curve: Curves
                                                                .fastOutSlowIn,
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .black
                                                                    .withOpacity(
                                                                        0.5),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20)),
                                                            child: Center(
                                                              child: Icon(
                                                                Icons
                                                                    .check_circle,
                                                                color: Colors
                                                                    .green,
                                                                size: 40,
                                                              ),
                                                            ),
                                                          ))
                                                        : SizedBox(),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        }),
                                  )
                                ],
                              ),
                            )
                          : SizedBox();
                    },
                  ),
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
