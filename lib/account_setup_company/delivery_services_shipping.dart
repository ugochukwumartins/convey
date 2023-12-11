import 'package:envoymachaant/components/button_with_icon.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/components/custom_radio_button.dart';
import 'package:envoymachaant/components/drop_down.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class ShippingService extends StatefulWidget {
  ShippingService({Key? key}) : super(key: key);

  @override
  State<ShippingService> createState() => _ShippingServiceState();
}

class _ShippingServiceState extends State<ShippingService> {
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
              "Shipping Service",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 24,
            ),
            DropDownFeild(),
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
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
