import 'package:envoymachaant/components/button_with_icon.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/components/custom_radio_button.dart';
import 'package:envoymachaant/components/drop_down.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class CourierService extends StatefulWidget {
  CourierService({Key? key}) : super(key: key);

  @override
  State<CourierService> createState() => _CourierServiceState();
}

class _CourierServiceState extends State<CourierService> {
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
              "Delivery Service",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.Primarygold),
            ),
            SizedBox(
              height: 24,
            ),
            const Text(
              "Courier Service",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Do you do Interstate trips?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
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
              hint: 'Enter figure',
              headtext: 'Average Estimated Delivery Speed (Km/h)',
            ),
            SizedBox(
              height: 20,
            ),
            CustomFormField(
              formIndex: false,
              hint: 'Select the vehicle types you have',
              headtext: 'Vehicle Type(s)',
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
              keyboardType: TextInputType.multiline,
              hint:
                  'Tell your customers about your experience in Freight Service',
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
