import 'package:flutter/material.dart';
import 'package:resume_builder_app/screens/utils/appbar.dart';

import '../utils/routes.dart';
import 'components/option_card.dart';

class DetailOptionPage extends StatelessWidget {
  const DetailOptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar2(context: context, text: 'Detail Option Page'),
      body: Padding(
        padding: const EdgeInsetsDirectional.all(16),
//My Try
//         child: ListView(
//           physics: const BouncingScrollPhysics(),
//           children: [
//             ...Routes.detailOption
//                 .map(
//                   (e) => Row(
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.of(context).pushNamed(e['route']);
//                         },
//                         child: optionCard(
//                           size: size,
//                           index: Routes.detailOption.indexOf(e),
//                           context: context,
//                           element: e,
//                         ),
//                       ),
//                       const Spacer(),
//                       optionCard(
//                         size: size,
//                         index: Routes.detailOption.indexOf(e),
//                         context: context,
//                         element: e,
//                       ),
//                     ],
//                   ),
//                 )
//                 .toList(),
// //-----------------------------------------------------------------
//             ...List.generate(
//               Routes.detailOption.length ~/ 2,
//               (index) => Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).pushNamed();
//                     },
//                     child: optionCard(
//                       size: size,
//                       index: index * 2,
//                       context: context,
//                       title: Routes.detailOption[index * 2]['title'],
//                       icon: Routes.detailOption[index * 2]['icon'],
//                       route: Routes.detailOption[index * 2]['route'],
//                     ),
//                   ),
//                   const Spacer(),
//                   optionCard(
//                     size: size,
//                     index: index * 2 + 1,
//                     context: context,
//                     title: Routes.detailOption[index * 2 + 1]['title'],
//                     icon: Routes.detailOption[index * 2 + 1]['icon'],
//                     route: Routes.detailOption[index * 2 + 1]['route'],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
        child: GridView.count(
          physics: const BouncingScrollPhysics(),
          primary: false,
          padding: const EdgeInsets.only(bottom: 1),
          crossAxisCount: 2,
          children: <Widget>[
            ...Routes.detailOption
                .map(
                  (e) => Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(e['route']);
                        },
                        child: optionCard(
                          size: size,
                          index: Routes.detailOption.indexOf(e),
                          context: context,
                          element: e,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
