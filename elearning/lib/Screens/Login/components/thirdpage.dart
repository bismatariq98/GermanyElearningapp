import 'package:elearning/Screens/Login/components/SubCategoryTwo.dart';
import 'package:elearning/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:elearning/controller/mainController.dart';
import '../../../constants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:elearning/Screens/Login/components/SubCatTry.dart';

class SubCategory extends StatefulWidget {
  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isColor = false;
    bool isLoading = false;
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("thirdpahe"),
        // ),
        // appBar: AppBar(
        //   actions: [
        //     RaisedButton(
        //       child: Text("Report"),
        //       onPressed: () => _showReportDialog(),
        //     ),
        //   ],
        // ),
        body: GetBuilder<MainController>(
      builder: (_) {
        return Container(
          height: 1500,
          width: Get.width,
          color: Color(0XFFFBDCE2),
          child: Stack(
            children: [
              Positioned(
                top: 25,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 270,
                  width: 500,
                  color: Color(0xFF062275),
                ),
              ),
              Positioned(
                top: 0,
                left: 290,
                right: 0,
                bottom: 500,
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.red,
                    size: 50,
                  ),
                  onPressed: () {},
                ),
              ),

              Positioned(
                top: 360,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(height: 170, width: 500, color: Colors.white),
              ),

              Positioned(
                top: 30,
                left: 0,
                right: 0,
                bottom: Get.height / 2 + 110,
                child: Container(
                  height: 300,
                  width: 420,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 20.0, height: 100.0),
                      Text(
                        "CHOOSE",
                        style: TextStyle(fontSize: 50.0, color: Colors.white),
                      ),
                      SizedBox(width: 20.0, height: 100.0),
                      RotateAnimatedTextKit(
                          // pause: const Duration(seconds: 5),
                          repeatForever: true,
                          totalRepeatCount: 2,
                          onTap: () {
                            print("Tap Event");
                          },
                          text: [
                            "YOUR",
                            "INTEREST",
                          ],
                          textStyle: TextStyle(
                              fontSize: 35.0,
                              fontFamily: "Horizon",
                              color: Color(0xFFFADBE1)),
                          textAlign: TextAlign.start),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 160,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 650,
                  // width: 100,

                  // height: 1000,
                  // width: 1000,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 50, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            height: 160,
                            width: double.infinity,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              // padding: EdgeInsets.all(0),
                              // crossAxisCount: 2,
                              itemCount: _.selectedCategory.length,
                              // crossAxisSpacing: 20,
                              // mainAxisSpacing: 20,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    _.loadSelectedDataSub(
                                      _.selectedCategory[index].name,
                                    );
                                    // if (isColor == false) {
                                    //   isColor == true;
                                    // } else {
                                    //   isColor = false;
                                    // }
                                  },
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      height: 40,
                                      width: 150,
                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: Container(
                                              padding: EdgeInsets.all(20),
                                              height: 80,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                image: DecorationImage(
                                                  image: AssetImage(_
                                                      .selectedCategory[index]
                                                      .image),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    _.selectedCategory[index]
                                                        .name,
                                                    style: kTitleTextStyle,
                                                  ),
                                                  // Text(
                                                  //   '${_.categories[index].numOfCourses} Courses',
                                                  //   style: TextStyle(
                                                  //     color:
                                                  //         kTextColor.withOpacity(.5),
                                                  //   ),
                                                  // )
                                                ],
                                              ),
                                            ),
                                          ),
                                          //  For Selection red
                                          // _.subShowCategory[index].isSelected
                                          isColor
                                              ? Positioned.fill(
                                                  child: Container(
                                                  color: Colors.red
                                                      .withOpacity(0.5),
                                                ))
                                              : SizedBox(),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                              // staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(),
              Positioned(
                top: 360,
                left: 0,
                right: 0,
                bottom: 80,
                child: Container(
                  height: 800,
                  // width: double.infinity,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1,
                          crossAxisCount: 3,
                          crossAxisSpacing: 2),
                      itemCount: _.showSubCategoryModel.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            _.showSubCategoryModel[i].image ==
                                                    null
                                                ? Text("Loading not Found")
                                                : _.showSubCategoryModel[i]
                                                    .image))),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(_.showSubCategoryModel[i].name),
                            ],
                          ),
                        );
                      }),
                  //  ListView.builder(
                  //     itemCount: _.showSubCategoryModel.length,
                  //     scrollDirection: Axis.horizontal,
                  //     itemBuilder: (context, i) {
                  //       return Padding(
                  //         padding: EdgeInsets.only(left: 20),
                  //         child: Column(
                  //           children: [
                  //             Container(
                  //               height: 90,
                  //               width: 90,
                  //               decoration: BoxDecoration(
                  //                   shape: BoxShape.circle,
                  //                   image: DecorationImage(
                  //                       image: AssetImage(_
                  //                           .showSubCategoryModel[i].image))),
                  //             ),
                  //             SizedBox(
                  //               height: 23,
                  //             ),
                  //             Text(_.showSubCategoryModel[i].name),
                  //           ],
                  //         ),
                  //       );
                  //     })

