import 'package:envoymachaant/components/button_with_icon.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/components/custom_radio_button.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class RiderIdentification extends StatefulWidget {
  RiderIdentification({Key? key}) : super(key: key);

  @override
  State<RiderIdentification> createState() => _RiderIdentificationState();
}

class _RiderIdentificationState extends State<RiderIdentification> {
  bool isSwitchchecked = false;
  swichChange(bool val) {
    setState(() {
      isSwitchchecked = val;
    });
  }

  void radioSelectedChanged(String? val) {
    setState(() {
      Id = val!;
    });
  }

  String? Id = "national identification";

  @override
  Widget build(BuildContext context) {
    List<Widget> values = [
      RadioListTile(
          contentPadding: EdgeInsets.zero,
          activeColor: AppColors.Primarygold,
          visualDensity: const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity),
          title: Text(
            "National Identification",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          value: "national identification",
          groupValue: Id,
          onChanged: radioSelectedChanged),
      RadioListTile(
        contentPadding: EdgeInsets.zero,
        activeColor: AppColors.Primarygold,
        visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity),
        title: Text(
          "Voters Card",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        value: "voters card",
        groupValue: Id,
        onChanged: radioSelectedChanged,
      ),
      RadioListTile(
        contentPadding: EdgeInsets.zero,
        visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity),
        activeColor: AppColors.Primarygold,
        title: Text(
          "International Passport",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        value: "international passport",
        groupValue: Id,
        onChanged: radioSelectedChanged,
      ),
      RadioListTile(
        contentPadding: EdgeInsets.zero,
        activeColor: AppColors.Primarygold,
        visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity),
        title: Text(
          "Driver’s Licence",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        value: "driver’s licence",
        groupValue: Id,
        onChanged: radioSelectedChanged,
      )
    ];

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
              "Identification",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Select your preferred means of ID",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            customRadioButton(
              value: values,
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

class RiderIdentifications extends StatefulWidget {
  RiderIdentifications({Key? key}) : super(key: key);

  @override
  State<RiderIdentifications> createState() => _RiderIdentificationsState();
}

class _RiderIdentificationsState extends State<RiderIdentifications> {
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
              "Identification",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Enter your ID Number",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            CustomFormField(
              hint: 'Enter number',
              formIndex: false,
              obscureText: true,
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
