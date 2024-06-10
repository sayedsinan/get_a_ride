import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String name;
  final Color color;
  final Color textcolor;
  const MyButton({
    super.key,
    required this.name,
    required this.color,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    var sizeof = MediaQuery.of(context);
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Use the color for the button background
        padding: EdgeInsets.symmetric(
            horizontal: sizeof.size.width * 0.3, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        name,
        style: TextStyle(
          fontSize: 20,
          color: textcolor, // Use a contrasting color for text
        ),
      ),
    );
  }
}
