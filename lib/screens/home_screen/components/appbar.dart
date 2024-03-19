import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar appBar({required GlobalKey<ScaffoldState> scaffoldKey}) {
  return AppBar(
    centerTitle: true,
    leading: IconButton(
      onPressed: () => scaffoldKey.currentState!.openDrawer(),
      icon: const Icon(CupertinoIcons.profile_circled),
    ),
    title: const Text(
      'Resume',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.notifications_none),
      ),
    ],
  );
}
