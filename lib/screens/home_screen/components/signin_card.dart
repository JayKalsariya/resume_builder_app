import 'package:flutter/material.dart';

Container signInCard({required Size size}) {
  return Container(
    height: size.height * 0.25,
    width: double.infinity,
    decoration: BoxDecoration(
      color: const Color.fromARGB(190, 97, 53, 254),
      borderRadius: BorderRadius.circular(16.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
//Title
          const Text(
            'Sign in to your free account',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
//Description
          const Text(
            'Your guest account will be deleted after 3 days '
            'so, sign in to your account & get extra benefits.',
            style: TextStyle(color: Colors.white70),
          ),
//Button
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(190, 97, 53, 254),
                backgroundColor: Colors.white,
              ),
              onPressed: () {},
              child: const Text('Sign In Now'),
            ),
          ),
        ],
      ),
    ),
  );
}
