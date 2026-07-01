import 'package:flutter/material.dart';
import 'package:portfolio/const/const_key_project.dart';
import 'package:portfolio/widgets/about_me.dart';
import 'package:portfolio/widgets/contact_me.dart';
import 'package:portfolio/widgets/container_cv_view.dart';
import 'package:portfolio/widgets/container_soft_skills.dart';
import 'package:portfolio/widgets/education.dart';
import 'package:portfolio/widgets/internships_training.dart';
import 'package:portfolio/widgets/my_projects.dart';
import 'package:portfolio/widgets/skills.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: ConstKeyProject.url,
    anonKey: ConstKeyProject.anonKey,
  );

  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: [
              const AboutMe(),
              const SizedBox(height: 30),
              const Skills(),
              const ContainerSoftSkills(),
              const SizedBox(height: 30),
              const MyProjects(),
              const SizedBox(height: 30),
              const InternshipsTraining(),
              const SizedBox(height: 30),
              const Education(),
              const SizedBox(height: 30),
              const ContactMe(),
              const SizedBox(height: 30),
              const ContainerCvView(),
            ],
          ),
        ),
      ),
    );
  }
}
