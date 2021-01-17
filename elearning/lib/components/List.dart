import 'package:flutter/material.dart';
import 'package:elearning/main.dart';

class roadMapList {
  String coverPic;
  String circlePic;
  String heading;
  String description;
  String location;
  String distance;
  Color color;
  roadMapList(
      {this.circlePic,
      this.coverPic,
      this.description,
      this.distance,
      this.heading,
      this.location,
      this.color});
}

List<roadMapList> roadList = [
  roadMapList(
    coverPic: "assets/images/indiaHistory.jpg",
    circlePic: "assets/images/emoji.jpg",
    heading: "Hello",
    description:
        "The scence are absolutlet File and the things gettiing more hard that is thr final design for this and you have absolutely awesome feelings int he",
    location: "seaView,Heed",
    distance: "1.4KM",
    color: Colors.red,
  ),
  roadMapList(
      coverPic: "assets/images/austrlia travelling.jpg",
      circlePic: "assets/images/hi.png",
      heading: "Hi",
      description:
          "The scence are absolutlet File and the things gettiing more hard that is thr final",
      location: "seaView,Heed",
      distance: "1.4KM",
      color: Colors.blue),
  roadMapList(
      coverPic: "assets/images/indiaHistory.jpg",
      circlePic: "assets/images/hi.png",
      heading: "Good Evening",
      description:
          "The scence are absolutlet File and the things gettiing more hard that is thr final",
      location: "seaView,Heed",
      distance: "1.4KM",
      color: Colors.brown),
  roadMapList(
      coverPic: "assets/images/indiaHistory.jpg",
      circlePic: "assets/images/emoji.jpg",
      heading: "Bye",
      description:
          "The scence are absolutlet File and the things gettiing more hard that is thr final",
      location: "seaView,Heed",
      distance: "1.4KM",
      color: Colors.yellow),
  roadMapList(
      coverPic: "assets/images/indiaHistory.jpg",
      circlePic: "assets/images/emoji.jpg",
      heading: "HighWay",
      description:
          "The scence are absolutlet File and the things gettiing more hard that is thr final",
      location: "seaView,Heed",
      distance: "1.4KM",
      color: Colors.yellow),
  roadMapList(
      coverPic: "assets/images/indiaHistory.jpg",
      circlePic: "assets/images/emoji.jpg",
      heading: "HighWay",
      description:
          "The scence are absolutlet File and the things gettiing more hard that is thr final",
      location: "seaView,Heed",
      distance: "1.4KM",
      color: Colors.yellow),
  roadMapList(
      coverPic: "assets/images/indiaHistory.jpg",
      circlePic: "assets/images/emoji.jpg",
      heading: "HighWay",
      description:
          "The scence are absolutlet File and the things gettiing more hard that is thr final",
      location: "seaView,Heed",
      distance: "1.4KM",
      color: Colors.yellow),
];
