import 'package:elearning/main.dart';
import 'package:flutter/material.dart';
import 'package:elearning/Models/langaugeModel.dart';
import 'package:get/get.dart';

class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1000,
        width: Get.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Text(
                    "Which Language do you speak the best ?",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Container(
                    height: 490,
                    width: Get.width,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1.8,
                            crossAxisCount: 2,
                            mainAxisSpacing: 20.0,
                            crossAxisSpacing: 20.0),
                        itemCount: language.length,
                        itemBuilder: (context, i) {
                          return Stack(children: [
                            Container(
                              height: 400,
                              width: Get.width,
                              decoration: BoxDecoration(
                                color: Color(0xFFCFD3CF),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage(language[i].image))),
                                  ),
                                  Text(language[i].name),
                                ],
                              ),
                            ),
                          ]);
                        }),
                  ),
                ),
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
                        style: TextStyle(color: Colors.white, fontSize: 25),
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
      ),
    );
  }
}
