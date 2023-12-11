import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/components/drop_down.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/onbording/signUp.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Success extends StatelessWidget {
  String body;
  Success({required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          top: 34,
          left: 24,
          right: 24,
          bottom: 47,
        ),
        child: CustomButton(
          backgroundColor: AppColors.Primaryblue,
          width: MediaQuery.sizeOf(context).width,
          actionText: "Continue",
          height: 60,
          onTap: () {},
        ),
      ),
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "",
          isText: true,
          fontSize: 20,
          color: AppColors.black,
          backgroundColor: AppColors.white),
      body: Padding(
        padding: const EdgeInsets.only(top: 34, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Success!!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 56,
              ),
              SvgPicture.asset(success),
              const SizedBox(
                height: 56,
              ),
              Text(
                body,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
