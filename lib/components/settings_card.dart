import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsCard extends StatelessWidget {
  String text;
  String icon;
  String img;
  void Function()? ontap;
  SettingsCard({
    required this.icon,
    required this.img,
    required this.text,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 7.6,
      padding: const EdgeInsets.only(top: 0),
      //margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.white,
          border:
              Border.all(width: 0.5, color: AppColors.black.withOpacity(0.3))
          // gradient: boxGradient,
          ),
      child: InkWell(
        onTap: ontap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(img),
              SizedBox(
                width: 15,
              ),
              Text(
                "HELLO,",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black2),
              ),
              Text(
                text,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              SvgPicture.asset(
                icon,
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}