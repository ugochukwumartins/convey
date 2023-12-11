import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/button_with_icon.dart';
import 'package:envoymachaant/components/convey_service_card.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompanyDetails extends StatefulWidget {
  CompanyDetails({Key? key}) : super(key: key);

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,
          text: "Company Details",
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
                "Please provide your company details to complete your profile",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 32,
              ),
              CustomFormField(
                formIndex: false,
                hint: 'Company HQ Address',
                headtext: "Company HQ Address",
              ),
              SizedBox(
                height: 16,
              ),
              CustomFormField(
                formIndex: false,
                hint: 'State(s) of Operation',
                headtext: "State(s) of Operation",
              ),
              SizedBox(
                height: 16,
              ),
              CustomFormField(
                formIndex: false,
                hint: 'LGs of Operation',
                headtext: "LGs of Operation",
              ),
              SizedBox(
                height: 16,
              ),
              CustomFormField(
                formIndex: false,
                hint: 'Company Registration Number',
                headtext: "Company Registration Number",
              ),
              SizedBox(
                height: 16,
              ),
              ButtonWithIcons(
                text: "Upload Company Logo",
                reSize: true,
                width: 240,
                isTrailing: true,
                trailingIcon: camera,
                iconcolor: AppColors.black,
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                fillColor: AppColors.black,
                backgroundColor: AppColors.Primaryblue,
                disabled: true,
                actionText: "Submit",
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
