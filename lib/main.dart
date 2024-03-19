import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_builder_app/screens/detailoption_page/detail_option.dart';
import 'package:resume_builder_app/screens/detailoption_page/education_page/education.dart';
import 'package:resume_builder_app/screens/detailoption_page/experience_page/experience.dart';
import 'package:resume_builder_app/screens/detailoption_page/personal_info_page/personal_info_page.dart';
import 'package:resume_builder_app/screens/detailoption_page/technical_skill_page/technical_skill.dart';
import 'package:resume_builder_app/screens/home_screen/home_page.dart';
import 'package:resume_builder_app/screens/login_screen/login.dart';
import 'package:resume_builder_app/screens/splash_screen/splash_page.dart';
import 'package:resume_builder_app/screens/utils/routes.dart';

import 'screens/pdf_page/pdf_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.splash: (context) => const SplashPage(),
        // Routes.login: (context) => const LoginPage(),
        Routes.home: (context) => const HomePage(),
        Routes.detail: (context) => const DetailOptionPage(),
        Routes.pdfPage: (context) => const PdfPage(),
        Routes.detailOption[0]['route']: (context) => const PersonalInfoPage(),
        Routes.detailOption[1]['route']: (context) => const EducationPage(),
        Routes.detailOption[2]['route']: (context) => const ExperiencePage(),
        Routes.detailOption[5]['route']: (context) =>
            const TechnicalSkillPage(),
      },
    );
  }
}
