import 'package:envoymachaant/components/custom_radio_button.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/products/products.dart';
import 'package:flutter/material.dart';

class Courier extends StatefulWidget {
  Courier({Key? key}) : super(key: key);

  @override
  State<Courier> createState() => _CourierState();
}

class _CourierState extends State<Courier> {
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
          "Product Details",
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
            "Insterstate Cost:",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: Text(
            "N2,000 / Km",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          widthval: 50,
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
            "Instrastate Cost:",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: Text(
            "N1,200/km",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          widthval: 50,
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
            "Delivery time::",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: Text(
            "60km/hr",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          widthval: 70,
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
            "Vehicle Type:",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: Text(
            "Bicycle, Motorcycl...+3",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          widthval: 70,
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
            "Locations:",
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
          widthval: 85,
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
            "Licence Plates:",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: Text(
            "Licenses.excl.doc",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          widthval: 50,
        ),
      ],
    );
  }
}