/* -------------------------------------------------------------------------- */
/*                                    Grid                                    */
/* -------------------------------------------------------------------------- */

                  // StaggeredGridView.countBuilder(
                  //   padding: EdgeInsets.all(0),
                  //   crossAxisCount: 2,
                  //   itemCount: _.showSubCategoryModel.length,
                  //   crossAxisSpacing: 20,
                  //   mainAxisSpacing: 20,
                  //   itemBuilder: (context, index) {
                  //     return InkWell(
                  //       onTap: () {
                  //         _.updatesubCategorySelection(
                  //             _.showSubCategoryModel[index].name);
                  //         // _.updateSelection(index);
                  //       },
                  //       child: Container(
                  //         height: index.isEven ? 200 : 240,
                  //         width: 200,
                  //         child: Stack(
                  //           children: [
                  //             Positioned.fill(
                  //               child: Container(
                  //                 padding: EdgeInsets.all(20),
                  //                 height: index.isEven ? 200 : 240,
                  //                 decoration: BoxDecoration(
                  //                   borderRadius: BorderRadius.circular(16),
                  //                   image: DecorationImage(
                  //                     image: AssetImage(
                  //                         // "assets/images/business.png"
                  //                         _.showSubCategoryModel[index].image),
                  //                     fit: BoxFit.fill,
                  //                   ),
                  //                 ),
                  //                 child: Column(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   children: <Widget>[
                  //                     Text(
                  //                       _.showSubCategoryModel[index].name,
                  //                       style: kTitleTextStyle,
                  //                     ),
                  //                     // Text(
                  //                     //   '${_.categories[index].numOfCourses} Courses',
                  //                     //   style: TextStyle(
                  //                     //     color: kTextColor.withOpacity(.5),
                  //                     //   ),
                  //                     // )
                  //                     //check whatsapp
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //             _.checkSelectionforCategory(
                  //                     _.showSubCategoryModel[index].name)
                  //                 ? Positioned.fill(
                  //                     child: Container(
                  //                     color: Colors.red.withOpacity(0.5),
                  //                   ))
                  //                 : SizedBox(),
                  //           ],
                  //         ),
                  //       ),
                  //     );
                  //   },
                  //   staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  // ),
                ),
              ),
              // Positioned(
              //     top: 600,
              //     left: 40,
              //     right: 40,
              //     child: InkWell(
              //       onTap: () {},
              //       child: Container(
              //         height: 70,
              //         width: 10,
              //         decoration: BoxDecoration(
              //           color: Colors.black,
              //           borderRadius: BorderRadius.circular(20),
              //         ),
              //       ),
              //     ))
              // Positioned(
              //   top: 600,
              //   left: 120,
              //   right: 120,
              //   child: InkWell(
              //     onTap: () {
              //       // _.loadDataSub();
              //       // _.loadDatasubSub();
              //       _.sortedListData().then((value) => Get.to(
              //             TryCategoryTwo(),
              //             // SubCategoryTwo()
              //           ));
              //     },
              //     child: Container(
              //         height: 50,
              //         width: 30,
              //         decoration: BoxDecoration(
              //           color: Colors.black,
              //           borderRadius: BorderRadius.circular(20),
              //         ),
              //         child: Center(
              //           child: Text(
              //             "GO ON",
              //             style: TextStyle(color: Colors.white, fontSize: 25),
              //           ),
              //         )),
              //   ),
              // )
            ],
          ),
        );
      },
    ));
  }
}
