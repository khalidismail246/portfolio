import 'package:flutter/material.dart';
import 'package:portfolio/theme/color_app.dart';
import 'package:portfolio/theme/text_style_app.dart';
import 'package:portfolio/widgets/container_info.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Education", style: TextStyleApp.semiBold25(ColorApp.titleColor)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 2,
            width: MediaQuery.widthOf(context),
            color: ColorApp.titleColor,
          ),
        ),
        SizedBox(height: 20),
        ContainerInfo(
          date: "2022 - 2023",
          info: "Bachelor of Computer Science and Information",
          location: "Mansoura University",
          image: "assets/images/education_image.svg",
        ),
      ],
    );
  }
}
