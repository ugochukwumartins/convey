import 'package:envoymachaant/constant/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Column Correct() {
  return Column(
    children: [
      SvgPicture.asset(successicon),
      SizedBox(
        height: 5,
      ),
      Text(
        "Correct Answer",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}


