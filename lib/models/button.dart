import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final Color textColor; // Add this line
  Function()? onPressed;
  final double widthButton;
  final double heightButton;


  Button(
      {required this.buttonColor,
      required this.buttonText,
      this.textColor = Colors.black, // Default text color is black
      this.onPressed,
      this.widthButton=180,
      this.heightButton=60
      });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: widthButton,
      height: heightButton,
      onPressed: onPressed,
      color: buttonColor,
      textColor: textColor, // Set text color
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
