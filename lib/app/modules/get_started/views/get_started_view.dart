import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wecare_apps/app/constant/color.dart';
import 'package:wecare_apps/app/routes/app_pages.dart';

import '../controllers/get_started_controller.dart';
import 'package:lottie/lottie.dart';

class GetStartedView extends GetView<GetStartedController> {

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidthMax = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.only(top: 15, bottom: 15),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ///Lottie
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  height: 300,
                  width: 300,
                  child: Lottie.asset("assets/lotties/welcome.json"),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Let's you in",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),

              ///btnFacebook
              ElevatedButton.icon(
                onPressed: () {
                  Get.snackbar("Login Facebook Account", "Coming soon");
                },
                icon: CircleAvatar(
                  radius: 16,
                  child: Image.asset("assets/images/facebook.png"),
                ),
                label: Text(
                  "Facebook",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    maximumSize: Size(mediaQueryWidthMax, 80),
                    minimumSize: Size(300, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    side: BorderSide(
                      width: 1.0,
                      color: Colors.grey.withOpacity(0.1),
                      style: BorderStyle.solid,
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),

              ///btnGoogle
              ElevatedButton.icon(
                onPressed: () {
                  Get.snackbar("Login Google", "Coming soon");
                },
                icon: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: Image.asset("assets/images/google.png"),
                ),
                label: Text(
                  "Google",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    maximumSize: Size(mediaQueryWidthMax, 80),
                    minimumSize: Size(300, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    side: BorderSide(
                      width: 1.0,
                      color: Colors.grey.withOpacity(0.1),
                      style: BorderStyle.solid,
                    )),
              ),

              SizedBox(
                height: 20.0,
              ),

              ///btnApple
              ElevatedButton.icon(
                onPressed: () {
                  Get.snackbar("Login Apple id", "Coming soon");
                },
                icon: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: Image.asset("assets/images/apple.png"),
                ),
                label: Text(
                  "Apple",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  maximumSize: Size(mediaQueryWidthMax, 80),
                  minimumSize: Size(300, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  side: BorderSide(
                    width: 1.0,
                    color: Colors.grey.withOpacity(0.1),
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "or",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ///btnSignInWithEmail
              ElevatedButton(
                  onPressed: (){
                    Get.toNamed(Routes.LOGIN);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorGreenDark,
                    maximumSize: Size(mediaQueryWidthMax, 65),
                    minimumSize: Size(300, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                  ),
                  child: Text(
                    "Sign in with password",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),),
              SizedBox(height: 20,),
              ///btnRegister
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.REGISTER);
                },
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Don't have an account?  ",
                        style: TextStyle(
                            color: colorSilver,
                            fontSize: 13,
                            fontWeight: FontWeight.normal)),
                    TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                            color: colorGreenDark,
                            fontSize: 13,
                            fontWeight: FontWeight.bold)),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
