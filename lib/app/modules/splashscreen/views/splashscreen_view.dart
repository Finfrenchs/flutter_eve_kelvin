import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wecare_apps/app/constant/color.dart';
import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
            CircularProgressIndicator(
              backgroundColor: colorSilver,
              color: colorGreenDark,
              strokeWidth: 8,
            )
          ],
        ),
      ),
    );
  }
}
