import 'package:envoymachaant/components/button_with_icon.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/components/custom_radio_button.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class EscortService extends StatefulWidget {
  EscortService({Key? key}) : super(key: key);

  @override
  State<EscortService> createState() => _EscortServiceState();
}

class _EscortServiceState extends State<EscortService> {
  bool isSwitchchecked = false;
  swichChange(bool val) {
    setState(() {
      isSwitchchecked = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Escort Service",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Do you do Interstate trips?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
              "Do you do Interstate trips?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
              formIndex: false,
              hint: 'Enter figure',
              headtext: 'Cost/Km for Interstate Trips (N/Km)',
            ),
            SizedBox(
              height: 20,
            ),
            CustomFormField(
              formIndex: false,
              hint: 'Enter figure',
              headtext: 'Cost/Km for Interstate Trips (N/Km)',
            ),
            SizedBox(
              height: 20,
            ),
            CustomFormField(
              formIndex: false,
              keyboardType: TextInputType.multiline,
              hint: 'Enter figure',
              maxline: 10,
              headtext: 'Cost/Km for Interstate Trips (N/Km)',
            ),
            SizedBox(
              height: 20,
            ),
            CustomFormField(
              formIndex: false,
              hint: 'Press space to enter multiple',
              headtext: 'Enter Licence Plate Number(s)',
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              "OR",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            ButtonWithIcons(
              text: "Upload excl doc of Nums",
              reSize: true,
              width: 240,
              isTrailing: true,
              trailingIcon: share,
              iconcolor: AppColors.black,
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
