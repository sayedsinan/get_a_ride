import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String name;
  final Color color;
  final Color textColor;
  final VoidCallback? onclick;
  final double fontsize;
  const MyButton({
    super.key,
    required this.name,
    required this.color,
    required this.textColor,
     this.onclick, required this.fontsize,
  });

  @override
  Widget build(BuildContext context) {
    final sizeof = MediaQuery.of(context);
    return SizedBox(
      width: sizeof.size.width * 0.9,
      height: sizeof.size.height * 0.08, // Set a fixed width for the button
      child: ElevatedButton(
        onPressed: onclick,
        style: ElevatedButton.styleFrom(
          backgroundColor: color, // Use the color for the button background
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              fontSize: fontsize,
              color: textColor, // Use a contrasting color for text
            ),
          ),
        ),
      ),
    );
  }
}
