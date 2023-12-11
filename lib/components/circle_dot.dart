import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class CircleDot extends StatelessWidget {
  bool isselected;
  CircleDot({
    this.isselected = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width / 30,
        height: MediaQuery.of(context).size.height / 58,
        padding: const EdgeInsets.only(top: 24),
        //margin: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          // image: const DecorationImage(
          //     image: AssetImage("assets/images/dashboard/create_investment_bg.png"),
          //     fit: BoxFit.cover),
          shape: BoxShape.circle,
          color: isselected ? AppColors.white : AppColors.gray5,
          // gradient: boxGradient,
        ),
      ),
    );
  }
}