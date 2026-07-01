import 'package:flutter/material.dart';
import 'package:portfolio/theme/color_app.dart';
import 'package:portfolio/theme/text_style_app.dart';

class ContainerContactMeInfo extends StatelessWidget {
  const ContainerContactMeInfo({
    super.key,
    required this.text,
    required this.info,
    required this.icon,
  });
  final String text;
  final String info;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: ColorApp.textColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              spacing: 10,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icon,
                    SizedBox(width: 10),
                    Text(text, style: TextStyleApp.bold24(ColorApp.titleColor)),
                  ],
                ),
                SelectableText(
                  info,
                  style: TextStyleApp.bold16(Colors.black),
                  selectionColor: ColorApp.titleColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
