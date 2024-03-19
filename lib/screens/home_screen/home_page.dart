import 'package:flutter/material.dart';
import 'package:resume_builder_app/screens/home_screen/components/appbar.dart';
import 'package:resume_builder_app/screens/home_screen/components/bottombar.dart';
import 'package:resume_builder_app/screens/home_screen/components/signin_card.dart';

import '../utils/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      drawer: const Drawer(
        backgroundColor: Color(0xff6143FD64),
      ),
      appBar: appBar(scaffoldKey: scaffoldKey),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
//Signing Card
            signInCard(size: size),
            SizedBox(height: size.height * 0.03),
//New Resume
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.detail);
              },
              child: Container(
                alignment: Alignment.center,
                height: size.height * 0.07,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(100, 97, 67, 253),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: const Text(
                  '📝  New Resume',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
//Divider
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 2,
                    endIndent: 5,
                  ),
                ),
                Text(
                  'Recent',
                  style: TextStyle(fontSize: 18),
                ),
                Expanded(
                  child: Divider(
                    thickness: 2,
                    indent: 5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
//Floating Button
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, Routes.pdfPage);
        },
        label: const Text('PDF'),
        backgroundColor: const Color.fromARGB(120, 97, 67, 253),
        icon: const Icon(Icons.picture_as_pdf_outlined),
      ),
    );
  }
}
