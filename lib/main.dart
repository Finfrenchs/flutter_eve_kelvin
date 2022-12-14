import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wecare_apps/app/modules/splashscreen/views/splashscreen_view.dart';

import 'app/constant/color.dart';
import 'app/routes/app_pages.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
            home: Center(
              child: CircularProgressIndicator(),
            )
          );
        }
        print(snapshot.data);
        return GetMaterialApp(
          title: "Application",
          initialRoute: snapshot.data != null ? Routes.DASHBOARD : Routes.SPLASHSCREEN,
          getPages: AppPages.routes,
          debugShowCheckedModeBanner: false,
        );
      }
    ),
  );
}
