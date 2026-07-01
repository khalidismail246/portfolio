import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/theme/color_app.dart';
import 'package:portfolio/theme/text_style_app.dart';

class ContainerInfo extends StatelessWidget {
  const ContainerInfo({
    super.key,
    required this.date,
    required this.info,
    required this.location,
    required this.image,
  });
  final String date;
  final String info;
  final String location;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ColorApp.textColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(date, style: TextStyleApp.normal14(ColorApp.titleColor)),
                const SizedBox(height: 8),
                Text(info, style: TextStyleApp.bold24(ColorApp.titleColor)),
                const SizedBox(height: 6),
                Text(
                  location,
                  style: TextStyleApp.normal14(
                    ColorApp.titleColor.withValues(alpha: .7),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          // Icon
          SvgPicture.asset(image, width: 40),
        ],
      ),
    );
  }
}
