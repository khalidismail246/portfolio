import 'package:flutter/material.dart';
import 'package:portfolio/services/supabase_services.dart';
import 'package:portfolio/theme/color_app.dart';
import 'package:portfolio/theme/text_style_app.dart';
import 'package:portfolio/widgets/container_projects.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  bool isLoading = true;
  List<Map<String, dynamic>> myProject = [];

  @override
  void initState() {
    super.initState();
    getProjects();
  }

  Future<void> getProjects() async {
    final projects = await SupabaseServices().getData(table: 'my_projects');
    myProject = projects;
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Featured Projects",
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

        const SizedBox(height: 20),

        if (isLoading)
          const Center(child: CircularProgressIndicator())
        else
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: myProject.length,
            itemBuilder: (context, index) {
              final project = myProject[index];
              return ContainerProjects(
                name: project['name'],
                description: project['description'],
                date: project['created_at'],
                image: project['image_url'],
                githubUrl: project['github_url'],
                playStoreUrl: project['play_store_url'],
                technologies: project["technologies"]["technologies"],
              );
            },
          ),
      ],
    );
  }
}
