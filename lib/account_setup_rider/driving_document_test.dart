import 'package:envoymachaant/components/button_with_icon.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class DrivingDocumentTest extends StatefulWidget {
  DrivingDocumentTest({Key? key}) : super(key: key);

  @override
  State<DrivingDocumentTest> createState() => _DrivingDocumentTestState();
}

class _DrivingDocumentTestState extends State<DrivingDocumentTest> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Driving Documents & Test",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Drivers Licence",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ButtonWithIcons(
                text: "Upload pdf or jpg",
                reSize: true,
                width: 240,
                isTrailing: true,
                trailingIcon: share,
                iconcolor: AppColors.black,
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Road Worthiness",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ButtonWithIcons(
                text: "Upload pdf or jpg",
                reSize: true,
                width: 240,
                isTrailing: true,
                trailingIcon: share,
                iconcolor: AppColors.black,
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Insurance Receipt",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ButtonWithIcons(
                text: "Upload pdf or jpg",
                reSize: true,
                width: 240,
                isTrailing: true,
                trailingIcon: share,
                iconcolor: AppColors.black,
              ),
              SizedBox(
                height: 24,
              ),
            ]),
      ),
    );
  }
}
