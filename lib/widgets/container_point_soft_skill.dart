import 'package:flutter/material.dart';
import 'package:portfolio/theme/color_app.dart';
import 'package:portfolio/theme/text_style_app.dart';

class ContainerPointSoftSkill extends StatelessWidget {
  const ContainerPointSoftSkill({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      decoration: BoxDecoration(
        color: ColorApp.containerColor.withValues(alpha: .8),
        borderRadius: BorderRadius.circular(30),
        border: BoxBorder.all(color: Colors.blueGrey, width: 2),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text, style: TextStyleApp.light20(ColorApp.textColor)),
        ),
      ),
    );
  }
}
