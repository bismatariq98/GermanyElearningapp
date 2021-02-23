import 'package:elearning/controller/mainController.dart';
import 'package:elearning/localization/language/languages.dart';
import 'package:elearning/main.dart';
import 'package:flutter/material.dart';
import 'package:elearning/Models/langaugeModel.dart';
import 'package:get/get.dart';
import 'package:elearning/localization/language/languages.dart';
import 'package:elearning/localization/locale_constant.dart';
import 'package:elearning/model/language_data.dart';
import 'package:easy_localization/easy_localization.dart';

class LanguageLearn extends StatefulWidget {
  @override
  _LanguageLearnState createState() => _LanguageLearnState();
}

class _LanguageLearnState extends State<LanguageLearn> {
  MainController mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Langauge"),
      ),
      body: GetBuilder<MainController>(
        builder: (_) {
          return Container(
            height: 1000,
            width: Get.width,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Text(
                        // "Which Language do you speak the best ?",
                        "Select Langauge you want to learn ",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Container(
                        height: 490,
                        width: Get.width,
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 1.8,
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 20.0,
                                    crossAxisSpacing: 20.0),
                            itemCount: language.length,
                            itemBuilder: (context, i) {
                              return InkWell(
                                  onTap: () {
                                    _.tick(i);
                                  },
                                  child: Stack(children: [
                                    Positioned.fill(
                                      child: Container(
                                        height: 400,
                                        width: Get.width,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFCFD3CF),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          language[i].image))),
                                            ),
                                            Text(language[i].name),
                                          ],
                                        ),
                                      ),
                                    ),
                                    _.ijk == i
                                        ? Positioned.fill(
                                            child: Container(
                                                height: 400,
                                                width: Get.width,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: AnimatedContainer(
                                                  duration:
                                                      Duration(seconds: 1),
                                                  curve: Curves.fastOutSlowIn,
                                                  decoration: BoxDecoration(
                                                      color: Colors.black
                                                          .withOpacity(0.5),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  height: 400,
                                                  width: Get.width,
                                                )),
                                          )
                                        : SizedBox(),
                                  ]));
                            }),
                      ),
                    ),
                    if (_.ijk >= 0)
                      Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Color(0xFFA6A5BA),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Next",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            Icon(
                              Icons.forward,
                              size: 30,
                            )
                          ],
                        ),
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

  _createLanguageDropDown() {
    return DropdownButton<LanguageData>(
      iconSize: 30,
      hint: Text(Languages.of(context).labelSelectLanguage),
      onChanged: (LanguageData language) {
        changeLanguage(context, language.languageCode);
      },
      items: LanguageData.languageList()
          .map<DropdownMenuItem<LanguageData>>(
            (e) => DropdownMenuItem<LanguageData>(
              value: e,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    e.flag,
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(e.name)
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
