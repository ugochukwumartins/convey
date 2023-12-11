import 'package:envoymachaant/account_setup_company/convey_service_stepper.dart';
import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/convey_service_card.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class ConveyService extends StatefulWidget {
  ConveyService({Key? key}) : super(key: key);

  @override
  State<ConveyService> createState() => _ConveyServiceState();
}

class _ConveyServiceState extends State<ConveyService> {
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
          text: "Convey Services",
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
                "Select the services you offer to proceed",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 32,
              ),
              ConveyServiceCard(
                text: "Delivery Service",
                isChecked: val,
                onChange: valChange,
                height: 72,
                // iconcolor: AppColors.altYellow,
                trailingIcon: packages,
              ),
              SizedBox(
                height: 16,
              ),
              ConveyServiceCard(
                text: "Escort Service",
                isChecked: val,
                onChange: valChange,
                height: 72,
                trailingIcon: car,
                //iconcolor: AppColors.blue,
              ),
              SizedBox(
                height: 16,
              ),
              ConveyServiceCard(
                text: "Captain Service",
                isChecked: val,
                onChange: valChange,
                height: 72,
                trailingIcon: packages,
                // iconcolor: AppColors.altYellow,
              ),
              SizedBox(
                height: 16,
              ),
              ConveyServiceCard(
                text: "Hired Service",
                isChecked: val,
                onChange: valChange,
                height: 72,
                trailingIcon: packages,
                //iconcolor: AppColors.altYellow,
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                fillColor: AppColors.black,
                backgroundColor: AppColors.Primaryblue,
                disabled: false,
                actionText: "Apply Settings",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConveyServiceStepper()),
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
