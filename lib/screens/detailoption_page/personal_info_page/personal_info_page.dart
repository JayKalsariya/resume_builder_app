import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder_app/screens/detailoption_page/personal_info_page/components/form.dart';
import 'package:resume_builder_app/screens/utils/appbar.dart';

import '../../utils/global.dart';

class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({super.key});

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  int _selectedIndex = 0;
  // File? selectedImage;
  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: appBar2(context: context, text: 'Personal Info'),
        body: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    _onItemTapped(0);
                  },
                  child: Container(
                    height: size.height * 0.06,
                    width: size.width * 0.5,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: _selectedIndex == 0
                          ? const Color.fromARGB(120, 97, 53, 254)
                          : Colors.white,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20)),
                    ),
                    child:
                        const Text('Details', style: TextStyle(fontSize: 16)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _onItemTapped(1);
                  },
                  child: Container(
                    height: size.height * 0.06,
                    width: size.width * 0.5,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: _selectedIndex == 1
                          ? const Color.fromARGB(120, 97, 53, 254)
                          : Colors.white,
                      borderRadius:
                          const BorderRadius.only(topLeft: Radius.circular(20)),
                    ),
                    child: const Text('Photo', style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: IndexedStack(
                  index: _selectedIndex,
                  children: [
                    //0
                    Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.red,
                        ),
                        child: myForm(formKey: _formKey, context: context)),
                    //1
                    SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Container(
                              height: size.height * 0.3,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(80, 97, 53, 254),
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundColor: Colors.white,
                                    foregroundImage:
                                        Globals.globals.selectedImage != null
                                            ? FileImage(
                                                Globals.globals.selectedImage!)
                                            : null,
                                  ),
                                  Align(
                                    alignment: const Alignment(0.35, 0.35),
                                    child: FloatingActionButton.small(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            //Dialogue box
                                            return SimpleDialog(
                                              title: Row(
                                                children: [
                                                  const Text('Select Option'),
                                                  const Spacer(),
                                                  IconButton(
                                                      onPressed: () {
                                                        if (Globals.globals
                                                                .selectedImage !=
                                                            null) {
                                                          Navigator.pop(
                                                              context);
                                                        }
                                                      },
                                                      icon: Icon(Icons.cancel))
                                                ],
                                              ),
                                              children: [
                                                //Gallery Button
                                                IconButton(
                                                  onPressed: () async {
                                                    XFile? img =
                                                        await ImagePicker()
                                                            .pickImage(
                                                      source:
                                                          ImageSource.gallery,
                                                    );
                                                    if (img != null) {
                                                      setState(() {
                                                        Globals.globals
                                                                .selectedImage =
                                                            File(img!.path);
                                                        Navigator.pop(context);
                                                      });
                                                    }
                                                  },
                                                  icon: Icon(
                                                    Icons.photo,
                                                    size: 50,
                                                    color: Color.fromARGB(
                                                        120, 97, 53, 254),
                                                  ),
                                                ),
                                                //Camera Button
                                                IconButton(
                                                  onPressed: () async {
                                                    final img =
                                                        await ImagePicker()
                                                            .pickImage(
                                                      source:
                                                          ImageSource.camera,
                                                    );
                                                    if (img != null) {
                                                      setState(
                                                        () {
                                                          Globals.globals
                                                                  .selectedImage =
                                                              File(img.path);
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      );
                                                    }
                                                  },
                                                  icon: Icon(
                                                    Icons.photo_camera,
                                                    size: 50,
                                                    color: Color.fromARGB(
                                                        120, 97, 53, 254),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(70),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
