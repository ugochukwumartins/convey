import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Orders extends StatelessWidget {
  final String count;
  final String icon;
  final String actionText;
  final double? width;
  final Color actionTesxtcolor;
  Function? ontap;
  Orders(
      {required this.actionText,
      required this.count,
      required this.icon,
      this.width,
      this.actionTesxtcolor = AppColors.Primarygold,
      this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: AppColors.gray7,
        // gradient: boxGradient,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 8,
          bottom: 8,
        ),
        child: Row(
          children: [
            SvgPicture.asset(icon),
            SizedBox(
              width: 4,
            ),
            Text(count),
            Spacer(),
            CustomButton(
              fillColor: AppColors.black,
              width: width ?? 100,
              height: 40,
              actionTextColor: actionTesxtcolor,
              backgroundColor: AppColors.white,
              actionText: actionText,
              onTap: () {
                ontap!();
              },
            )
          ],
        ),
      ),
    );
  }
}

class Orders1 extends StatelessWidget {
  final String title;
  final String body;
  final String icon;
  final String actionText;
  final double? width;
  final double? height;
  final Color actionTesxtcolor;
  Function? ontap;
  Orders1(
      {required this.actionText,
      required this.title,
      required this.body,
      required this.icon,
      this.width,
      this.height,
      this.actionTesxtcolor = AppColors.Primarygold,
      this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: AppColors.white,
        // gradient: boxGradient,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 8,
              bottom: 8,
            ),
            child: Row(
              children: [
                SvgPicture.asset(icon),
                SizedBox(
                  width: 4,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      body,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                CustomButton(
                  fillColor: AppColors.black,
                  width: width ?? 100,
                  height: 40,
                  actionTextColor: actionTesxtcolor,
                  backgroundColor: AppColors.gray7,
                  actionText: actionText,
                  radius: 15,
                  onTap: () {
                    ontap!();
                  },
                )
              ],
            ),
          ),
          Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
