import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get_a_ride/color.dart';
import 'package:get_a_ride/view/common/selection.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.off(
        SelectionPage(),
        transition: Transition.fadeIn, // Use a fade-in transition
        duration: Duration(milliseconds: 500),
      );
    });
  }

  Widget build(BuildContext context) {
    var sizeof = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: customYellow,
      body: Column(
        children: [
          SizedBox(
            height: sizeof.size.height * 0.3,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset('asset/logo.png')],
          )
        ],
      ),
    );
  }
}
