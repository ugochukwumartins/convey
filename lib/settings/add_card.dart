import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/constant/const.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  bool personal = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Add Card",
          isText: true,
          fontSize: 20,
          color: AppColors.black,
          backgroundColor: AppColors.white),
      body: Padding(
        padding: const EdgeInsets.only(top: 64, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Add and make payments easily using your card(s)",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                child: Row(
                  children: [
                    Image.asset(visa),
                    SizedBox(
                      width: 16,
                    ),
                    Image.asset(mastercard),
                    SizedBox(
                      width: 16,
                    ),
                    Image.asset(verve),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              CustomFormField(
                onTap: () {},
                hint: 'Card Number',
                headtext: 'Card Number',
                obscureText: false,
                fieldType: TextFieldType.amount,
                width: MediaQuery.of(context).size.width / 1.1,
                formIndex: true,
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  CustomFormField(
                    onTap: () {},
                    hint: 'Expiration Date'.toUpperCase(),
                    headtext: 'Expiration Date',
                    obscureText: false,
                    fieldType: TextFieldType.expiry,
                    width: 159,
                    formIndex: true,
                  ),
                  Spacer(),
                  CustomFormField(
                    onTap: () {},
                    hint: 'CVV',
                    headtext: 'CVV',
                    obscureText: false,
                    fieldType: TextFieldType.cvv,
                    width: 159,
                    formIndex: true,
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              CustomFormField(
                onTap: () {},
                hint: 'CARD PIN',
                headtext: 'CARD PIN',
                obscureText: false,
                fieldType: TextFieldType.amount,
                width: 159,
                formIndex: true,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  CustomButton(
                    disabled: true,
                    backgroundColor: AppColors.Primaryblue,
                    width: 102,
                    actionText: "Skip",
                    onTap: () {},
                  ),
                  Spacer(),
                  CustomButton(
                    disabled: true,
                    backgroundColor: AppColors.Primaryblue,
                    width: 217,
                    actionText: "Save",
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
