import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/theme/color_app.dart';
import 'package:portfolio/theme/text_style_app.dart';
import 'package:portfolio/widgets/container_contact_me_info.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Contact Me", style: TextStyleApp.semiBold25(ColorApp.titleColor)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 2,
            width: MediaQuery.widthOf(context),
            color: ColorApp.titleColor,
          ),
        ),
        SizedBox(height: 20),
        ContainerContactMeInfo(
          text: "Email",
          info: 'khalidismail1510@gmail.com',
          icon: Icon(
            Icons.email_outlined,
            color: ColorApp.titleColor,
            size: 30,
          ),
        ),
        SizedBox(height: 10),
        ContainerContactMeInfo(
          text: "Phone & WhatsApp",
          info: '+20 10 1510 1383',
          icon: Icon(Icons.phone, color: ColorApp.titleColor, size: 30),
        ),
        SizedBox(height: 10),
        ContainerContactMeInfo(
          text: "Github",
          info: 'https://github.com/khalidismail246/apps',
          icon: FaIcon(
            FontAwesomeIcons.github,
            color: ColorApp.titleColor,
            size: 30,
          ),
        ),
        SizedBox(height: 10),
        ContainerContactMeInfo(
          text: "Linkedin",
          info: 'https://www.linkedin.com/in/khalid-ismail-029650311',
          icon: FaIcon(
            FontAwesomeIcons.linkedin,
            color: ColorApp.titleColor,
            size: 30,
          ),
        ),
      ],
    );
  }
}
