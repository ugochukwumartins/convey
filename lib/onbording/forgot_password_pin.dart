import 'dart:async';
import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/onbording/new_password.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgotPassword1 extends StatefulWidget {
  const ForgotPassword1({Key? key}) : super(key: key);

  @override
  State<ForgotPassword1> createState() => _ForgotPassword1State();
}

class _ForgotPassword1State extends State<ForgotPassword1> {
  bool isVerify = false;
  StreamController<ErrorAnimationType>? errorController;
  final TextEditingController _otpController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String currentText = "";
  bool resend = false;
  Timer? countDownTimer;

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
                "Enter reset code sent to ****4678",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
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
                          return "less than length";
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
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      errorAnimationController: errorController,
                      controller: _otpController,
                      keyboardType: TextInputType.number,
                      onCompleted: (v) {
                        print("Completed");
                        print(_otpController.text);
                      },
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");

                        return true;
                      },
                    )),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                backgroundColor: AppColors.Primaryblue,
                width: MediaQuery.sizeOf(context).width,
                actionText: "Submit",
                height: 60,
                disabled: false,
                disabledColor: AppColors.gray7,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewPassword()),
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
