import 'package:elearning/Screens/Login/components/thirdpage.dart';
import 'package:elearning/controller/mainController.dart';
import 'package:elearning/main.dart';
import 'package:flutter/material.dart';
import 'package:elearning/constants.dart';
// import 'package:course_app/details_screen.dart';
import 'package:elearning/components/model.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MainController mainController = Get.put(MainController());
  bool selected = true;
  Function(bool selected) onSelect;
  List<String> selectedReportList = List();
  List<String> tags = [];

  _showReportDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          //Here we will build the content of the dialog
          // return AlertDialog(
          //   title: Text("Report Video"),
          //   content: MultiSelectChip(
          //     categories,
          //     onSelectionChanged: (selectedList) {
          //       setState(() {
          //         selectedReportList = selectedList;
          //       });
          //     },
          //   ),
          //   actions: <Widget>[
          //     FlatButton(
          //       child: Text("Report"),
          //       onPressed: () => Navigator.of(context).pop(),
          //     )
          //   ],
          // );
        });
  }

  @override
  void initState() {
    // TODO: implement initState

    mainController.loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mainController.loadData();
    mainController.loadDataSub();
    mainController.loadDatasubSub();
    return Scaffold(
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
        return Stack(
          children: [
            Positioned.fill(
              child: Container(
                height: 1000,
                width: 1000,
                color: Color(0xFF062275),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 50, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 420,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 20.0, height: 100.0),
                            Text(
                              "CHOOSE",
                              style: TextStyle(
                                  fontSize: 35.0, color: Colors.white),
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

                      SizedBox(height: 30),
                      // Text("Hey Alex,", style: kHeadingextStyle),
                      // Text("Find a course you want to learn",
                      //     style: kSubheadingextStyle),
                      // Container(
                      //   margin: EdgeInsets.symmetric(vertical: 30),
                      //   padding:
                      //       EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      //   height: 60,
                      //   width: double.infinity,
                      //   decoration: BoxDecoration(
                      //     color: Color(0xFFF5F5F7),
                      //     borderRadius: BorderRadius.circular(40),
                      //   ),
                      //   child: Row(
                      //     children: <Widget>[
                      //       SvgPicture.asset("assets/icons/search.svg"),
                      //       SizedBox(width: 16),
                      //       Text(
                      //         "Search for anything",
                      //         style: TextStyle(
                      //           fontSize: 18,
                      //           color: Color(0xFFA0A5BD),
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: <Widget>[
                      //     Text("Category", style: kTitleTextStyle),
                      //     Text(
                      //       "See All",
                      //       style:
                      //           kSubtitleTextSyule.copyWith(color: kBlueColor),
                      //     ),
                      //   ],
                      // ),
                      SizedBox(height: 30),
                      // Content(
                      //   title: 'Custom Choice Widget',
                      //   child: ChipsChoice<String>.multiple(
                      //     value: tags,
                      //     onChanged: (val) => setState(() => tags = val),
                      //     choiceItems: C2Choice.listFrom<String, String>(
                      //       source: jnab,
                      //       value: (i, v) => v,
                      //       label: (i, v) => v,
                      //     ),
                      //     choiceBuilder: (item) {
                      //       return CustomChip(
                      //           label: item.label,
                      //           width: 70,
                      //           height: 100,
                      //           selected: item.selected,
                      //           onSelect: item.select);
                      //     },
                      //   ),
                      // ),
                      Expanded(
                        child: StaggeredGridView.countBuilder(
                          padding: EdgeInsets.all(0),
                          crossAxisCount: 2,
                          itemCount: _.categories.length,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          itemBuilder: (context, index) {
                            // return AnimatedContainer(
                            //   width: 1000,
                            //   height: 1000,
                            //   margin: EdgeInsets.all(12) ??
                            //       const EdgeInsets.symmetric(
                            //         vertical: 15,
                            //         horizontal: 5,
                            //       ),
                            //   duration: const Duration(milliseconds: 300),
                            //   decoration: BoxDecoration(
                            //     color: selected
                            //         ? (Colors.brown ?? Colors.green)
                            //         : Colors.transparent,
                            //     borderRadius: BorderRadius.all(
                            //         Radius.circular(selected ? 25 : 10)),
                            //     border: Border.all(
                            //       color: selected
                            //           ? (Colors.amber ?? Colors.green)
                            //           : Colors.grey,
                            //       width: 1,
                            //     ),
                            //   ),
                            //   child: InkWell(
                            //     onTap: () => onSelect(!selected),
                            //     child: Stack(
                            //       alignment: Alignment.center,
                            //       children: <Widget>[
                            //         Visibility(
                            //             visible: selected,
                            //             child: const Icon(
                            //               Icons.check_circle_outline,
                            //               color: Colors.white,
                            //               size: 32,
                            //             )),
                            //         Positioned(
                            //           left: 9,
                            //           right: 9,
                            //           bottom: 7,
                            //           child: Container(
                            //             child: Text(
                            //               categories[index].name,
                            //               maxLines: 1,
                            //               overflow: TextOverflow.ellipsis,
                            //               style: TextStyle(
                            //                 color: selected
                            //                     ? Colors.white
                            //                     : Colors.black45,
                            //               ),
                            //             ),
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // );

                            return InkWell(
                              onTap: () {
                                // _.updateSelection(index);
                                // _.categories.setAll(index, [
                                //   Heading(
                                //       image: _.categories[index].image,
                                //       name: _.categories[index].name,
                                //       isSelected: _.categories[index].isSelected
                                //           ? false
                                //           : true,
                                //       numOfCourses: _.categories[index].numOfCourses)
                                // ]);
                              },
                              child: Container(
                                height: index.isEven ? 200 : 240,
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Container(
                                        padding: EdgeInsets.all(20),
                                        height: index.isEven ? 200 : 240,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                _.categories[index].image),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              _.categories[index].name,
                                              style: kTitleTextStyle,
                                            ),
                                            Text(
                                              '${_.categories[index].numOfCourses} Courses',
                                              style: TextStyle(
                                                color:
                                                    kTextColor.withOpacity(.5),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    _.categories[index].isSelected
                                        ? Positioned.fill(
                                            child: Container(
                                            color: Colors.red.withOpacity(0.5),
                                          ))
                                        : SizedBox(),
                                  ],
                                ),
                              ),
                            );
                          },
                          staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 600,
              left: 120,
              right: 120,
              child: InkWell(
                onTap: () {
                  _.loadDataSub();
                  _.loadDatasubSub();
                  _.sortedListData();

                  Get.to(SubCategory());
                },
                child: Container(
                    height: 50,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "GO ON",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            )
          ],
        );
      },
    ));
  }
}

class CustomChip extends StatelessWidget {
  final String label;
  final Color color;
  final double width;
  final double height;
  final EdgeInsetsGeometry margin;
  final bool selected;
  final Function(bool selected) onSelect;

  CustomChip({
    Key key,
    this.label,
    this.color,
    this.width,
    this.height,
    this.margin,
    this.selected,
    this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: this.width,
      height: this.height,
      margin: margin ??
          const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 5,
          ),
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: selected ? (color ?? Colors.green) : Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(selected ? 25 : 10)),
        border: Border.all(
          color: selected ? (color ?? Colors.green) : Colors.grey,
          width: 1,
        ),
      ),
      child: InkWell(
        onTap: () => onSelect(!selected),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Visibility(
                visible: selected,
                child: const Icon(
                  Icons.check_circle_outline,
                  color: Colors.white,
                  size: 32,
                )),
            Positioned(
              left: 9,
              right: 9,
              bottom: 7,
              child: Container(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: selected ? Colors.white : Colors.black45,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
