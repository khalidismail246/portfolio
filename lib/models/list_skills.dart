import 'package:portfolio/models/skill_model.dart';

abstract class ListSkills {
  static List<SkillModel> skills = [
    SkillModel(
      titleSkill: "State Management",
      imageSkills: "assets/images/state_management/state.svg",
      points: [
        Points(
          point: "BLoC",
          imagepoint: "assets/images/state_management/bloc.svg",
        ),
      ],
    ),
    SkillModel(
      titleSkill: "Backend & APIs",
      imageSkills: "assets/images/backend_and_api/backend.svg",
      points: [
        Points(
          point: "RESTful API Integration",
          imagepoint: "assets/images/backend_and_api/restful.svg",
        ),
        Points(
          point: "JSON Handling",
          imagepoint: "assets/images/backend_and_api/json.svg",
        ),
        Points(
          point: "Firebase",
          imagepoint: "assets/images/backend_and_api/firebase.svg",
        ),
        Points(
          point: "Supabase",
          imagepoint: "assets/images/backend_and_api/supabase.svg",
        ),
      ],
    ),
    SkillModel(
      titleSkill: "AI & Advanced Features",
      imageSkills: "assets/images/ai_and_advanced_features/features.svg",
      points: [
        Points(
          point: "AI Integration",
          imagepoint: "assets/images/ai_and_advanced_features/ai.svg",
        ),
      ],
    ),
    SkillModel(
      titleSkill: "UI / Frontend",
      imageSkills: "assets/images/ui_frontend/ui.svg",
      points: [
        Points(
          point: "Responsive UI Development",
          imagepoint: "assets/images/ui_frontend/response.svg",
        ),
        Points(
          point: "Performance Optimization",
          imagepoint: "assets/images/ui_frontend/performance.svg",
        ),
      ],
    ),
    SkillModel(
      titleSkill: "Development Practices",
      imageSkills: "assets/images/development_practices/practices.svg",
      points: [
        Points(
          point: "Clean Code",
          imagepoint: "assets/images/development_practices/clean.svg",
        ),
        Points(
          point: "Code Refactoring",
          imagepoint: "assets/images/development_practices/refactoring.svg",
        ),
        Points(
          point: "Git & GitHub",
          imagepoint: "assets/images/development_practices/git.svg",
        ),
      ],
    ),
  ];
  static List<String> softSkills = [
    "Critical Thinking",
    "Problem Solving",
    "Teamwork",
    "Communication",
  ];
}
