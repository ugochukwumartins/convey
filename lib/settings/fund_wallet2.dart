import 'package:envoymachaant/components/app_activation_pin.dart';
import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/components/dialog.dart';
import 'package:envoymachaant/components/tapbutton.dart';
import 'package:envoymachaant/constant/const.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class FundWallet2 extends StatelessWidget {
  const FundWallet2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Fund Wallet",
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
              Text(
                "How do you want to fund your wallet?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  TapButton(texts: "10,000.00"),
                  SizedBox(
                    width: 11,
                  ),
                  TapButton(texts: "20,000.00"),
                  SizedBox(
                    width: 11,
                  ),
                  TapButton(texts: "50,000.00"),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  TapButton(texts: "100,000.00"),
                  SizedBox(
                    width: 11,
                  ),
                  TapButton(texts: "Other Amount"),
                  SizedBox(
                    width: 11,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              CustomFormField(
                onTap: () {},
                hint: 'Amount',
                headtext: 'Enter desired amount',
                obscureText: false,
                fieldType: TextFieldType.amount,
                width: MediaQuery.of(context).size.width / 1.1,
                formIndex: true,
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                disabled: false,
                backgroundColor: AppColors.Primaryblue,
                width: MediaQuery.sizeOf(context).width,
                actionText: "Proceed",
                onTap: () {
                  DialogWidgets.modalBottomSheetMenu(
                      context,
                      AppAtivationPin(
                        title: "Fee Remittance",
                        body: "Enter your PIN to make payment with Wallet",
                      ),
                      null,
                      buttonText: "Make Payment",
                      height: MediaQuery.sizeOf(context).height / 3.5);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
