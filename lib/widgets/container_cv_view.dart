import 'package:flutter/material.dart';
import 'package:portfolio/services/url_launcher_services.dart';
import 'package:portfolio/theme/color_app.dart';
import 'package:portfolio/theme/text_style_app.dart';

class ContainerCvView extends StatelessWidget {
  const ContainerCvView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: GestureDetector(
        onTap: () {
          UrlLauncherServices.openUrl(
            url: "https://flowcv.com/resume/umpensvms15m",
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: ColorApp.textColor,
            border: Border.all(color: ColorApp.titleColor, width: 1.0),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Center(
            child: Text("View CV", style: TextStyleApp.bold16(Colors.black)),
          ),
        ),
      ),
    );
  }
}
