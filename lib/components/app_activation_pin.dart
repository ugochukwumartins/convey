import 'dart:async';

import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AppAtivationPin extends StatefulWidget {
  String title;
  String body;

  AppAtivationPin(
      {this.title = "App Activation",
      this.body = "Enter your PIN to make payment with Wallet"});

  @override
  State<AppAtivationPin> createState() => _AppAtivationPinState();
}

class _AppAtivationPinState extends State<AppAtivationPin> {
  StreamController<ErrorAnimationType>? errorController;

  final TextEditingController _otpController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  final TextEditingController _otpController1 = TextEditingController();

  final formKey1 = GlobalKey<FormState>();
  bool isVerify = false;

  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        widget.title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Text(
        widget.body,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 32,
      ),
      Form(
        key: formKey,
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0),
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
                inactiveFillColor: AppColors.white, //const Color(0xFFC4C4C4),
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
      SizedBox(
        height: 24,
      ),
    ]);
  }
}

class AppAtivation2 extends StatefulWidget {
  String title;
  String body;
  String subBody;
  String iconsval;

  AppAtivation2({
    this.title = "App Activation",
    this.body = "Make payment and send evidence of payment via email",
    this.subBody = "Wallet Account Numbers",
    this.iconsval = wallet,
  });

  @override
  State<AppAtivation2> createState() => _AppAtivation2State();
}

class _AppAtivation2State extends State<AppAtivation2> {
  StreamController<ErrorAnimationType>? errorController;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        widget.title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Text(
        widget.body,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 24,
      ),
      Row(
        children: [
          Text(
            widget.subBody,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          SvgPicture.asset(
            widget.iconsval,
            height: 20,
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      BankContainer(),
      SizedBox(
        height: 10,
      ),
      BankContainer(),
      SizedBox(
        height: 24,
      ),
    ]);
  }
}

class BankContainer extends StatelessWidget {
  String banknuber;
  String name;
  String bank;
  String accountNum;
  BankContainer({
    this.accountNum = "0123456789",
    this.bank = "GTB",
    this.banknuber = "Bank 1",
    this.name = "Name: Bami Bello",
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(border: Border.all(width: 0.2)),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,
          bottom: 8,
          left: 16,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              banknuber,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Name:  ${name}",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Bank: ${bank}",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Text(
                  "Acc No: ${accountNum}",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                SvgPicture.asset(copy),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BankContainer1 extends StatelessWidget {
  String bank;
  String accountNum;
  BankContainer1({
    this.accountNum = "0123456789",
    this.bank = "GTB",
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(border: Border.all(width: 0.2)),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,
          bottom: 8,
          left: 16,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bank: ${bank}",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Text(
                  "Acc No: ${accountNum}",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                SvgPicture.asset(copy),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
