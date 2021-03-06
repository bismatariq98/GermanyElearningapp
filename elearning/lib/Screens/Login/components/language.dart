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
import 'package:elearning/Screens/Login/components/langaugeLearn.dart';

class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  MainController mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        // title: _createLanguageDropDown(),
      ),
      body: GetBuilder<MainController>(
        builder: (_) {
          return Stack(
            children: [
              Positioned.fill(
                child: Container(
                  height: Get.height,
                  width: Get.width,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 28.0),
                            child: Text(
                              // "Which Language do you speak the best ?",
                              Languages.of(context).appName,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24.0, vertical: 8.0),
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
                                          // _.tick(i);

                                          _.langaugeSelection =
                                              language[i].langaugeCode;

                                          changeLanguage(
                                              context, _.langaugeSelection);
                                          _.update();
                                        },
                                        child: Stack(children: [
                                          Positioned.fill(
                                            child: Container(
                                              height: 400,
                                              width: Get.width,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFF9F9F9),
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
                                                                language[i]
                                                                    .image))),
                                                  ),
                                                  Text(language[i].name),
                                                ],
                                              ),
                                            ),
                                          ),
                                          // _.ijk == i
                                          _.langaugeSelection ==
                                                  language[i].langaugeCode
                                              ? Positioned.fill(
                                                  child: Container(
                                                    height: 400,
                                                    width: Get.width,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: AnimatedContainer(
                                                      duration:
                                                          Duration(seconds: 1),
                                                      curve:
                                                          Curves.fastOutSlowIn,
                                                      decoration: BoxDecoration(
                                                          color: Color(
                                                                  0xFFBCB5E7)
                                                              .withOpacity(0.5),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20)),
                                                      height: 400,
                                                      width: Get.width,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                bottom: 50.0,
                                                                left: 100.0),
                                                        child: Icon(
                                                          Icons.check_circle,
                                                          color: Colors.white,
                                                          size: 40,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : SizedBox(),
                                        ]));
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: _.langaugeSelection != ""
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 25.0),
                        child: Container(
                          height: 50,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Color(0xFFBCB5E7),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(LanguageLearn());
                                },
                                child: Text(
                                  "Next",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                              Icon(
                                Icons.forward,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      )
                    : SizedBox(),
              )
            ],
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
