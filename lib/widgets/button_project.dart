import 'package:flutter/material.dart';

class ButtonProject extends StatelessWidget {
  const ButtonProject({
    super.key,
    required this.text,
    required this.onPressed,
    this.colorButton,
    this.colorBackGround,
  });
  final String text;
  final VoidCallback onPressed;
  final Color? colorButton;
  final Color? colorBackGround;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: colorButton ?? colorBackGround!),
          backgroundColor: colorBackGround,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
