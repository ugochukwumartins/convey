import 'package:envoymachaant/account_setup_company/create_pin.dart';
import 'package:envoymachaant/account_setup_company/delivery_services_courier.dart';
import 'package:envoymachaant/account_setup_company/set_security_questions.dart';
import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class SecurityDetails extends StatefulWidget {
  SecurityDetails({Key? key}) : super(key: key);

  @override
  State<SecurityDetails> createState() => _SecurityDetailsState();
}

class _SecurityDetailsState extends State<SecurityDetails> {
  int _activeCurrentStep = 0;
  List<Step> stepList() => [
        Step(
          isActive: _activeCurrentStep >= 0,
          title: Text(''),
          content: SetSecurityQuestions(),
        ),
        Step(
          isActive: _activeCurrentStep >= 1,
          title: Text(''),
          content: CreatePin(),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Security Details",
          isText: true,
          fontSize: 20,
          color: AppColors.black,
          backgroundColor: AppColors.white),
      body: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(
            primary: AppColors.Primarygold,
          ),
        ),
        child: Stepper(
          currentStep: _activeCurrentStep,
          type: StepperType.horizontal,
          steps: stepList(),
          onStepContinue: () {
            if (_activeCurrentStep < (stepList().length - 1)) {
              setState(() {
                _activeCurrentStep += 1;
              });
            }
          },
          onStepCancel: () {
            if (_activeCurrentStep == 0) {
              return;
            }

            setState(() {
              _activeCurrentStep -= 1;
            });
          },
          onStepTapped: (int index) {
            setState(() {
              _activeCurrentStep = index;
            });
          },
          controlsBuilder: (context, details) {
            return CustomButton(
              fillColor: AppColors.black,
              backgroundColor: AppColors.Primaryblue,
              disabled: true,
              actionText: _activeCurrentStep >= 1 ? "Complete" : "Continue",
              onTap: details.onStepContinue,
            );
          },
        ),
      ),
    );
  }
}
