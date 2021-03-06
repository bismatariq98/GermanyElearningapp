import 'package:elearning/Screens/Login/components/thirdpage.dart';
import 'package:elearning/Screens/Welcome/components/Animation.dart';
import 'package:elearning/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:elearning/controller/mainController.dart';

import 'SubCategoryTwo.dart';

class HomeScreenFav extends StatefulWidget {
  @override
  _HomeScreenFavState createState() => _HomeScreenFavState();
}

class _HomeScreenFavState extends State<HomeScreenFav> {
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
        title: Text(
          "Intreset",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        leading: Icon(
          Icons.ac_unit_sharp,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.backpack,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("GO"),
        onPressed: () {
          mainController.loadDatasubSub();
          mainController.selectedCategoryListData();

          Get.to(SubCategory());
        },
        elevation: 5,
      ),
      body: GetBuilder<MainController>(
        builder: (_) {
          return Container(
            height: 1000,
            width: Get.width,
            child: Stack(children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue[100],
                ),
              ),
              Positioned(
                top: 50,
                left: 300,
                child: Container(
                  height: 200,
                  width: 120,
                  color: Colors.blue[100],
                ),
              ),
              // Positioned(
              //   top: 0,
              //   child: Container(
              //     height: 150,
              //     width: Get.width,
              //     decoration: BoxDecoration(
              //       // color: Color(0xFFFFAB00),
              //       color: Color(0XFF0F278E),
              //       // image: DecorationImage(
              //       //     image: AssetImage("assets/images/bn.jpg")),
              //       borderRadius: BorderRadius.only(
              //           bottomLeft: Radius.circular(45),
              //           bottomRight: Radius.circular(45)),
              //     ),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Padding(
              //           padding: EdgeInsets.only(top: 30),
              //           child: Text(
              //             "Choose atleast one Intrests",
              //             style: TextStyle(
              //                 fontSize: 29,
              //                 color: Colors.white,
              //                 fontWeight: FontWeight.bold),
              //           ),
              //         ),
              //         SizedBox(
              //           height: 18,
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // Positioned(
              //   top: 120,
              //   left: 0,
              //   child: Container(
              //     height: 100,
              //     width: Get.width,

              //     decoration: BoxDecoration(
              //         color: Colors.blue[100],
              //         borderRadius: BorderRadius.circular(30)),

              //     // Text(
              //     //   "KATHERINE",
              //     //   style: TextStyle(fontSize: 32),
              //     // )
              //     //  Icon(
              //     //   Icons.search,
              //     //   size: 40,
              //     //   color: Colors.white,
              //     // ),
              //   ),
              // ),
              // Positioned(
              //   top: 120,
              //   left: 20,
              //   child: Container(
              //       margin: EdgeInsets.all(4),
              //       decoration: BoxDecoration(),
              //       child: Text(
              //         "KATHERINE",
              //         style: TextStyle(fontSize: 32),
              //       )
              //       //  Icon(
              //       //   Icons.search,
              //       //   size: 40,
              //       //   color: Colors.white,
              //       // ),
              //       ),
              // ),
              // Positioned(
              //   top: 180,
              //   left: 20,
              //   child: Container(
              //       margin: EdgeInsets.all(4),
              //       decoration: BoxDecoration(),
              //       child: Text(
              //         "Choose Atleast One Intrest",
              //         style: TextStyle(fontSize: 25),
              //       )
              //       //  Icon(
              //       //   Icons.search,
              //       //   size: 40,
              //       //   color: Colors.white,
              //       // ),
              //       ),
              // ),

/* -------------------------------------------------------------------------- */
/*                                  SearchBox                                 */
/* -------------------------------------------------------------------------- */

              // Positioned(
              //   top: 100,
              //   left: 300,
              //   child: Container(
              //     height: 70,
              //     width: 70,
              //     margin: EdgeInsets.all(4),
              //     decoration: BoxDecoration(
              //         shape: BoxShape.circle, color: Color(0XFF0F278E)),
              //     child: Icon(
              //       Icons.search,
              //       size: 40,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              // Positioned(
              //   top: 120,
              //   left: 60,
              //   child: Container(
              //     height: 35,
              //     width: 240,
              //     decoration: BoxDecoration(
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.grey,
              //             offset: Offset(0.0, 1.0), //(x,y)
              //             blurRadius: 6.0,
              //           ),
              //         ],
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(30)),
              //     child: TextFormField(
              //       onChanged: (value) {
              //         setState(() {
              //           searchedText = value;
              //         });
              //       },
              //       decoration: InputDecoration(
              //           contentPadding: EdgeInsets.only(left: 10),
              //           fillColor: Colors.white,
              //           border: InputBorder.none,
              //           suffixIcon: Container(
              //             margin: EdgeInsets.all(4),
              //             decoration: BoxDecoration(
              //                 shape: BoxShape.circle, color: Color(0XFF0F278E)),
              //             child: Icon(
              //               Icons.search,
              //               color: Colors.white,
              //             ),
              //           ),
              //           hintText: "Type too Search..."),
              //     ),
              //   ),
              // ),
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
                top: 170,
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
                          ? Column(
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
                                //han g
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
                                                  border: Border.all(
                                                      color: Colors.grey,
                                                      width: 2)),
                                              height: 100,
                                              width: 150,
                                              child: Stack(
                                                children: [
                                                  Positioned.fill(
                                                    child: Container(
                                                      margin:
                                                          EdgeInsets.all(10),
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        image: DecorationImage(
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
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                            _.sortedListCat[i]
                                                                .name,
                                                            style: TextStyle(
                                                                fontSize: 17,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                            // style: kTitleTextStyle,
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
                                                              color:
                                                                  Colors.green,
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
