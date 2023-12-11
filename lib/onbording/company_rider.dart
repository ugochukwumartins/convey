import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/components/drop_down.dart';
import 'package:envoymachaant/components/success.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/onbording/signUp.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompanyRiderSignUp extends StatefulWidget {
  CompanyRiderSignUp({Key? key}) : super(key: key);

  @override
  State<CompanyRiderSignUp> createState() => _CompanyRiderSignUpState();
}

class _CompanyRiderSignUpState extends State<CompanyRiderSignUp> {
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
          actionText: "Sign up",
          height: 48,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Success(
                        body:
                            'An Account has been created for you. You can update your profile to start earning.',
                      )),
            );
          },
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
                "ABC Groups Ltd",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: AppColors.Primarygold,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "Sign up",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomFormField(
                formIndex: false,
                hint: 'First Name',
              ),
              SizedBox(
                height: 10,
              ),
              CustomFormField(
                formIndex: false,
                hint: 'Last Name',
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  DropDown(),
                  Expanded(
                    child: CustomFormField(
                      formIndex: false,
                      hint: 'Phone Number',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomFormField(
                formIndex: false,
                hint: 'Licence Plate Number',
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
