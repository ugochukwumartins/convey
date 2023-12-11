import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/custom_radio_button.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/products/product_courier.dart';
import 'package:envoymachaant/products/product_escort.dart';
import 'package:envoymachaant/products/product_freight.dart';
import 'package:envoymachaant/products/product_promo.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Products",
          isText: true,
          fontSize: 20,
          color: AppColors.black,
          backgroundColor: AppColors.white),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(),
                          color: AppColors.black),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "All",
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          // border: Border.all(),
                          borderRadius: BorderRadius.circular(14),
                          color: AppColors.gray7),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Escort",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 3;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          // border: Border.all(),
                          borderRadius: BorderRadius.circular(14),
                          color: AppColors.gray7),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Freight",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 4;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          // border: Border.all(),
                          borderRadius: BorderRadius.circular(14),
                          color: AppColors.gray7),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Flight",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 5;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          // border: Border.all(),
                          borderRadius: BorderRadius.circular(14),
                          color: AppColors.gray7),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Courier",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              currentIndex == 1
                  ? Container(
                      height: MediaQuery.sizeOf(context).height / 1.3,
                      child: AllProduct())
                  : currentIndex == 2
                      ? Escort()
                      : currentIndex == 3
                          ? Freight()
                          : currentIndex == 4
                              ? Promo()
                              : currentIndex == 5
                                  ? Courier()
                                  : Container(
                                      height:
                                          MediaQuery.sizeOf(context).height /
                                              1.3,
                                      child: AllProduct()),
            ],
          ),
        ),
      ),
    );
  }
}

Row ProductRow({
  required Widget leading,
  required Widget trailing,
  double? widthval,
}) {
  return Row(
    children: [
      leading,
      SizedBox(
        width: widthval ?? 100,
      ),
      trailing
    ],
  );
}
