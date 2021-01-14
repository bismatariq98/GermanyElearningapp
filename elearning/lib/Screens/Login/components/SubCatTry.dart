import 'package:elearning/constants.dart';
import 'package:elearning/controller/mainController.dart';
import 'package:elearning/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TryCategoryTwo extends StatefulWidget {
  @override
  _TryCategoryTwoState createState() => _TryCategoryTwoState();
}

class _TryCategoryTwoState extends State<TryCategoryTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MainController>(
        builder: (_) {
          return SafeArea(
            child: Scaffold(
              // extendBodyBehindAppBar: true,
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Text(
                  "sussub",
                  style: TextStyle(color: Color(0xFF062275)),
                ),
                automaticallyImplyLeading: false,
                actions: [
                  Container(
                    width: 200,
                    color: Color(0xFF062275),
                    child: Center(
                      child: Text("SUBSUBCAT",
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.forward,
                      color: Color(0xFF062275),
                    ),
                    onPressed: () {
                      _.showSubCategoryModel.clear();
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              body: Container(
                height: Get.height,
                width: Get.width,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      height: 700,
                      width: 100,
                      color: Color(0xFF062275),
                      child: ListView.builder(
                          itemCount: _.showSubCategoryModel.length,
                          itemBuilder: (ctx, i) {
                            return Padding(
                              padding: EdgeInsets.all(15),
                              child: RotatedBox(
                                quarterTurns: 1,
                                child: Container(
                                    height: 90,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                        child: Text(
                                      _.showSubCategoryModel[i].name,
                                      style: TextStyle(fontSize: 20),
                                    ))),
                              ),
                            );
                          }),
                    ),
                    Expanded(
                      child: GridView.builder(
                          itemCount: _.showSubCategoryModel.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1,
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                          itemBuilder: (ctx, i) {
                            return Container(
                              height: 400,
                              width: 200,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Container(
                                      padding: EdgeInsets.all(20),
                                      height: 400,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              // "assets/images/business.png"
                                              _.showSubCategoryModel[i].image),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            _.showSubCategoryModel[i].name,
                                            style: kTitleTextStyle,
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
                                  // _.checkSelection(_.selectedCategory[index].name)
                                  //     ? Positioned.fill(
                                  //         child: Container(
                                  //         color: Colors.red.withOpacity(0.5),
                                  //       ))
                                  //     : SizedBox(),
                                ],
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
}
