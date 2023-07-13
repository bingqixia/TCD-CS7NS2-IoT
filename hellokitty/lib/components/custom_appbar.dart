import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String iconPath;
  final Color backgroudColor;
  final double height;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.iconPath,
    required this.backgroudColor,
    required this.height,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    const String heartPath = "lib/icons/manual-feeding.png";
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            iconPath,
            height: height / 1.5,
            color: iconPath == heartPath ? Colors.red : Colors.white,
          ),
          const SizedBox(width: 10),
          Text(
            title,
          ),
        ],
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   const String heartPath = "lib/icons/manual-feeding.png";
  //   // final String catPath = "lib/icons/pet-profile.png";
  //   // final String recordPath = "lib/icons/feeding-record.png";

  //   return Padding(
  //     padding: const EdgeInsets.all(15.0),
  //     child: Container(
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(24),
  //         color: Colors.grey[900],
  //       ),
  //       child: Padding(
  //         padding: const EdgeInsets.symmetric(vertical: 25.0),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             // icon
  //             Image.asset(
  //               iconPath,
  //               height: 65,
  //               color: iconPath == heartPath ? Colors.red : Colors.white,
  //             ),

  //             // information
  //             Row(
  //               children: [
  //                 Expanded(
  //                   child: Padding(
  //                     padding: const EdgeInsets.only(left: 25.0),
  //                     child: Text(
  //                       title,
  //                       style: const TextStyle(
  //                         fontWeight: FontWeight.bold,
  //                         fontSize: 20,
  //                         color: Colors.white,
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //                 // Transform.rotate(
  //                 //   angle: pi / 2,
  //                 //   child: CupertinoSwitch(
  //                 //     value: powerOn,
  //                 //     onChanged: onChanged,
  //                 //   ),
  //                 // ),
  //               ],
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
