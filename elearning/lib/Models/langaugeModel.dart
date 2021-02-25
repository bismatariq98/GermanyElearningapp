import 'package:elearning/main.dart';
import 'package:flutter/material.dart';

class Langauge {
  String image;
  String name;
  String langaugeCode;
  Langauge({this.image, this.langaugeCode, this.name});
}

class LangaugeLearn {
  String image;
  String name;
  LangaugeLearn({this.image, this.name});
}

List<LangaugeLearn> languagelearn = [
  LangaugeLearn(
    image: "assets/images/british.png",
    name: "German",
  ),
  LangaugeLearn(
    image: "assets/images/spain.png",
    name: "French",
  ),
  LangaugeLearn(
    image: "assets/images/chinese.png",
    name: "Simplified Chinese",
  ),
  LangaugeLearn(
    image: "assets/images/chinese.png",
    name: "Traditional Chinese",
  ),
  LangaugeLearn(
    image: "assets/images/Korean.png",
    name: "Korean",
  ),
  LangaugeLearn(
    image: "assets/images/pakistan.png",
    name: "Urdu",
  ),
  LangaugeLearn(
    image: "assets/images/india.png",
    name: "Indian",
  ),
  LangaugeLearn(
    image: "assets/images/Thailand.png",
    name: "Thai",
  ),
  LangaugeLearn(
    image: "assets/images/spain.png",
    name: "Spanish",
  ),
  LangaugeLearn(
    image: "assets/images/italy.png",
    name: "Italian",
  ),
  LangaugeLearn(
    image: "assets/images/japan.png",
    name: "Japenese",
  ),
  LangaugeLearn(
    image: "assets/images/malaysian.jpg",
    name: "Malay",
  ),
  LangaugeLearn(
    image: "assets/images/russia.jpg",
    name: "Russian",
  ),
];

List<Langauge> language = [
  Langauge(
      image: "assets/images/germany.png", name: "German", langaugeCode: "gr"),
  Langauge(
      image: "assets/images/french.png", name: "French", langaugeCode: "fr"),
  Langauge(
      image: "assets/images/chinese.png",
      name: "Simplified Chinese",
      langaugeCode: "chs"),
  Langauge(
      image: "assets/images/chinese.png",
      name: "Traditional Chinese",
      langaugeCode: "cht"),
  Langauge(
      image: "assets/images/Korean.png", name: "Korean", langaugeCode: "kr"),
  Langauge(
      image: "assets/images/pakistan.png", name: "Urdu", langaugeCode: "ur"),
  Langauge(
      image: "assets/images/india.png", name: "Indian", langaugeCode: "hi"),
  Langauge(
      image: "assets/images/Thailand.png", name: "Thai", langaugeCode: "th"),
  Langauge(
      image: "assets/images/spain.png", name: "Spanish", langaugeCode: "sp"),
  Langauge(
      image: "assets/images/italy.png", name: "Italian", langaugeCode: "it"),
  Langauge(
      image: "assets/images/japan.png", name: "Japenese", langaugeCode: "jp"),
  Langauge(
      image: "assets/images/malaysian.jpg", name: "Malay", langaugeCode: "ml"),
  Langauge(
      image: "assets/images/russia.jpg", name: "Russian", langaugeCode: "rs"),
];
