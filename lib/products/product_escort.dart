import 'package:envoymachaant/components/custom_radio_button.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/products/products.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class Escort extends StatefulWidget {
  Escort({Key? key}) : super(key: key);

  @override
  State<Escort> createState() => _EscortState();
}

class _EscortState extends State<Escort> {
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
          widthval: 60,
        ),
      ],
    );
  }
}

class AllProduct extends StatefulWidget {
  AllProduct({Key? key}) : super(key: key);

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  bool isSwitchchecked = false;
  swichChange(bool val) {
    setState(() {
      isSwitchchecked = val;
    });
  }

  List<String> title = [
    "Freight Service",
    "Courier Service",
    "Flight Service",
    "Shipping Service",
    "Escort Service"
  ];
  List<String> body = [
    "15 Locations",
    "15 Locations",
    "15 Locations",
    "15 Locations",
    "15 Locations",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 36),
      child: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(5, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProductCard(
              title: title[index],
              body: body[index],
            ),
          );
        }),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  String title;
  String body;
  ProductCard({
    required this.title,
    required this.body,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 160,
        width: 160,
        decoration: BoxDecoration(
          color: AppColors.gray7,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(bigcar),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                body,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ));
  }
}
