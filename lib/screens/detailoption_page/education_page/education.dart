import 'package:flutter/material.dart';
import 'package:resume_builder_app/screens/detailoption_page/education_page/components/education_form.dart';
import 'package:resume_builder_app/screens/utils/appbar.dart';

import '../../home_screen/components/appbar.dart';
import '../../utils/global.dart';
import '../../utils/snackbar.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: appBar2(context: context, text: 'Education'),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: educationForm(formKey: formKey, context: context),
        ),
      ),
    );
  }
}
