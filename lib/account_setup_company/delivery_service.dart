import 'package:envoymachaant/account_setup_company/convey_service_stepper.dart';
import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/convey_service_card.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class DeliveryService extends StatefulWidget {
  DeliveryService({Key? key}) : super(key: key);

  @override
  State<DeliveryService> createState() => _DeliveryServiceState();
}

class _DeliveryServiceState extends State<DeliveryService> {
  bool? val = false;

  void valChange(bool? value) {
    setState(() {
      val = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 34,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Delivery Service",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 32,
            ),
            ConveyServiceCard(
              text: "Freight Service",
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
              text: "Courier Service",
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
              text: "Shipping",
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
              text: "Fight",
              isChecked: val,
              onChange: valChange,
              height: 72,
              trailingIcon: packages,
              //iconcolor: AppColors.altYellow,
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
