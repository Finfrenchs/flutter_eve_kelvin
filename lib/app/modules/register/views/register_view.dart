import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wecare_apps/app/constant/color.dart';
import 'package:wecare_apps/app/routes/app_pages.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  var _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidthMax = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        alignment: Alignment.center,
        child: Form(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: Image.asset("assets/images/auth.png").image),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              Text(
                "Sign up for free",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 30,
              ),

              ///full name
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Full Name",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: TextFormField(
                      controller: controller.nameC,
                      autofocus: false,
                      autocorrect: false,
                      keyboardType: TextInputType.name,
                      style: const TextStyle(color: Colors.black87),
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: colorGreenDark),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          hintText: 'Full Name',
                          hintStyle: TextStyle(color: Colors.black38)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),

              ///email
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: TextFormField(
                      controller: controller.emailC,
                      autofocus: false,
                      autocorrect: false,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: Colors.black87),
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: colorGreenDark),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.black38)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),

              ///password
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: TextFormField(
                      controller: controller.passwordC,
                      autofocus: false,
                      autocorrect: false,
                      obscureText: !_passwordVisible,
                      keyboardType: TextInputType.visiblePassword,
                      style: const TextStyle(color: Colors.black87),
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: colorGreenDark),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              // setState(() {
                              //   _passwordVisible = !_passwordVisible;
                              // });
                            },
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.black38)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),

              ///btnRegister
              ElevatedButton(
                onPressed: () {
                  controller.register();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorGreenDark,
                  maximumSize: Size(mediaQueryWidthMax * 3, 70),
                  minimumSize: Size(mediaQueryWidthMax, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(
                height: 30.0,
              ),
              Text(
                "or continue with",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ///fb
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.all(16),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.2),
                                width: 1.0)),
                        child: Image.asset("assets/images/facebook.png"),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),

                    ///Google
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.all(16),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.2),
                                width: 1.0)),
                        child: Image.asset("assets/images/google.png"),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),

                    ///apple
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.all(16),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.2),
                                width: 1.0)),
                        child: Image.asset("assets/images/apple.png"),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),

              ///btn Sign in
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.LOGIN);
                },
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(
                            color: colorSilver,
                            fontSize: 13,
                            fontWeight: FontWeight.normal)),
                    TextSpan(
                        text: "Sign In",
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
    ));
  }
}
