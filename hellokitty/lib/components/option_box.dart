import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomOptionBox extends StatelessWidget {
  final String optionName;
  final String iconPath;

  CustomOptionBox({
    super.key,
    required this.optionName,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    const String heartPath = "lib/icons/manual-feeding.png";
    // final String catPath = "lib/icons/pet-profile.png";
    // final String recordPath = "lib/icons/feeding-record.png";

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.grey[900],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // icon
              Image.asset(
                iconPath,
                height: 65,
                color: iconPath == heartPath ? Colors.red : Colors.white,
              ),

              // information
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        optionName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  // Transform.rotate(
                  //   angle: pi / 2,
                  //   child: CupertinoSwitch(
                  //     value: powerOn,
                  //     onChanged: onChanged,
                  //   ),
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
