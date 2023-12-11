import 'dart:async';
import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyPhoneNumberAndEmail extends StatefulWidget {
  const VerifyPhoneNumberAndEmail({Key? key}) : super(key: key);

  @override
  State<VerifyPhoneNumberAndEmail> createState() =>
      _VerifyPhoneNumberAndEmailState();
}

class _VerifyPhoneNumberAndEmailState extends State<VerifyPhoneNumberAndEmail> {
  bool isVerify = false;
  bool isVerify1 = true;
  StreamController<ErrorAnimationType>? errorController;
  final TextEditingController _otpController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final TextEditingController _otpController1 = TextEditingController();
  final formKey1 = GlobalKey<FormState>();
  String currentText = "";

  Duration duration = Duration(minutes: 1, seconds: 0);
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Verify Details",
          isText: true,
          fontSize: 20,
          color: AppColors.black,
          backgroundColor: AppColors.white),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: isVerify ? AppColors.appbarbg : AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Enter OTP sent to ****4567 to Verify Phone Number",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: isVerify ? AppColors.black2 : AppColors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Form(
                      key: formKey,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 0),
                          child: PinCodeTextField(
                            appContext: context,
                            readOnly: isVerify ? true : false,
                            pastedTextStyle: TextStyle(
                              color: Colors.green.shade600,
                              fontWeight: FontWeight.bold,
                            ),
                            length: 6,
                            obscureText: true,
                            obscuringCharacter: '*',
                            obscuringWidget: Text(
                              "*",
                            ),
                            blinkWhenObscuring: true,
                            animationType: AnimationType.fade,
                            validator: (v) {
                              if (v!.length < 5) {
                                return "Altinvest Validator";
                              } else {
                                return null;
                              }
                            },
                            pinTheme: PinTheme(
                              inactiveColor: const Color(0xFF7B7A77),
                              inactiveFillColor:
                                  AppColors.white, //const Color(0xFFC4C4C4),
                              activeColor: const Color(0xFF0B0A0A),
                              selectedColor: const Color(0xFF0B0A0A),
                              selectedFillColor: const Color(0xFFFFFDF6),
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(5),
                              fieldHeight: 50,
                              fieldWidth: 40,
                              activeFillColor: const Color(0xFFFFFFFF),
                            ),
                            cursorColor: Colors.black,
                            animationDuration:
                                const Duration(milliseconds: 300),
                            enableActiveFill: true,
                            errorAnimationController: errorController,
                            controller: _otpController,
                            keyboardType: TextInputType.number,
                            // boxShadows: const [
                            //   BoxShadow(
                            //     offset: Offset(0, 1),
                            //     color: Colors.black12,
                            //     blurRadius: 10,
                            //   )
                            // ],
                            onCompleted: (v) {
                              print("Completed");
                              print(_otpController.text);
                            },
                            // onTap: () {
                            //   print("Pressed");
                            // },
                            onChanged: (value) {
                              print(value);
                              setState(() {
                                currentText = value;
                              });
                            },
                            beforeTextPaste: (text) {
                              print("Allowing to paste $text");
                              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                              //but you can show anything you want here, like your pop up saying wrong paste format or etc
                              return true;
                            },
                          )),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Divider(
                      thickness: 1,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                color: isVerify1 ? AppColors.appbarbg : AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Enter OTP sent to ****bd@gmail.com to Verify Email Address",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: isVerify1 ? AppColors.black2 : AppColors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Form(
                      key: formKey1,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 0),
                          child: PinCodeTextField(
                            readOnly: isVerify1 ? true : false,
                            appContext: context,
                            pastedTextStyle: TextStyle(
                              color: Colors.green.shade600,
                              fontWeight: FontWeight.bold,
                            ),
                            length: 6,
                            obscureText: true,
                            obscuringCharacter: '*',
                            obscuringWidget: Text(
                              "*",
                            ),
                            blinkWhenObscuring: true,
                            animationType: AnimationType.fade,
                            validator: (v) {
                              if (v!.length < 5) {
                                return "Altinvest Validator";
                              } else {
                                return null;
                              }
                            },
                            pinTheme: PinTheme(
                              inactiveColor: const Color(0xFF7B7A77),
                              inactiveFillColor:
                                  AppColors.white, //const Color(0xFFC4C4C4),
                              activeColor: const Color(0xFF0B0A0A),
                              selectedColor: const Color(0xFF0B0A0A),
                              selectedFillColor: const Color(0xFFFFFDF6),
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(5),
                              fieldHeight: 50,
                              fieldWidth: 40,
                              activeFillColor: const Color(0xFFFFFFFF),
                            ),
                            cursorColor: Colors.black,
                            animationDuration:
                                const Duration(milliseconds: 300),
                            enableActiveFill: true,
                            errorAnimationController: errorController,
                            controller: _otpController1,
                            keyboardType: TextInputType.number,
                            // boxShadows: const [
                            //   BoxShadow(
                            //     offset: Offset(0, 1),
                            //     color: Colors.black12,
                            //     blurRadius: 10,
                            //   )
                            // ],
                            onCompleted: (v) {
                              print("Completed");
                              print(_otpController1.text);
                            },
                            // onTap: () {
                            //   print("Pressed");
                            // },
                            onChanged: (value) {
                              print(value);
                              setState(() {
                                currentText = value;
                              });
                            },
                            beforeTextPaste: (text) {
                              print("Allowing to paste $text");
                              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                              //but you can show anything you want here, like your pop up saying wrong paste format or etc
                              return true;
                            },
                          )),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                disabled: true,
                backgroundColor: AppColors.Primaryblue,
                width: MediaQuery.sizeOf(context).width,
                actionText: "Complete",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
