import 'package:flutter/material.dart';

import '../../utils/routes.dart';

Widget optionCard(
    {required dynamic element,
    required Size size,
    required int index,
    required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 16),
    child: GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(element['route']);
      },
      child: Container(
        width: size.width * 0.44,
        // height: size.height * 0.15,
        decoration: const BoxDecoration(
          color: Color.fromARGB(120, 97, 53, 254),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                element['icon'],
                width: 60,
                color: Colors.white,
              ),
              const Spacer(),
              Text(
                element['title'],
                style: const TextStyle(fontSize: 17),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    ),
  );
}
