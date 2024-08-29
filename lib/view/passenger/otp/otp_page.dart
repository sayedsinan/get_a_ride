import 'package:flutter/material.dart';
import 'package:get_a_ride/color.dart';
import 'package:get_a_ride/view/componenets/button.dart';
import 'package:get_a_ride/view/passenger/otp/otp_boxes.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final sizeof = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: back,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Phone Verification",
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: white),
            ),
            SizedBox(height: sizeof.height * 0.02),
            const Text(
              "Enter your OTP code.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                otpTextField(context, first: true, last: false),
                otpTextField(context, first: false, last: false),
                otpTextField(context, first: false, last: false),
                otpTextField(context, first: false, last: true),
              ],
            ),
            SizedBox(height: sizeof.height * 0.02),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't recive Code ? ",
                  style: TextStyle(color: white),
                ),
                Text(
                  'Resend  again',
                  style: TextStyle(color: customYellow),
                )
              ],
            ),
            SizedBox(
              height: sizeof.height * 0.05,
            ),
             MyButton(
            name: 'Register ',
            color: customYellow,
            textColor: white,
            onclick: () {},
            fontsize: 15,
            height: sizeof.height * 0.06,
            width: sizeof.width * 0.9,
          ),
          ],
        ),
      ),
    );
  }
}
