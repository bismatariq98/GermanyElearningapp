import 'package:elearning/main.dart';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:get/get.dart';

class UserController extends GetxController {
  bool isPicUpload;
  String usrerName = '';
  String fullName = '';
  String email = '';
  String refId = '';
  // File profilePhoto;
  String gender = '';
  String dob = '';
  final formKeySignUp = GlobalKey<FormState>();
  final formKeyLogin = GlobalKey<FormState>();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController userNameTxt = TextEditingController();
  TextEditingController fullNameTxt = TextEditingController();
  TextEditingController emailTxt = TextEditingController();
  TextEditingController passwordTxt = TextEditingController();
  TextEditingController confirmpasswordTxt = TextEditingController();
  TextEditingController refIdTxt = TextEditingController();

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  signIn() async {
    User user;
    UserCredential userCredential;
    try {
      userCredential = await firebaseAuth.signInWithEmailAndPassword(
          email: emailTxt.text, password: passwordTxt.text);
      user = userCredential.user;
      return user;
    } catch (e) {
      print(e.toString());
    }
    return user;
  }

  Future<User> firebaseauth(String email, String password) async {
    User user;
    UserCredential userCredential;

    try {
      userCredential = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
      return user;
    } catch (e) {
      print(e.toString());
    }
    return user;
  }

  addUser(User currentUser) async {
    await firebaseFirestore.collection('Users').doc(currentUser.uid).set({
      "FirstName": userNameTxt.text,
      "LastName": lastName.text,
      "UserId": currentUser.uid,
      "Email": emailTxt.text,
    });
  }

  signUp() async {
    await firebaseAuth
        .createUserWithEmailAndPassword(
            email: emailTxt.text, password: passwordTxt.text)
        .then((user) {
      addUser(user.user);
    });
  }
}
