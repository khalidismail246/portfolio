class SkillModel {
  final String titleSkill;
  final String imageSkills;
  final List<Points> points;

  SkillModel({
    required this.titleSkill,
    required this.imageSkills,
    required this.points,
  });
}

class Points {
  final String point;
  final String imagepoint;

  Points({required this.point, required this.imagepoint});
}
