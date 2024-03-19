import 'package:flutter/material.dart';

import '../../../utils/global.dart';
import '../../../utils/snackbar.dart';

Form myForm({required GlobalKey<FormState> formKey, required context}) {
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
              Globals.globals.name = val;
            },
            validator: (val) => val!.isEmpty ? '* Must Be Enter Name' : null,
            onFieldSubmitted: (val) {
              formKey.currentState!.validate();
            },
            initialValue: Globals.globals.name,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Name',
              hintText: 'Enter your full name',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              prefixIcon: const Icon(Icons.person),
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
              Globals.globals.email = val;
            },
            validator: (val) => val!.isEmpty
                ? '*Must Be Enter Email'
                : RegExp(r'''^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$''')
                        .hasMatch(val)
                    ? null
                    : '*Enter Valid Email',
            onFieldSubmitted: (val) {
              formKey.currentState!.validate();
            },
            initialValue: Globals.globals.email,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'E-mail',
              hintText: 'Enter your email',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              prefixIcon: const Icon(Icons.email),
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
              Globals.globals.number = val;
            },
            validator: (val) => val!.isEmpty
                ? "Must Enter contact number"
                : val.length < 10
                    ? "Enter Valid Number"
                    : null,
            onFieldSubmitted: (val) {
              formKey.currentState!.validate();
            },
            initialValue: Globals.globals.number,
            maxLength: 10,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Contact number',
              hintText: 'Enter your Number',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              prefixIcon: const Icon(Icons.phone),
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
              Globals.globals.address = val;
            },
            onFieldSubmitted: (val) {
              formKey.currentState!.validate();
            },
            validator: (val) => val!.isEmpty ? '*Enter address' : null,
            initialValue: Globals.globals.address,
            keyboardType: TextInputType.streetAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Address',
              hintText: 'House no., Building name, Street name,',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              prefixIcon: const Icon(Icons.map),
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
              Globals.globals.city = val;
            },
            onFieldSubmitted: (val) {
              formKey.currentState!.validate();
            },
            validator: (val) => val!.isEmpty ? '*Please enter city' : null,
            initialValue: Globals.globals.city,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'City',
              hintText: 'Enter your City name',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              prefixIcon: const Icon(Icons.location_city),
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
              Globals.globals.state = val;
            },
            onFieldSubmitted: (val) {
              formKey.currentState!.validate();
            },
            validator: (val) => val!.isEmpty ? '*Please enter state' : null,
            initialValue: Globals.globals.state,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'State',
              hintText: 'Enter your State name',
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
              Globals.globals.country = val;
            },
            onFieldSubmitted: (val) {
              formKey.currentState!.validate();
            },
            validator: (val) => val!.isEmpty ? '*Please enter country' : null,
            initialValue: Globals.globals.country,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              labelText: 'Country',
              hintText: 'Enter your Country name',
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
