import 'package:envoymachaant/components/custom_radio_button.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/products/products.dart';
import 'package:flutter/material.dart';

class Promo extends StatefulWidget {
  Promo({Key? key}) : super(key: key);

  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  bool isSwitchchecked = false;
  swichChange(bool val) {
    setState(() {
      isSwitchchecked = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset(bigcar),
        ),
        SizedBox(
          height: 32,
        ),
        Text(
          "Promo Details",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        ProductRow(
          leading: Text(
            "Interstate",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: CustomSwitch(
            value: isSwitchchecked,
            onChanged: swichChange,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Divider(),
        SizedBox(
          height: 12,
        ),
        ProductRow(
          leading: Text(
            "Intrastate",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: CustomSwitch(
            value: isSwitchchecked,
            onChanged: swichChange,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Divider(),
        SizedBox(
          height: 12,
        ),
        ProductRow(
          leading: Text(
            "Promo Type",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: Text(
            "Percentage",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          widthval: 80,
        ),
        SizedBox(
          height: 12,
        ),
        Divider(),
        SizedBox(
          height: 12,
        ),
        ProductRow(
          leading: Text(
            "Promo Percentage",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: Text(
            "20%",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          widthval: 30,
        ),
        SizedBox(
          height: 12,
        ),
        Divider(),
        SizedBox(
          height: 12,
        ),
        ProductRow(
          leading: Text(
            "Start Date:",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: Text(
            "23/11/23",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          widthval: 90,
        ),
        SizedBox(
          height: 12,
        ),
        Divider(),
        SizedBox(
          height: 12,
        ),
        ProductRow(
          leading: Text(
            "End Date:",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: Text(
            "23/11/23",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          widthval: 95,
        ),
        SizedBox(
          height: 12,
        ),
        Divider(),
        SizedBox(
          height: 12,
        ),
        ProductRow(
          leading: Text(
            "Target Locations:",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: Text(
            "Ketu, Gwarimpa,... +24",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          widthval: 40,
        ),
        SizedBox(
          height: 12,
        ),
        Divider(),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }
}