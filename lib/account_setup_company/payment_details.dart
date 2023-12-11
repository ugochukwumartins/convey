import 'package:envoymachaant/account_setup_company/convey_service_stepper.dart';
import 'package:envoymachaant/account_setup_company/payment_detail.dart';
import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/convey_service_card.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/components/drop_down.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class PaymentDetails extends StatefulWidget {
  PaymentDetails({Key? key}) : super(key: key);

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  bool? val = false;

  void valChange(bool? value) {
    setState(() {
      val = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,
          text: "Payment Details",
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
                "Please provide your account details to complete your profile",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 32,
              ),
              CustomFormField(
                formIndex: false,
                hint: 'Company Account Number',
                headtext: 'Company Account Number',
              ),
              SizedBox(
                height: 20,
              ),
              DropDownFeild(),
              SizedBox(
                height: 20,
              ),
              CustomFormField(
                formIndex: false,
                hint: 'Account Name',
                headtext: 'Account Name',
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Add Another Account +",
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w500,
                  color: AppColors.Primarygold,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                fillColor: AppColors.black,
                backgroundColor: AppColors.Primaryblue,
                disabled: false,
                actionText: "Submit",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentDetail()),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
