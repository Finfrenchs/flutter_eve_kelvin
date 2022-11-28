import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../routes/app_pages.dart';

class RegisterController extends GetxController {
  TextEditingController nameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void register() async {
    if (nameC.text.isNotEmpty &&
        emailC.text.isNotEmpty &&
        passwordC.text.isNotEmpty) {
      try {
        final UserCredential userCredential =
            await auth.createUserWithEmailAndPassword(
          email: emailC.text,
          password: passwordC.text,
        );

        if(userCredential.user != null) {
          String uid = userCredential.user!.uid;

          await firestore.collection("users").doc(uid).set({
            "name": nameC.text,
            "email": emailC.text,
            "password": passwordC.text,
            "uid": uid,
            "createdAt": DateTime.now().toIso8601String(),
          });

          // final prefs = await SharedPreferences.getInstance();
          // prefs.setString("uid", uid);

          //send verify email
          await userCredential.user!.sendEmailVerification();
        }

        print(userCredential);
        Get.offAllNamed(Routes.LOGIN);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          Get.snackbar(
              "There is an error", "Password too short");
        } else if (e.code == 'email-already-in-use') {
          Get.snackbar(
              "There is an error", "Email already exists");
        }
      } catch (e) {
        print(e);
        Get.snackbar(
            "There is an error", "Sign Up Failed");
      }
    } else {
      Get.snackbar(
          "SignUp Failed", "Full Name, Email, and Password must be filled");
    }
  }
}
