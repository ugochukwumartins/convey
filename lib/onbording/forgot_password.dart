import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/components/success.dart';
import 'package:envoymachaant/onbording/forgot_password_pin.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "",
          isText: true,
          fontSize: 20,
          color: AppColors.black,
          backgroundColor: AppColors.white),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Forgot Password?',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Enter your registered email to get a reset code',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 32,
              ),
              CustomFormField(
                onTap: () {},
                hint: 'Email Address',
                headtext: "Email Address",
                obscureText: false,
                keyboardType: TextInputType.phone,
                width: MediaQuery.of(context).size.width / 1.1,
                formIndex: false,
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                backgroundColor: AppColors.Primaryblue,
                width: MediaQuery.sizeOf(context).width,
                actionText: "Request Reset Code",
                height: 60,
                disabled: false,
                disabledColor: AppColors.gray7,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword1()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
