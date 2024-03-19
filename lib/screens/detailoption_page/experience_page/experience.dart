import 'package:flutter/material.dart';
import 'package:resume_builder_app/screens/utils/appbar.dart';

import '../../utils/global.dart';
import '../../utils/snackbar.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: appBar2(context: context, text: 'Experience'),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                Material(
                  elevation: 5,
                  shadowColor: const Color.fromARGB(120, 97, 53, 254),
                  borderRadius: BorderRadius.circular(20),
                  child: TextFormField(
                    onSaved: (val) {
                      Globals.globals.cmpname = val;
                    },
                    validator: (val) =>
                        val!.isEmpty ? '* Must Be Enter company name' : null,
                    onFieldSubmitted: (val) {
                      formKey.currentState!.validate();
                    },
                    initialValue: Globals.globals.cmpname,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: 'Company Name',
                      hintText: 'E g. Appstone Lab',
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Material(
                  elevation: 5,
                  shadowColor: const Color.fromARGB(120, 97, 53, 254),
                  borderRadius: BorderRadius.circular(20),
                  child: TextFormField(
                    onSaved: (val) {
                      Globals.globals.jobtime = val;
                    },
                    validator: (val) =>
                        val!.isEmpty ? '*Must Be Enter Anyone' : null,
                    onFieldSubmitted: (val) {
                      formKey.currentState!.validate();
                    },
                    initialValue: Globals.globals.jobtime,
                    // keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: 'Work Time',
                      hintText: 'E g. Full Time',
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Material(
                  elevation: 5,
                  shadowColor: const Color.fromARGB(120, 97, 53, 254),
                  borderRadius: BorderRadius.circular(20),
                  child: TextFormField(
                    onSaved: (val) {
                      Globals.globals.role = val;
                    },
                    maxLines: 3,
                    initialValue: Globals.globals.role,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintMaxLines: 3,
                      labelText: 'Role (Optional)',
                      hintText: 'E g. Working with team members to come up '
                          'with new concepts & product analysis',
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

//Button
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
//Save Button
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                            }
                            ScaffoldMessenger.of(context).showSnackBar(
                              mySnackBar(
                                content: formKey.currentState!.validate()
                                    ? "Form saved"
                                    : "Failed to validate the form",
                                color: formKey.currentState!.validate()
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(120, 97, 53, 254),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text(
                            'Save',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
//Reset Button
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            Globals.globals.reset();
                            formKey.currentState!.reset();
                            // setState(() {});
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(120, 97, 53, 254),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text(
                            'Reset',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
