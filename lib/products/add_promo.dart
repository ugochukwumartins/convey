import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/components/custom_radio_button.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AddPromo extends StatefulWidget {
  const AddPromo({Key? key}) : super(key: key);

  @override
  State<AddPromo> createState() => _AddPromoState();
}

class _AddPromoState extends State<AddPromo> {
  bool isSwitchchecked = false;
  swichChange(bool val) {
    setState(() {
      isSwitchchecked = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Add Promo",
          isText: true,
          fontSize: 20,
          color: AppColors.black,
          backgroundColor: AppColors.white),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "This is applicable to Interstate trips",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomSwitch(
                value: isSwitchchecked,
                onChanged: swichChange,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "This is applicable to Interstate trips",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomSwitch(
                value: isSwitchchecked,
                onChanged: swichChange,
              ),
              SizedBox(
                height: 20,
              ),
              CustomFormField(
                formIndex: true,
                hint: 'Enter figure',
                headtext: 'Cost/Km for Interstate Trips (N/Km)',
              ),
              SizedBox(
                height: 20,
              ),
              CustomFormField(
                formIndex: true,
                hint: 'Enter figure',
                headtext: 'Cost/Km for Interstate Trips (N/Km)',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomFormField(
                    width: 157,
                    formIndex: true,
                    hint: 'DD-MM',
                    headtext: 'Start date',
                  ),
                  Spacer(),
                  CustomFormField(
                    width: 157,
                    formIndex: true,
                    hint: 'DD-MM',
                    headtext: 'End date',
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                disabled: true,
                backgroundColor: AppColors.Primaryblue,
                width: MediaQuery.sizeOf(context).width,
                actionText: "Submit",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
