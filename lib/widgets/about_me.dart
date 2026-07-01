import 'package:flutter/material.dart';
import 'package:portfolio/theme/color_app.dart';
import 'package:portfolio/theme/text_style_app.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: MediaQuery.of(context).size.width * .16,
          backgroundImage: AssetImage("assets/images/me.jpg"),
        ),
        Text(
          "KHALID ISMAIL",
          style: TextStyleApp.regular35(ColorApp.textColor),
        ),
        Text(
          "Junior Flutter Developer",
          style: TextStyleApp.light24(ColorApp.textColor),
        ),
        const SizedBox(height: 20),
        Text("About Me", style: TextStyleApp.semiBold25(ColorApp.titleColor)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 2,
            width: MediaQuery.widthOf(context),
            color: const Color.fromARGB(255, 181, 213, 249),
          ),
        ),
        Text(
          "   Junior Flutter Developer passionate about building cross-platform mobile applications using Flutter and Dart. I have experience developing Android and iOS apps, integrating REST APIs, working with Firebase, and managing state using Bloc. I enjoy writing clean, scalable code and continuously learning new technologies, including AI integration.",
          style: TextStyleApp.light18(ColorApp.textColor),
        ),
      ],
    );
  }
}
