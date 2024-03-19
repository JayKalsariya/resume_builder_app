import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:resume_builder_app/screens/utils/appbar.dart';

import '../../utils/global.dart';

class TechnicalSkillPage extends StatefulWidget {
  const TechnicalSkillPage({super.key});

  @override
  State<TechnicalSkillPage> createState() => _TechnicalSkillPageState();
}

class _TechnicalSkillPageState extends State<TechnicalSkillPage> {
  @override
  void initState() {
    if (Globals.controller.length > 2) {
      Globals.controller.removeWhere((element) => element.text.isEmpty);
    }
    if (Globals.controller.isEmpty || Globals.controller.length < 2) {
      log("RELOADING....................");
      // Globals.skill = [
      //   '',
      //   '',
      // ];
      if (Globals.controller.length == 1) {
        Globals.controller.add(TextEditingController());
      } else {
        Globals.controller.addAll([
          TextEditingController(),
          TextEditingController(),
        ]);
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log("================CONTROLLER====================");
    Globals.controller.forEach((element) {
      log(element.text);
    });
    log("==============================================");
    log("================SKILLS=======================");
    // Globals.skill.forEach((element) {
    //   log(element);
    // });
    log("==============================================");
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: appBar2(context: context, text: 'Technical Skill'),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: const Color.fromARGB(80, 97, 53, 254),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Skills',
                      style: TextStyle(fontSize: 20),
                    ),
                    ...List.generate(
                      Globals.controller.length,
                      (index) => Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: Globals.controller[index],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Globals.controller.removeAt(index);
                              // Globals.skill.removeAt(index);
                              setState(() {});
                            },
                            icon: const Icon(Icons.delete),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Globals.controller.add(TextEditingController());
                        setState(() {});
                      },
                      child: const Text('Add'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
