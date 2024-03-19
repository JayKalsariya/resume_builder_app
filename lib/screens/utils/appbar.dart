import 'package:flutter/material.dart';

AppBar appBar2({required BuildContext context, required String text}) {
  return AppBar(
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
    title: Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}
