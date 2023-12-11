import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/card_details.dart';
import 'package:envoymachaant/components/drop_down.dart';
import 'package:envoymachaant/components/order_componet.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  bool change = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Payments",
          isText: true,
          fontSize: 20,
          color: AppColors.black,
          backgroundColor: AppColors.white),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Performance",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    DropDown(
                      enbleRight: true,
                      height: 40,
                      width: 132,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Dashborad(
                  title: "Orders Completed",
                  body: "7",
                  color: AppColors.Primaryblue,
                  height: 168,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Orders List',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 26.5,
                ),
                Orders1(
                  title: "56, Ajose Adeogun",
                  body: "12:00pm 22/12/2013",
                  actionText: "Ongoing",
                  icon: location,
                  width: 120,
                  ontap: () {},
                ),
                Orders1(
                  title: "56, Ajose Adeogun",
                  body: "12:00pm 22/12/2013",
                  actionText: "Ongoing",
                  icon: location,
                  width: 120,
                  ontap: () {},
                ),
                Orders1(
                  title: "56, Ajose Adeogun",
                  body: "12:00pm 22/12/2013",
                  actionText: "Ongoing",
                  icon: location,
                  width: 120,
                  ontap: () {},
                ),
                Orders1(
                  title: "56, Ajose Adeogun",
                  body: "12:00pm 22/12/2013",
                  actionText: "Ongoing",
                  icon: location,
                  width: 120,
                  ontap: () {},
                ),
                Orders1(
                  title: "56, Ajose Adeogun",
                  body: "12:00pm 22/12/2013",
                  actionText: "Ongoing",
                  icon: location,
                  width: 120,
                  ontap: () {},
                ),
              ]),
        ),
      ),
    );
  }
}
