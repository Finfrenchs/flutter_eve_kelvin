import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wecare_apps/app/constant/color.dart';
import 'package:wecare_apps/app/routes/app_pages.dart';
import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends StatefulWidget {

  @override
  State<SplashscreenView> createState() => _SplashscreenViewState();
}

class _SplashscreenViewState extends State<SplashscreenView> {

  bool _isLoading = false;

  @override
  void initState() {
    checkUser();
    super.initState();
  }

  checkUser() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _isLoading = true; // show loading screen
    });
    await Future.delayed(Duration(seconds: 5));
    Get.offAllNamed(Routes.GET_STARTED);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 500,
                  height: 500,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: Image.asset("assets/images/wecare-logo.png").image),
                  ),
                ),
                SizedBox(height: 15,),
                _isLoading ? CircularProgressIndicator(
                  backgroundColor: colorSilver,
                  color: colorGreenDark,
                  strokeWidth: 8,
                ) : SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
