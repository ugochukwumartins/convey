import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class ConveyCard extends StatelessWidget {
  void Function()? onTap;
  String text;
  Widget icon;
  double? hight;
  ConveyCard({required this.text, required this.icon, this.onTap, this.hight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: hight ?? MediaQuery.of(context).size.height / 9.6,
      padding: const EdgeInsets.only(top: 0),
      //margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.gray7,
          border: Border.all()
          // gradient: boxGradient,
          ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 17,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              icon
            ],
          ),
        ),
      ),
    );
  }
}
