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

class IndividualSignUp extends StatefulWidget {
  IndividualSignUp({Key? key}) : super(key: key);

  @override
  State<IndividualSignUp> createState() => _IndividualSignUpState();
}

class _IndividualSignUpState extends State<IndividualSignUp> {
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
          height: 60,
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
              CustomFormField(
                formIndex: false,
                hint: 'Email Address',
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
                hint: 'Password',
                formIndex: false,
                obscureText: true,
                sIcon: Image.asset(eyes),
              ),
              SizedBox(
                height: 10,
              ),
              CustomFormField(
                hint: 'Confirm Password',
                formIndex: false,
                obscureText: true,
                sIcon: Image.asset(eyes),
              ),
              SizedBox(
                height: 10,
              ),
              CustomFormField(
                formIndex: false,
                hint: 'Referral code (if available)',
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
