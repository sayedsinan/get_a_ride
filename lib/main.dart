import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_a_ride/view/splash_screen.dart';

import 'controller/text_controller.dart';

void main() {
  runApp(const MyApp());
  Get.put(MyTextContoller());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
