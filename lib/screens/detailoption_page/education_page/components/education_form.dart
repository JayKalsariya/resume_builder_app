import 'package:flutter/material.dart';

import '../../../utils/global.dart';
import '../../../utils/snackbar.dart';

Form educationForm({required GlobalKey<FormState> formKey, required context}) {
  return Form(
    key: formKey,
    child: ListView(
      children: [
        const SizedBox(height: 3.5),
        Material(
          elevation: 5,
          shadowColor: const Color.fromARGB(120, 97, 53, 254),
          borderRadius: BorderRadius.circular(20),
          child: TextFormField(
            onSaved: (val) {
              Globals.globals.degree = val;
            },
            validator: (val) => val!.isEmpty ? '* Must Be Enter Degree' : null,
            onFieldSubmitted: (val) {
              formKey.currentState!.validate();
            },
            initialValue: Globals.globals.degree,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Degree/Course',
              hintText: 'E g. Bachelor of Technology',
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
              Globals.globals.clg = val;
            },
            validator: (val) => val!.isEmpty ? '*Must Be Enter Anyone' : null,
            onFieldSubmitted: (val) {
              formKey.currentState!.validate();
            },
            initialValue: Globals.globals.clg,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'School/University/Institute',
              hintText: 'E g. VNSGU, SSIU',
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
              Globals.globals.per = val;
            },
            validator: (val) =>
                val!.isEmpty ? "Must Enter your percentage" : null,
            onFieldSubmitted: (val) {
              formKey.currentState!.validate();
            },
            initialValue: Globals.globals.per,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Percentage/CGPA',
              hintText: 'E g. 8.4',
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
              Globals.globals.year = val;
            },
            onFieldSubmitted: (val) {
              formKey.currentState!.validate();
            },
            validator: (val) => val!.isEmpty ? '*Enter passing year' : null,
            initialValue: Globals.globals.year,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              labelText: 'Year of passing',
              hintText: 'E g. 2020',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
//Button
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
                backgroundColor: const Color.fromARGB(120, 97, 53, 254),
                foregroundColor: Colors.white,
              ),
              child: const Text(
                'Save',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                backgroundColor: const Color.fromARGB(120, 97, 53, 254),
                foregroundColor: Colors.white,
              ),
              child: const Text(
                'Reset',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]),
      ],
    ),
  );
}
