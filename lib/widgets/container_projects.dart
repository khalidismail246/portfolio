import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/services/url_launcher_services.dart';
import 'package:portfolio/theme/color_app.dart';
import 'package:portfolio/theme/text_style_app.dart';
import 'package:portfolio/widgets/button_project.dart';
import 'package:portfolio/widgets/container_technologies.dart';

class ContainerProjects extends StatelessWidget {
  const ContainerProjects({
    super.key,
    required this.name,
    required this.description,
    required this.date,
    required this.image,
    required this.githubUrl,
    required this.playStoreUrl,
    required this.technologies,
  });
  final String name;
  final String description;
  final String date;
  final String image;
  final String githubUrl;
  final String playStoreUrl;
  final List<dynamic> technologies;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .15),
            blurRadius: 25,
            spreadRadius: 2,
            offset: const Offset(0, 10),
          ),
        ],
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),

            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: .85),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: .08),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: .15),
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28),
                    ),
                  ),

                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: TextStyleApp.bold28(ColorApp.titleColor),
                          ),

                          Text(
                            date,
                            style: TextStyleApp.normal14(Colors.grey.shade300),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        description,
                        style: TextStyleApp.light16(
                          Colors.white.withValues(alpha: .9),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          runSpacing: 10,
                          direction: Axis.horizontal,
                          children: technologies
                              .map(
                                (technology) =>
                                    ContainerTechnologies(text: technology),
                              )
                              .toList(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          ButtonProject(
                            text: "View Code",
                            onPressed: () {
                              UrlLauncherServices.openUrl(url: githubUrl);
                            },
                            colorBackGround: ColorApp.containerColor,
                          ),
                          const SizedBox(width: 16),
                          ButtonProject(
                            text: "Download",
                            onPressed: () {
                              UrlLauncherServices.openUrl(url: playStoreUrl);
                            },
                            colorButton: Colors.white.withValues(alpha: .3),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
