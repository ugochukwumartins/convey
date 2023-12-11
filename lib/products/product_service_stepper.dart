import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/products/add_promo.dart';
import 'package:envoymachaant/products/product_escort_service.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class ProductServiceStepper extends StatefulWidget {
  const ProductServiceStepper({Key? key}) : super(key: key);

  @override
  State<ProductServiceStepper> createState() => _ProductServiceStepperState();
}

class _ProductServiceStepperState extends State<ProductServiceStepper> {
  int _activeCurrentStep = 0;
  List<Step> stepList() => [
        Step(
          isActive: _activeCurrentStep >= 0,
          title: Text(''),
          content: ProductEscortService(),
        ),
        Step(
          isActive: _activeCurrentStep >= 1,
          title: Text(''),
          content: ProductDeliveryService(),
        ),
        Step(
          isActive: _activeCurrentStep >= 2,
          title: Text(''),
          content: ProductEscortService(),
        ),
        Step(
          isActive: _activeCurrentStep >= 3,
          title: Text(''),
          content: ProductEscortService(),
        ),
        Step(
          isActive: _activeCurrentStep >= 4,
          title: Text(''),
          content: ProductEscortService(),
        ),
        Step(
          isActive: _activeCurrentStep >= 5,
          title: Text(''),
          content: ProductEscortService(),
        ),
        Step(
          isActive: _activeCurrentStep >= 6,
          title: Text(''),
          content: ProductEscortService(),
        ),
      ];

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
