import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Terms & Conditions",
          isText: true,
          fontSize: 20,
          color: AppColors.black,
          backgroundColor: AppColors.white),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              Text(
                "These terms and conditions (the Terms and Conditions or the Agreement) set out the terms of the agreement between you as a customer of AltInvest and a user of the Platform (You or a Member), Sterling Alternative Finance (SAF or NIB) and, where applicable, an appointed nominee.\n\nTogether SAF and the Nominee shall be referred to as “we” and “us”. The Platform meaning the website operated by SAF under the trading name AltInvest.",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "These terms and conditions (the Terms and Conditions or the Agreement) set out the terms of the agreement between you as a customer of AltInvest and a user of the ",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }
}
