import 'dart:async';

import 'package:envoymachaant/account_setup_company/captain_service.dart';
import 'package:envoymachaant/account_setup_company/create_pin.dart';
import 'package:envoymachaant/account_setup_company/delivery_service.dart';
import 'package:envoymachaant/account_setup_company/delivery_services_courier.dart';
import 'package:envoymachaant/account_setup_company/delivery_services_freight.dart';
import 'package:envoymachaant/account_setup_company/delivery_services_shipping.dart';
import 'package:envoymachaant/account_setup_company/escourt_service.dart';
import 'package:envoymachaant/account_setup_company/hired_service.dart';
import 'package:envoymachaant/account_setup_company/set_security_questions.dart';
import 'package:envoymachaant/account_setup_rider/create_riders_pin.dart';
import 'package:envoymachaant/account_setup_rider/driving_document_test.dart';
import 'package:envoymachaant/account_setup_rider/driving_documents_test.dart';
import 'package:envoymachaant/account_setup_rider/rider_identification.dart';
import 'package:envoymachaant/account_setup_rider/security_question_rider.dart';
import 'package:envoymachaant/account_setup_rider/upload_rider_id.dart';
import 'package:envoymachaant/account_setup_rider/upload_rider_photo.dart';
import 'package:envoymachaant/components/app_activation_pin.dart';
import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/dialog.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class RiderAccountSetupStepper extends StatefulWidget {
  RiderAccountSetupStepper({Key? key}) : super(key: key);

  @override
  State<RiderAccountSetupStepper> createState() =>
      _RiderAccountSetupStepperState();
}

class _RiderAccountSetupStepperState extends State<RiderAccountSetupStepper> {
  bool isVerify1 = true;

  int _activeCurrentStep = 0;

  List<Step> stepList() => [
        Step(
          isActive: _activeCurrentStep >= 0,
          title: Text(''),
          content: RiderIdentification(),
        ),
        Step(
          isActive: _activeCurrentStep >= 1,
          title: Text(''),
          content: RiderIdentifications(),
        ),
        Step(
          isActive: _activeCurrentStep >= 2,
          title: Text(''),
          content: UploadRiderId(),
        ),
        Step(
          isActive: _activeCurrentStep >= 3,
          title: Text(''),
          content: UploadRiderPhoto(),
        ),
        Step(
          isActive: _activeCurrentStep >= 4,
          title: Text(''),
          content: SetSecuritysQuestions(),
        ),
        Step(
          isActive: _activeCurrentStep >= 5,
          title: Text(''),
          content: CreatePinRider(),
        ),
        Step(
          isActive: _activeCurrentStep >= 6,
          title: Text(''),
          content: DrivingDocumentTest(),
        ),
        Step(
          isActive: _activeCurrentStep >= 6,
          title: Text(''),
          content: DrivingDocumentsTest(),
        ),
        Step(
          isActive: _activeCurrentStep >= 6,
          title: Text(''),
          content: DrivingDocumentsTestSucces(),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Set-up Account",
          isText: true,
          fontSize: 20,
          color: AppColors.black,
          backgroundColor: AppColors.white),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 40,
              bottom: 32,
            ),
            child: const Text(
              "Complete your account set-up to be able to get requests on Convey.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            height: MediaQuery.sizeOf(context).height / 1.4,
            child: Theme(
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
                    if (_activeCurrentStep == 8) {
                      DialogWidgets.modalBottomSheetMenu(
                          context, AppAtivation2(), null,
                          buttonText: "Make Payment",
                          height: MediaQuery.sizeOf(context).height / 1.5);
                    }
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
                    actionText: _activeCurrentStep == 1
                        ? "Take a Photo of ID"
                        : _activeCurrentStep == 6
                            ? "Submit & Take a Test"
                            : _activeCurrentStep == 8
                                ? "Complete"
                                : "Continue",
                    onTap: details.onStepContinue,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
