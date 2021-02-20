import 'package:flutter/material.dart';
import 'package:elearning/Screens/Login/login_screen.dart';
import 'package:elearning/Screens/Signup/components/background.dart';
import 'package:elearning/Screens/Signup/components/or_divider.dart';
import 'package:elearning/Screens/Signup/components/social_icon.dart';
import 'package:elearning/components/already_have_an_account_acheck.dart';
import 'package:elearning/components/rounded_button.dart';
import 'package:elearning/components/rounded_input_field.dart';
import 'package:elearning/components/rounded_password_field.dart';
import 'package:get/get.dart';
import 'package:elearning/Screens/Login/components/quizScreen.dart';
import 'package:elearning/controller/user_controller.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    UserController userController = Get.put(UserController());
    Size size = MediaQuery.of(context).size;
    return GetBuilder<UserController>(
      builder: (_) {
        return Background(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "SIGNUP",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.03),
                // SvgPicture.asset(
                //   "assets/icons/signup.svg",
                //   height: size.height * 0.35,
                // ),
                RoundedInputField(
                  controller: _.firstName,
                  hintText: "First Name",
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  controller: _.lastName,
                  hintText: "Last Name",
                  onChanged: (value) {},
                ),
                RoundedInputFieldEmail(
                  controller: _.emailTxt,
                  hintText: "Your Email",
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  controller: _.passwordTxt,
                  hintText: "Password",
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  hintText: "Confirm Password",
                  onChanged: (value) {},
                ),

                isLoading
                    ? RoundedButton(
                        text: "SIGNUP",
                        press: () {
                          setState(() {
                            isLoading = false;
                          });
                          _.signUp().then(() {
                            Get.to(QuizScreen());
                          });
                        },
                      )
                    : CircularProgressIndicator(),
                SizedBox(height: size.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                ),
                OrDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SocalIcon(
                      iconSrc: "assets/icons/facebook.svg",
                      press: () {},
                    ),
                    SocalIcon(
                      iconSrc: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                    SocalIcon(
                      iconSrc: "assets/icons/google-plus.svg",
                      press: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
