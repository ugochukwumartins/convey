import 'package:dots_indicator/dots_indicator.dart';
import 'package:envoymachaant/components/button_with_icon.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/components/custom_radio_button.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class HiredService extends StatefulWidget {
  HiredService({Key? key}) : super(key: key);

  @override
  State<HiredService> createState() => _HiredServiceState();
}

class _HiredServiceState extends State<HiredService> {
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
              "Hired Service",
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
                  "Category (VIP or Regular)",
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
                  "Vehicle Type ",
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
                  "Brand",
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
                  "Model",
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
                  "Vehicle Purpose",
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
                  "Cost per day for vehicle type",
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
