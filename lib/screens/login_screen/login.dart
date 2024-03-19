import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(child: TextFormField()),
            TextField(
              onTap: () {},
              decoration: const InputDecoration(),
            ),
            TextField(
              obscureText: true,
              onTap: () {},
              decoration: const InputDecoration(labelText: 'Email'),
            ),
          ],
        ),
      ),
    );
  }
}
