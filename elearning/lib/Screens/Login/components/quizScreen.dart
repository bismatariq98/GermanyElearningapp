import 'package:elearning/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
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
          "Kitechen",
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
      body: Container(
        color: Color(0xFF4F25BC),
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Container(
              height: 390,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "MON-Y",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "MON-Y",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "MON-Y",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Color(0xFFF9C85E),
                          height: 65,
                          width: 55,
                          child: Center(
                              child: Text("R",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30))),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          color: Color(0xFFF9C85E),
                          height: 65,
                          width: 55,
                          child: Center(
                              child: Text("R",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30))),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          color: Color(0xFFF9C85E),
                          height: 65,
                          width: 55,
                          child: Center(
                              child: Text("R",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30))),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          color: Color(0xFFF9C85E),
                          height: 65,
                          width: 55,
                          child: Center(
                              child: Text("R",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
