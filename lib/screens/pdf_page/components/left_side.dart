// import 'dart:math';
// import 'dart:typed_data';
//
// import 'package:flutter/material.dart';
// import 'package:resume_builder_app/screens/utils/appbar.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:printing/printing.dart';
//
// import '../../utils/global.dart';
//
//  leftSide(){
//   return pw.Container(
//     height: 548,
//     width: 190,
//     // color: PdfColors.grey,
//     child: pw.Column(
//       children: [
//         pw.Align(
//           alignment: pw.Alignment.centerLeft,
//           child: pw.Text(
//             'CONTACT',
//             style: pw.TextStyle(
//               fontSize: 19,
//               fontWeight: pw.FontWeight.bold,
//             ),
//           ),
//         ),
//         pw.SizedBox(height: 10),
//         pw.Align(
//           alignment: pw.Alignment.centerLeft,
//           child: pw.Text(
//             Globals.globals.number.toString(),
//             style: pw.TextStyle(
//               fontSize: 18,
//             ),
//             textAlign: pw.TextAlign.left,
//           ),
//         ),
//         pw.SizedBox(height: 10),
//         pw.Text(
//           Globals.globals.email.toString(),
//           style: pw.TextStyle(
//             fontSize: 14,
//           ),
//         ),
//         pw.SizedBox(height: 10),
//         pw.Text(
//           Globals.globals.address.toString(),
//           style: pw.TextStyle(
//             fontSize: 18,
//           ),
//         ),
//         pw.SizedBox(height: 10),
//         pw.Divider(),
//         pw.SizedBox(height: 10),
//         pw.Align(
//           alignment: pw.Alignment.centerLeft,
//           child: pw.Text(
//             'ABOUT ME',
//             style: pw.TextStyle(
//               fontSize: 19,
//               fontWeight: pw.FontWeight.bold,
//             ),
//           ),
//         ),
//         pw.SizedBox(height: 10),
//         pw.Text(
//           'A multitasking, adaptable individual '
//               'with a passion for work, gaming, travelling, '
//               '& Flutter development. ',
//           style: pw.TextStyle(
//             fontSize: 18,
//           ),
//         ),
//         pw.SizedBox(height: 10),
//         pw.Divider(),
//         pw.SizedBox(height: 10),
//         pw.Align(
//           alignment: pw.Alignment.centerLeft,
//           child: pw.Text(
//             'TECHNICAL SKILLS',
//             style: pw.TextStyle(
//               fontSize: 19,
//               fontWeight: pw.FontWeight.bold,
//             ),
//           ),
//         ),
//         pw.SizedBox(height: 10),
//         ...List.generate(
//           Globals.controller.length,
//               (index) => pw.Align(
//             alignment: pw.Alignment.centerLeft,
//             child: pw.Text(
//               '- ' + Globals.controller[index].text,
//               style: pw.TextStyle(fontSize: 18),
//             ),
//           ),
//         ),
//         // pw.Text()
//       ],
//     ),
//   ),
//   pw.Container(
//   width: 10,
//   child: pw.Transform.rotate(
//   angle: pi / 2,
//   child: pw.Divider(
//   indent: 0,
//   ),
//   ),
//   ),
// }
