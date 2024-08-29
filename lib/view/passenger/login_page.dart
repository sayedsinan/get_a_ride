import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get_a_ride/color.dart';
import 'package:get_a_ride/view/componenets/button.dart';
import 'package:get_a_ride/view/componenets/my_text_bar.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sizeof=MediaQuery.of(context).size;
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: back,
      body: Column(
        children: [
          const SizedBox(
            height: 200,
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
           MyButton(
            name: 'passenger',
            color: customYellow,
            textColor: white,
            onclick: () {},
            fontsize: 15, height: sizeof.height*0.06, width: sizeof.width*0.9,)
          ,const  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(
                color: Colors.white,
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'or',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.white,
                height: 2,
              ),
            ],
          ),
          Row(children: [
            Image.asset('asset/Screenshot_2024-07-09_125819-removebg-preview.png'),
            Image.asset('asset/Screenshot_2024-07-09_125823-removebg-preview.png')
          ],),
          Row(children: [
            Text("Don't have an account ? ",style: TextStyle(color: white),),
            Text('Sign Up',style: TextStyle(color: customYellow))
          ],)
        ],
      ),
    );
  }
}
