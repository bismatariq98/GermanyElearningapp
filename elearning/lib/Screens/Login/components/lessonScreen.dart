import 'package:elearning/main.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class lessonScreen extends StatefulWidget {
  @override
  _lessonScreenState createState() => _lessonScreenState();
}

class _lessonScreenState extends State<lessonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 13.0),
          child: Text(
            "Lesson 1",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(top: 12.0, left: 12),
          child: Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xFFF87C56)),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {},
            ),
          ),
        ),
        actions: [],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            //        gradient: SweepGradient(

            //         colors: [

            //         Color(0xFFB3404C),
            //         Color(0xFF872D4D),

            //       ],

            //        stops: [1, 0.96,],
            //       startAngle: 0.5,
            // endAngle: 1
            //       ),
            // gradient: LinearGradient(
            //     begin: Alignment.centerRight,
            //     end: Alignment.centerLeft,
            //     colors: [
            //   Color(0xFF36d1dc),
            //   Color(0xFF5b86e5),
            //   //  Color(0xFF4FBE6A),
            //   // Color(0xFF83C649),
            // ])ok
            ),
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20),
                child: new LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width - 40,
                  animation: true,
                  lineHeight: 30.0,
                  animationDuration: 2500,
                  percent: 0.8,
                  center: Text("80.0%"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Color(0xFFF87C56),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22.0, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Text(
                    //   'This is Google Fonts',
                    //   style: GoogleFonts.lato(
                    //     textStyle:
                    //         TextStyle(color: Colors.blue, letterSpacing: .5),
                    //   ),
                    // ),
                    Text(
                      "New Example",
                      style: TextStyle(
                        color: Color(0xFFF87C56),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.volume_up,
                        color: Color(0xFFF87C56),
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.turned_in_outlined,
                        color: Color(0xFFF87C56),
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37.0),
                child: Container(
                  height: 240,
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/europeanHistroy.jpg"),
                      )),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 23),
                child: Text(
                    "Austrlain Shepherd Often Excel at Dog and the Dog make it Good although the scene are not very good but things similar to hat are way more hypntics",
                    style: GoogleFonts.almendraSc(
                        textStyle: TextStyle(fontSize: 25))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.all(15.0),
                  //   child: Text(
                  //     "Click the World",
                  //     style: TextStyle(fontSize: 30, color: Colors.grey),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150.0, bottom: 10),
                    child: Container(
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFF67D53),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
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
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
