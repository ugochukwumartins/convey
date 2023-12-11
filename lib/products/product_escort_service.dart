import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/components/custom_radio_button.dart';
import 'package:envoymachaant/components/drop_down.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class ProductEscortService extends StatefulWidget {
  ProductEscortService({Key? key}) : super(key: key);

  @override
  State<ProductEscortService> createState() => _ProductEscortServiceState();
}

class _ProductEscortServiceState extends State<ProductEscortService> {
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
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Escort Service",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 24,
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
        ],
      ),
    );
  }
}

class ProductDeliveryService extends StatefulWidget {
  ProductDeliveryService({Key? key}) : super(key: key);

  @override
  State<ProductDeliveryService> createState() => _ProductDeliveryServiceState();
}

class _ProductDeliveryServiceState extends State<ProductDeliveryService> {
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
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Delivery / Shipping Service",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "Select Promo Type",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          DropDownFeild(),
          SizedBox(
            height: 24,
          ),
          Text(
            "Select target Ports",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          DropDownFeild(),
          SizedBox(
            height: 24,
          ),
          Text(
            "Cargo Type(s)",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          DropDownFeild(),
          SizedBox(
            height: 24,
          ),
          CustomFormField(
            formIndex: true,
            hint: 'Enter percentage. e.g 20',
            headtext: 'Enter Promo Percentage (%)',
          ),
          SizedBox(
            height: 20,
          ),
          CustomFormField(
            formIndex: true,
            hint: 'Enter number e.g. 3',
            headtext: 'How many trips to get free service?',
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
        ],
      ),
    );
  }
}
