import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wecare_apps/app/constant/color.dart';
import 'package:wecare_apps/app/routes/app_pages.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  void login() async {
    if (emailC.text.isNotEmpty && passwordC.text.isNotEmpty) {
      try {
        final UserCredential userCredential =
            await auth.signInWithEmailAndPassword(
          email: emailC.text,
          password: passwordC.text,
        );

        print(userCredential);

        // if (userCredential.user != null) {
        //   String uid = userCredential.user!.uid;
        //
        //   final prefs = await SharedPreferences.getInstance();
        //   prefs.setString("uid", uid);
        // }

        //cek verifikasi email
        if (userCredential.user != null) {
          if (userCredential.user!.emailVerified == true) {
            Get.offAllNamed(Routes.DASHBOARD);
          } else {
            Get.defaultDialog(
              title: "Verification not found",
              middleText: "Email not verify. Verification your email!",
              actions: [
                OutlinedButton(
                  onPressed: () => Get.back(),
                  child: Text(
                    "CANCEL",
                    style: TextStyle(
                      color: colorGreenSoft,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      await userCredential.user!.sendEmailVerification();
                      Get.back();
                      Get.snackbar("Success", "Link sent successfully");
                    } catch (e) {
                      Get.snackbar("There is an error", "Can't send email verification.");
                    }
                  },
                  child: Text(
                    "RESEND VERIFY",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorGreenLight,
                  ),
                )
              ],
            );
          }
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          Get.snackbar(
              "There is an error", "No user found or email not registered");
        } else if (e.code == 'wrong-password') {
          Get.snackbar("There is an error", "Password is wrong");
        }
      } catch (e) {
        Get.snackbar("There is an error", "Sign In Failed");
      }
    } else {
      Get.snackbar(
          "SignIn Failed", "Full Name, Email, and Password must be filled");
    }
  }
}
