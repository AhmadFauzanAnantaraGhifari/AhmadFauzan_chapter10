import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBPsWG60HS6IWUfUg992Iik3c6n49ib-_Y",
          appId: "1:432193442550:android:a91fe603326dc4f54d52d7",
          messagingSenderId: "32193442550",
          projectId: "mini-project-4c416",
          storageBucket: "gs://mini-project-4c416.appspot.com"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
