import 'package:elearning/components/model.dart';
import 'package:elearning/components/slider.dart';
import 'package:elearning/main.dart';
import 'package:flutter/material.dart';
import 'package:elearning/components/Style.dart';

class HomeScreenTwo extends StatefulWidget {
  @override
  _HomeScreenTwoState createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo>
    with TickerProviderStateMixin {
  AnimationController animation;
  Animation<double> _fadeInFadeOut;
  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 0.9).animate(animation);

    animation.addStatusListener((status) {
      // if (status == AnimationStatus.completed) {
      //   animation.reverse();
      // } else
      //  if (status == AnimationStatus.dismissed) {
      //   animation.forward();
      // }
    });
    animation.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screentwo"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 1000,
          child: Column(
            children: [
              Banners(),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "FirstOne",
                        style: text,
                      ),
                      Text("SeeAll", style: text),
                    ],
                  ),
                ),
              ),
              FadeTransition(
                opacity: _fadeInFadeOut,
                child: Container(
                  height: 200,
                  width: 800,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listss.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Image.asset(
                              listss[i].imagess,
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "FirstOne",
                        style: text,
                      ),
                      Text("SeeAll", style: text),
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 800,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listss.length,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Image.asset(
                            listss[i].imagess,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
