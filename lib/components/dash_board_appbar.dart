import 'package:envoymachaant/constant/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Row DashBoardAppbar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text('Hi ABC motors'),
          SizedBox(
            height: 4,
          ),
          Text('Good morning'),
        ],
      ),
      const Spacer(),
      SvgPicture.asset(menubar),
      SizedBox(
        width: 4,
      ),
      SvgPicture.asset(bell)
    ],
  );
}
