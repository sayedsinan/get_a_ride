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
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: back,
      body: Column(
        children: [
          const SizedBox(
            height: 200,
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
          const MyButton(
              name: 'Login',
              color:Color(0xFFFAD303),
              textColor: white,
              fontsize: 15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(
                color: Colors.black,
                height: 2,
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
        ],
      ),
    );
  }
}
