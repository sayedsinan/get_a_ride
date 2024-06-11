import 'package:flutter/material.dart';
import 'package:get_a_ride/color.dart';
import 'package:get_a_ride/view/componenets/button.dart';

class SelectionPage extends StatelessWidget {
  const SelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeof = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: back,
      body: Column(
        children: [
          SizedBox(
            height: sizeof.size.height * 0.2,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  'asset/Screenshot_2024-06-10_125340-removebg-preview.png')
            ],
          ),
          MyButton(
            name: 'passenger',
            color: customYellow,
            textColor: white,
          ),
          MyButton(name: 'Driver', color: Colors.black, textColor: white)
        ],
      ),
    );
  }
}
