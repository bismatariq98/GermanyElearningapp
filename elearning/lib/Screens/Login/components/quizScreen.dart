import 'package:elearning/controller/mainController.dart';
import 'package:elearning/controller/quiz_controller.dart';
import 'package:elearning/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  MainController mainController = Get.put(MainController());
  QuizController quizController = Get.put(QuizController());
  @override
  Widget build(BuildContext context) {
    quizController.dataAddingFun();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.exit_to_app,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          "Kitchen",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.ac_unit,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: GetBuilder<QuizController>(
        builder: (_) {
          return Container(
            color: Colors.white,
            // Color(0xFF4F25BC),
            height: Get.height,
            width: Get.width,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 32.0, top: 130),
                    child: new LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 70,
                      animation: true,
                      lineHeight: 27.0,
                      animationDuration: 2500,
                      percent: 0.8,
                      center: Text("80.0%"),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: Color(0xFFABA3DB),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 26, top: 30),
                    child: Text(
                      "Spell the Word",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 27),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              for (var data in _.inputList)
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: containers(data),
                                ),

                              // SizedBox(
                              //   width: 10,
                              // ),
                              // containers("F"),
                              // SizedBox(
                              //   width: 10,
                              // ),
                              // containers("o"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(Icons.audiotrack), onPressed: null),
                        IconButton(
                            icon: Icon(Icons.audiotrack), onPressed: null),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                        // height: Get.height,
                        // width: Get.width,
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (var data in _.randomAnimalLetter)
                              InkWell(
                                onTap: () {
                                  if (_.checkPress(data)) {
                                    _.addIntoInput(data);
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: containersBelow(data),
                                ),
                              )
                          ],
                        )
                        //  ListView.builder(
                        //     scrollDirection: Axis.horizontal,
                        //     itemCount: _.randomAnimalLetter.length,
                        //     itemBuilder: (ctx, index) {
                        //       return
                        //       InkWell(
                        //         onTap: () {
                        //           _.addIntoInput(_.randomAnimalLetter[index]);
                        //         },
                        //         child: Padding(
                        //           padding: const EdgeInsets.all(10.0),
                        //           child: containers(_.randomAnimalLetter[index]),
                        //         ),
                        //       );
                        //     }),
                        ),
                  ),
                  InkWell(
                    onTap: () {
                      // if (_.isComplete) {
                      //   if (_.isChecked) {
                      //     // code for next page
                      //     _.nextQuestion();
                      //   } else {
                      //     _.checkAnswer();
                      //   }
                      // }
                      switch (_.btnLabel) {
                        case 'Chose Letter':
                          break;
                        case 'Check':
                          _.checkAnswer();
                          break;
                        case 'Well done, Next':
                          _.nextQuestion();
                          break;
                        case 'Try again':
                          _.repeateQuestion();
                          break;
                      }
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 68.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: _.btnColor,
                          ),
                          height: 50,
                          width: 170,
                          child: Center(
                              child: Text(
                            _.btnLabel,
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget containersBelow(String text) {
    return Container(
      decoration: BoxDecoration(
        color: quizController.checkColor(text),
        borderRadius: BorderRadius.circular(20),
        // shape: BoxShape.circle,
      ),
      height: 56,
      width: 57,
      child: Center(
          child:
              Text(text, style: TextStyle(color: Colors.white, fontSize: 30))),
    );
  }

  Widget containers(String text) {
    return Container(
      decoration: BoxDecoration(
          color: quizController.isChecked
              ? quizController.topCntainer
              : text == ""
                  ? Colors.transparent
                  : Colors.grey,
          //  Color(0xFFFF6D94),
          borderRadius: BorderRadius.circular(90),
          border: Border.all(color: Colors.grey, width: 2)),
      height: 56,
      width: 56,
      child: Center(
          child:
              Text(text, style: TextStyle(color: Colors.white, fontSize: 30))),
    );
  }
}
