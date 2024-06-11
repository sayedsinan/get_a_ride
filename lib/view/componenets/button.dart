import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String name;
  final Color color;
  final Color textColor;
  const MyButton({
    Key? key,
    required this.name,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100, // Set a fixed width for the button
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color, // Use the color for the button background
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              fontSize: 20,
              color: textColor, // Use a contrasting color for text
            ),
          ),
        ),
      ),
    );
  }
}
