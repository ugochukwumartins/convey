import 'package:dots_indicator/dots_indicator.dart';
import 'package:envoymachaant/components/button_with_icon.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/components/custom_radio_button.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class CaptainService extends StatefulWidget {
  CaptainService({Key? key}) : super(key: key);

  @override
  State<CaptainService> createState() => _CaptainServiceState();
}

class _CaptainServiceState extends State<CaptainService> {
  bool isSwitchchecked = false;
  swichChange(bool val) {
    setState(() {
      isSwitchchecked = val;
    });
  }

  double _currentPostion = 0.0;

  @override
  Widget build(BuildContext context) {
    const decorator = DotsDecorator(
      activeColor: AppColors.red2,
    );
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Captain Service",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 32,
            ),
            const Text(
              "Upload a document containing details of your vehicles, including;",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.red2),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                DotsIndicator(
                  dotsCount: 1,
                  position: 0,
                  decorator: decorator,
                ),
                const Text(
                  "Driver's name",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.red2),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                DotsIndicator(
                  dotsCount: 1,
                  position: 0,
                  decorator: decorator,
                ),
                const Text(
                  "Age",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.red2),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                DotsIndicator(
                  dotsCount: 1,
                  position: 0,
                  decorator: decorator,
                ),
                const Text(
                  "Marital Status",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.red2),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                DotsIndicator(
                  dotsCount: 1,
                  position: 0,
                  decorator: decorator,
                ),
                const Text(
                  "Years of Experience",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.red2),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                DotsIndicator(
                  dotsCount: 1,
                  position: 0,
                  decorator: decorator,
                ),
                const Text(
                  "Vehicle type(s)",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.red2),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                DotsIndicator(
                  dotsCount: 1,
                  position: 0,
                  decorator: decorator,
                ),
                const Text(
                  "Bio (optional)",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.red2),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                DotsIndicator(
                  dotsCount: 1,
                  position: 0,
                  decorator: decorator,
                ),
                const Text(
                  "Hourly rate",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.red2),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                DotsIndicator(
                  dotsCount: 1,
                  position: 0,
                  decorator: decorator,
                ),
                const Text(
                  "If available for Travel",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.red2),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                DotsIndicator(
                  dotsCount: 1,
                  position: 0,
                  decorator: decorator,
                ),
                const Text(
                  "If available for Salary Hire",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.red2),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ButtonWithIcons(
              text: "Upload excl doc of vehicles",
              reSize: true,
              width: 300,
              isTrailing: true,
              trailingIcon: share,
              iconcolor: AppColors.black,
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                "Download Sample Doc",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
