//Singleton Class => It have a only one OBJECT
import 'dart:io';

import 'package:flutter/cupertino.dart';

class Globals {
  String? name,
      email,
      number,
      address,
      city,
      state,
      country,
      degree,
      clg,
      per,
      year,
      cmpname,
      jobtime,
      role;
  File? selectedImage;
  // Image profile = image: AssetImage('assets/images/profile.png');
  // static List<String> skill = ['', ''];

  static List<TextEditingController> controller = [
    TextEditingController(),
    TextEditingController(),
  ];
//1: create private named constructor
  Globals._();

//2: assign private named constructor into static final object
  static final Globals globals = Globals._();

  void reset() {
    //Chained assign expression
    name = email = number =
        address = city = state = country = degree = clg = per = year = null;
  }
}
