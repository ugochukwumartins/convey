import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../styles/app_colors.dart';

class ConveyServiceCard extends StatelessWidget {
  ConveyServiceCard({
    super.key,
    required this.text,
    this.isChecked = false,
    this.reSize = false,
    this.textColor,
    this.trailingIcon,
    this.fillColor,
    this.isSvg = false,
    this.iconcolor,
    this.width,
    this.height,
    this.onChange,
  });
  bool? isChecked;
  bool isSvg;
  Color? textColor;
  Color? fillColor;
  Color? iconcolor;
  String text;
  void Function(bool?)? onChange;
  String? trailingIcon;
  double? width;
  double? height;
  bool reSize;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // print(MediaQuery.sizeOf(context).height);
        // print(MediaQuery.sizeOf(context).width);
        print(MediaQuery.of(context).size.height);
        print(MediaQuery.of(context).size.width);
      },
      child: Container(
        width: reSize ? width : MediaQuery.of(context).size.width,
        height: height ?? MediaQuery.of(context).size.height / 19.07,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
            border: Border.all(color: AppColors.gray5),
            color: fillColor ?? AppColors.creamWhite),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10.0, bottom: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                activeColor: AppColors.black,
                value: isChecked,
                onChanged: onChange,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                text,
                style: TextStyle(
                  color: textColor ?? AppColors.black,
                ),
              ),
              Spacer(),
              isSvg
                  ? SvgPicture.asset(
                      trailingIcon!,
                      color: iconcolor,
                      height: MediaQuery.of(context).size.height / 20,
                    )
                  : Image.asset(
                      trailingIcon!,
                      color: iconcolor,
                      height: MediaQuery.of(context).size.height / 20,
                    )
            ],
          ),
        ),
      ),
    );
  }
}

class ConveyServiceCard1 extends StatelessWidget {
  ConveyServiceCard1({
    super.key,
    required this.text,
    this.isChecked = false,
    this.reSize = false,
    this.textColor,
    this.trailingIcon,
    this.fillColor,
    this.iconcolor,
    this.width,
    this.height,
    this.onChange,
  });
  bool? isChecked;

  Color? textColor;
  Color? fillColor;
  Color? iconcolor;
  String text;
  void Function(bool?)? onChange;
  String? trailingIcon;
  double? width;
  double? height;
  bool reSize;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // print(MediaQuery.sizeOf(context).height);
        // print(MediaQuery.sizeOf(context).width);
        print(MediaQuery.of(context).size.height);
        print(MediaQuery.of(context).size.width);
      },
      child: Container(
        width: reSize ? width : MediaQuery.of(context).size.width,
        height: height ?? MediaQuery.of(context).size.height / 19.07,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
            border: Border.all(color: AppColors.gray5),
            color: fillColor ?? AppColors.creamWhite),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10.0, bottom: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                activeColor: AppColors.black,
                value: isChecked,
                onChanged: onChange,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                text,
                style: TextStyle(
                  color: textColor ?? AppColors.black,
                ),
              ),
              Spacer(),
              SvgPicture.asset(
                trailingIcon!,
                color: iconcolor ?? AppColors.white,
                height: MediaQuery.of(context).size.height / 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
