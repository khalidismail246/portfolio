import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/models/skill_model.dart';
import 'package:portfolio/theme/color_app.dart';
import 'package:portfolio/theme/text_style_app.dart';
import 'package:portfolio/widgets/container_point.dart';

class ContainerSkills extends StatelessWidget {
  const ContainerSkills({super.key, required this.skillModel});
  final SkillModel skillModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        spacing: 20,
        children: [
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(skillModel.imageSkills, width: 24),
              Text(
                skillModel.titleSkill,
                style: TextStyleApp.bold24(ColorApp.skillsColor),
              ),
            ],
          ),
          ...skillModel.points.map((point) => ContainerPoint(points: point)),
        ],
      ),
    );
  }
}
