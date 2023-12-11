import 'package:envoymachaant/constant/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Column Wrong({required String answer}) {
  return Column(
    children: [
      SvgPicture.asset(wrong),
      SizedBox(
        height: 5,
      ),
      Text(
        "Wrong Answer",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        "Correct Answer: ${answer}",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}

Column Percent({required String answer}) {
  return Column(
    children: [
      SvgPicture.asset(percen100),
      SizedBox(
        height: 5,
      ),
      Text(
        "You passed.",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        "You have a score of over: ${answer}",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}
