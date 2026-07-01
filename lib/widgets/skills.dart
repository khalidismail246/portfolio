import 'package:flutter/material.dart';
import 'package:portfolio/models/list_skills.dart';
import 'package:portfolio/theme/color_app.dart';
import 'package:portfolio/theme/text_style_app.dart';
import 'package:portfolio/widgets/container_skills.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Skills", style: TextStyleApp.semiBold25(ColorApp.titleColor)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 2,
            width: MediaQuery.widthOf(context),
            color: ColorApp.titleColor,
          ),
        ),
        const SizedBox(height: 20),
        ...ListSkills.skills.map((skill) => ContainerSkills(skillModel: skill)),
      ],
    );
  }
}
