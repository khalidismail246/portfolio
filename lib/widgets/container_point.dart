import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/models/skill_model.dart';
import 'package:portfolio/theme/color_app.dart';
import 'package:portfolio/theme/text_style_app.dart';

class ContainerPoint extends StatelessWidget {
  const ContainerPoint({super.key, required this.points});
  final Points points;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorApp.containerColor.withValues(alpha: .8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(points.imagepoint),
            Text(points.point, style: TextStyleApp.light20(ColorApp.textColor)),
          ],
        ),
      ),
    );
  }
}
