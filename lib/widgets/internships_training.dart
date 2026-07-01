import 'package:flutter/material.dart';
import 'package:portfolio/theme/color_app.dart';
import 'package:portfolio/theme/text_style_app.dart';
import 'package:portfolio/widgets/container_info.dart';

class InternshipsTraining extends StatelessWidget {
  const InternshipsTraining({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Internships Training",
          style: TextStyleApp.semiBold25(ColorApp.titleColor),
        ),
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
          date: "Aug 2025 – Jan 2026",
          info: "Mobile Application Development with Flutter – Diploma",
          location: "Tharwat Academy",
          image: "assets/images/internship_image.svg",
        ),
        SizedBox(height: 20),
        ContainerInfo(
          date: "Aug 2021 – Oct 2021",
          info: "Mobile Application Development with Flutter",
          location: "Consulting of Computers and Information Center ( CCIC )",
          image: "assets/images/internship_image.svg",
        ),
      ],
    );
  }
}
