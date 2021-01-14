import 'package:flutter/material.dart';
import 'package:elearning/Screens/Login/components/background.dart';
import 'package:elearning/Screens/Signup/signup_screen.dart';
import 'package:elearning/components/already_have_an_account_acheck.dart';

import 'package:elearning/components/rounded_input_field.dart';
import 'package:elearning/components/rounded_password_field.dart';

import 'package:lottie/lottie.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text(
              //   "ELearning",
              //   style: TextStyle(fontSize: 25),
              // ),
              // SizedBox(height: size.height * 0.03),
              Lottie.asset(
                // "assets/icons/login.svg",
                "assets/learning.json",
                height: size.height * 0.45,
              ),
              // SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text("Sign In",
                          style:
                              TextStyle(fontSize: 30, color: Colors.purple))),
                  Padding(
                    padding: EdgeInsets.only(left: 200),
                    child: CircleAvatar(
                      backgroundColor: Colors.purple,
                      child: IconButton(
                          icon: Icon(Icons.forward),
                          onPressed: () {
                            return null;
                          }),
                    ),
                  ),
                ],
              ),
              // RoundedButton(
              //   text: "LOGIN",
              //   press: () {},
              // ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
