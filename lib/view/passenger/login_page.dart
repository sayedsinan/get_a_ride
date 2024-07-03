import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_a_ride/color.dart';
import 'package:get_a_ride/view/componenets/button.dart';
import 'package:get_a_ride/view/componenets/my_text_bar.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
        backgroundColor: back,
        body: Column(children: [
          SizedBox(
            height: 100,
          ),
          MyTextField(
            hintText: 'hintText',
            controller: controller,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          MyTextField(
            hintText: 'hintText',
            controller: controller,
            color: Colors.white,
          ),
          Row(
            children: [Text('Forgot password?')],
          ),
          MyButton(
              name: 'Login',
              color: Colors.white,
              textColor: white,
              fontsize: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(
                color: Colors.black,
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('or'),
              ),
              Divider(
                color: Colors.black,
                height: 2,
              ),
            ],
          ),
        ]));
  }
}
