import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../styles/app_colors.dart';

class ButtonWithIcons extends StatelessWidget {
  ButtonWithIcons({
    super.key,
    required this.text,
    this.isLeading = false,
    this.isTrailing = false,
    this.reSize = false,
    this.textColor,
    this.leadIcon,
    this.trailingIcon,
    this.fillColor,
    this.iconcolor,
    this.width,
    this.height,
  });
  bool isLeading;
  bool isTrailing;
  Color? textColor;
  Color? fillColor;
  Color? iconcolor;
  String text;
  String? leadIcon;
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
        width: isLeading
            ? MediaQuery.of(context).size.width / 3
            : reSize
                ? width
                : MediaQuery.of(context).size.width / 3,
        height: height ?? MediaQuery.of(context).size.height / 19.07,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            border: Border.all(color: AppColors.gray5),
            color: fillColor ?? AppColors.creamWhite),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10.0, bottom: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isLeading
                  ? SvgPicture.asset(
                      leadIcon!,
                      color: iconcolor,
                      height: MediaQuery.of(context).size.height / 40,
                    )
                  : const SizedBox.shrink(),
              isLeading
                  ? SizedBox(
                      width: MediaQuery.of(context).size.width / 12.8,
                    )
                  : const SizedBox(
                      width: 1,
                    ),
              Text(
                text,
                style: TextStyle(
                  color: textColor ?? AppColors.black,
                ),
              ),
              isTrailing
                  ? Spacer()
                  : const SizedBox(
                      width: 1,
                    ),
              isTrailing
                  ? SvgPicture.asset(
                      trailingIcon!,
                      color: iconcolor ?? AppColors.white,
                      height: MediaQuery.of(context).size.height / 20,
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
