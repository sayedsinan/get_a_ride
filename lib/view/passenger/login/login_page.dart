import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_a_ride/color.dart';
import 'package:get_a_ride/view/componenets/button.dart';
import 'package:get_a_ride/view/componenets/my_text_bar.dart';

import '../signUp/sign_up.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sizeof = MediaQuery.of(context).size;
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: back,
        leading: const Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              color: white,
            ),
            Text(
              'Back',
              style: TextStyle(color: white),
            )
          ],
        ),
      ),
      backgroundColor: back,
      body: Column(
        children: [
          SizedBox(
            height: sizeof.height * 0.15,
          ),
          MyTextField(
            hintText: 'Please enter your email',
            controller: controller,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          MyTextField(
            hintText: 'Please Enter your password',
            controller: controller,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Forgot password?',
                  style: TextStyle(color: Colors.red),
                ),
              )
            ],
          ),
          SizedBox(
            height: sizeof.height * 0.05,
          ),
          MyButton(
            name: 'Sign In ',
            color: customYellow,
            textColor: white,
            onclick: () {},
            fontsize: 15,
            height: sizeof.height * 0.06,
            width: sizeof.width * 0.9,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Divider(
                color: Colors.white,
                height: 5,
              ),
              SizedBox(
                height: sizeof.height * 0.05,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'or',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const Divider(
                color: Colors.white,
                height: 2,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: sizeof.width * 0.29,
              ),
              SizedBox(
                  height: sizeof.height * 0.09,
                  width: sizeof.height * 0.09,
                  child: Image.asset(
                    'asset/Screenshot_2024-07-09_125819-removebg-preview.png',
                    fit: BoxFit.contain,
                  )),
              SizedBox(
                width: sizeof.width * 0.02,
              ),
              SizedBox(
                height: sizeof.height * 0.09,
                width: sizeof.height * 0.09,
                child: Image.asset(
                  'asset/Screenshot_2024-07-09_125823-removebg-preview.png',
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: sizeof.width * 0.23,
              ),
              const Text(
                "Don't have an account ? ",
                style: TextStyle(color: white),
              ),
              GestureDetector(
                onTap: ()=>   Get.to(SignUp()),
                  child: const Text('Sign Up',
                      style: TextStyle(color: customYellow)))
            ],
          )
        ],
      ),
    );
  }
}
