import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizController extends GetxController {
  //function bnao na yar check color ka
  bool isComplete = false;
  bool isChecked = false;
  bool isCorrect = false;
  bool isWrong = false;
  String btnLabel = 'Chose Letter';
  Color btnColor = Colors.grey;
  Color topCntainer = Colors.grey;
  checkAnswer() {
    isChecked = true;
    if (inputList.join('') == animalLetterList.join('')) {
      topCntainer = Colors.green;
      btnLabel = 'Well done, Next';
      btnColor = Colors.green;
      isCorrect = true;
    } else {
      topCntainer = Colors.red;
      isWrong = true;

      btnLabel = 'Try again';
    }
    update();
  }

  repeateQuestion() {
    isCorrect = false;

    dataAddingFun();
    isComplete = false;
    isChecked = false;
    btnLabel = 'Chose Letter';
    btnColor = Colors.grey;
  }

  nextQuestion() {
    isCorrect = false;
    currentIndex++;
    dataAddingFun();
    isComplete = false;
    isChecked = false;
    btnLabel = 'Chose Letter';
    btnColor = Colors.grey;
  }

  upperColor() {
    bool found = false;
    if (inputList == animalLetterList) {
      found = true;
    }
  }

  checkPress(String txt) {
    bool found = false;
    for (var i = 0; i < inputList.length; i++) {
      if (inputList[i] == txt) {
        found = true;
      }
    }
    if (found) {
      return false;
    } else {
      return true;
    }
  }

  Color checkColor(String txt) {
    bool found = false;
    for (var i = 0; i < inputList.length; i++) {
      if (inputList[i] == txt) {
        found = true;
      }
    }
    if (found) {
      return Colors.yellow;
    } else {
      return Colors.grey;
    }
  }

  int currentIndex = 0; //Current ANimal index On Screen
  List animals = [
    'cat',
    'dog',
    'monkey',
    'Turtle',
    'corocdile',
  ]; //ANimals List
  List animalLetterList = []; // List of letters of current animal
  List randomAnimalLetter = []; //Random list of animalLetterList
  List randomNoGrenList = []; //List of letter number generated
  List inputList = []; // user input to input to fill the blanks
  String currentAnimal = ''; //string of current animal

  addIntoInput(String letter) {
//get current index
    int currentPosition = 0;
    for (var i = inputList.length - 1; i >= 0; i--) {
      if (inputList[i] == "") {
        currentPosition = i;
      }
    }
    inputList[currentPosition] = letter;
    if (inputList[inputList.length - 1] != "") {
      // isComplete = true;
      btnLabel = 'Check';
      btnColor = Colors.blue;
      update();
      //?
      // currentIndex++;
      // dataAddingFun();
    }
    update();
  }

  selectCurrentAniaml(int index) {
    currentAnimal = animals[index];
  }

  changeCurrentAnimalIntoLetter() {
    animalLetterList = currentAnimal.split('');
  }

//1

  dataAddingFun() {
    inputList = []; // to erase the last list of random animal letter
    animalLetterList = [];
    randomAnimalLetter = [];
    randomNoGrenList = [];
    currentAnimal = '';
    selectCurrentAniaml(currentIndex);
    changeCurrentAnimalIntoLetter();
    for (var i = 0; i < animalLetterList.length; i++) {
      // to ya loop q lgae h ?
      genRandomNo();
    }
  }

  genRandomNo() {
    int number = animalLetterList.length;
    int ran = Random().nextInt(number);
    chekRandomNo(ran);
  }

  chekRandomNo(int number) {
    bool found = false;
    for (var i = 0; i < randomAnimalLetter.length; i++) {
      if (randomNoGrenList[i] == number) {
        found = true;
      }
    }
    if (found == false) {
      addIntoRandomAnimalList(number);
    } else {
      genRandomNo();
    }
  }

  addIntoRandomAnimalList(int number) {
    randomNoGrenList.add(number);
    inputList.add('');
    randomAnimalLetter.add(animalLetterList[number]);
    update();
    print(randomAnimalLetter);
  }
}
