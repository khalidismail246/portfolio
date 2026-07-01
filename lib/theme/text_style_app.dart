import 'package:flutter/material.dart';

abstract class TextStyleApp {
  static TextStyle regular35(Color color) {
    return TextStyle(
      fontFamily: "PlayfairDisplay",
      color: color,
      fontSize: 35,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle light24(Color color) {
    return TextStyle(
      fontFamily: "PlayfairDisplay",
      color: color,
      fontSize: 24,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle light18(Color color) {
    return TextStyle(
      fontFamily: "PlayfairDisplay",
      color: color,
      fontSize: 18,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle light20(Color color) {
    return TextStyle(
      fontFamily: "PlayfairDisplay",
      color: color,
      fontSize: 20,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle semiBold25(Color color) {
    return TextStyle(fontFamily: "PlayfairDisplay", color: color, fontSize: 25);
  }

  static TextStyle bold24(Color color) {
    return TextStyle(
      fontFamily: "PlayfairDisplay",
      color: color,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle light16(Color color) {
    return TextStyle(color: color, fontSize: 16, height: 1.5);
  }

  static TextStyle normal14(Color color) {
    return TextStyle(color: color, fontSize: 14);
  }

  static TextStyle bold16(Color color) {
    return TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.bold);
  }

  static TextStyle bold28(Color color) {
    return TextStyle(color: color, fontSize: 28, fontWeight: FontWeight.bold);
  }
}
