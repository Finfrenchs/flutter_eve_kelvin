import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constant/color.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  var _passwordVisible = false;
  bool _isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidthMax = MediaQuery
        .of(context)
        .size
        .width;
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
                      image: Image
                          .asset("assets/images/auth2.png")
                          .image),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "Sign in for free",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 30,
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
                      autofocus: false,
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
                      autofocus: false,
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
              SizedBox(height: 20,),
              Container(
                height: 20,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Theme(
                      data: ThemeData(unselectedWidgetColor: colorGreenDark),
                      child: Checkbox(
                        value: _isRememberMe,
                        checkColor: Colors.white,
                        activeColor: colorGreenDark,
                        onChanged: (value) {
                          // setState(() {
                          //   _isRememberMe = value!;
                          // });
                        },
                      ),
                    ),
                    Text(
                      'Remember me',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),),
                SizedBox(
                  height: 35,
                ),

                ///btnLogin
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorGreenDark,
                    maximumSize: Size(mediaQueryWidthMax * 3, 70),
                    minimumSize: Size(mediaQueryWidthMax, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                  ),
                  child: Text(
                    "Sign In",
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
                  onTap: () {},
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Don't have an account? ",
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
        ));
  }
}
