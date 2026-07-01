import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/models/list_skills.dart';
import 'package:portfolio/theme/color_app.dart';
import 'package:portfolio/theme/text_style_app.dart';
import 'package:portfolio/widgets/container_point_soft_skill.dart';

class ContainerSoftSkills extends StatelessWidget {
  const ContainerSoftSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/soft_skills.svg", width: 24),
            Text(
              "Soft Skills",
              style: TextStyleApp.bold24(ColorApp.skillsColor),
            ),
          ],
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          direction: Axis.horizontal,
          children: ListSkills.softSkills
              .map(
                (skill) =>
                    IntrinsicWidth(child: ContainerPointSoftSkill(text: skill)),
              )
              .toList(),
        ),
      ],
    );
  }
}
