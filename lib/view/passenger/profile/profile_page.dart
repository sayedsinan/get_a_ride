import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_a_ride/color.dart';
import 'package:get_a_ride/view/componenets/button.dart';
import 'package:get_a_ride/view/componenets/my_text_bar.dart';

import '../../../controller/text_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MyTextContoller>();
    final sizeof = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: back,
      appBar: AppBar(
        backgroundColor: back,
        elevation: 0,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: sizeof.height * 0.1,
                ),
                const Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.grey,
                      ),
                      Positioned(
                        top: 90,
                        left: 80,
                        child: Image(
                          image: AssetImage('asset/Camera.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            MyTextField(
                hintText: 'Full Name',
                controller: controller.profileName,
                color: white),
            SizedBox(
              height: sizeof.height * 0.01,
            ),
            MyTextField(
                hintText: 'Mobile Number',
                controller: controller.profileName,
                color: white),
            SizedBox(
              height: sizeof.height * 0.01,
            ),
            MyTextField(
                hintText: 'E-mail',
                controller: controller.profileName,
                color: white),
            SizedBox(
              height: sizeof.height * 0.01,
            ),
            MyTextField(
                hintText: 'Street',
                controller: controller.profileName,
                color: white),
            SizedBox(
              height: sizeof.height * 0.01,
            ),
            MyTextField(
                hintText: 'City',
                controller: controller.profileName,
                color: white),
            SizedBox(
              height: sizeof.height * 0.01,
            ),
            MyTextField(
                hintText: ' District',
                controller: controller.profileName,
                color: white),
            SizedBox(
              height: sizeof.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                    name: 'Cancel',
                    color: back,
                    textColor: white,
                    fontsize: 20,
                    height: sizeof.height * 0.09,
                    width: sizeof.width * 0.5),
                MyButton(
                    name: 'Save',
                     color: customYellow,
                    textColor: white,
                    fontsize: 20,
                    height: sizeof.height * 0.09,
                    width: sizeof.width * 0.5)
              ],
            )
          ],
        ),
      ),
    );
  }
}
