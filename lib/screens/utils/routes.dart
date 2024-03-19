class Routes {
  static const splash = '/';
  static const login = 'login';
  static const home = 'home';
  static const detail = 'detail';
  static const pdfPage = 'pdfPage';

  static String iconPath = 'assets/icons';

  static List<dynamic> detailOption = [
    {
      'title': 'Personal info',
      'icon': '$iconPath/info.png',
      'route': 'personal_info',
    },
    {
      'title': 'Education',
      'icon': '$iconPath/education.png',
      'route': 'education_page',
    },
    {
      'title': 'Experience',
      'icon': '$iconPath/experience.png',
      'route': 'experience',
    },
    {
      'title': 'Certified courses',
      'icon': '$iconPath/certificate.png',
      'route': 'certified_courses',
    },
    {
      'title': 'Projects',
      'icon': '$iconPath/project.png',
      'route': 'projects',
    },
    {
      'title': 'Technical skills',
      'icon': '$iconPath/skill.png',
      'route': 'technical_skills',
    },
    {
      'title': 'Hobbies',
      'icon': '$iconPath/hobby.png',
      'route': 'hobbies',
    },
    {
      'title': 'About',
      'icon': '$iconPath/about.png',
      'route': 'about',
    },
    {
      'title': 'Achievements',
      'icon': '$iconPath/achievement.png',
      'route': 'achievements',
    },
  ];
}
