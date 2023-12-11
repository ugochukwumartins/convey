import 'package:envoymachaant/account_setup_company/captain_service.dart';
import 'package:envoymachaant/account_setup_company/create_pin.dart';
import 'package:envoymachaant/account_setup_company/delivery_service.dart';
import 'package:envoymachaant/account_setup_company/delivery_services_courier.dart';
import 'package:envoymachaant/account_setup_company/delivery_services_freight.dart';
import 'package:envoymachaant/account_setup_company/delivery_services_shipping.dart';
import 'package:envoymachaant/account_setup_company/escourt_service.dart';
import 'package:envoymachaant/account_setup_company/hired_service.dart';
import 'package:envoymachaant/account_setup_company/set_security_questions.dart';
import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class ConveyServiceStepper extends StatefulWidget {
  ConveyServiceStepper({Key? key}) : super(key: key);

  @override
  State<ConveyServiceStepper> createState() => _ConveyServiceStepperState();
}

class _ConveyServiceStepperState extends State<ConveyServiceStepper> {
  int _activeCurrentStep = 0;
  List<Step> stepList() => [
        Step(
          isActive: _activeCurrentStep >= 0,
          title: Text(''),
          content: EscortService(),
        ),
        Step(
          isActive: _activeCurrentStep >= 1,
          title: Text(''),
          content: DeliveryService(),
        ),
        Step(
          isActive: _activeCurrentStep >= 2,
          title: Text(''),
          content: FreightService(),
        ),
        Step(
          isActive: _activeCurrentStep >= 3,
          title: Text(''),
          content: CourierService(),
        ),
        Step(
          isActive: _activeCurrentStep >= 4,
          title: Text(''),
          content: ShippingService(),
        ),
        Step(
          isActive: _activeCurrentStep >= 5,
          title: Text(''),
          content: HiredService(),
        ),
        Step(
          isActive: _activeCurrentStep >= 6,
          title: Text(''),
          content: CaptainService(),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Convey Services",
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
              print(_activeCurrentStep);
            });
            // if (_activeCurrentStep >= 1) {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => FreightService()),
            //   );
            // }
          },
          controlsBuilder: (context, details) {
            return CustomButton(
              fillColor: AppColors.black,
              backgroundColor: AppColors.Primaryblue,
              disabled: false,
              actionText: _activeCurrentStep >= 1 ? "Continue" : "Submit",
              onTap: details.onStepContinue,
            );
          },
        ),
      ),
    );
  }
}
