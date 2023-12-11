import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PendingOrOngoingOrder extends StatelessWidget {
  String? location;
  String? destination;
  String? distance;
  String? amountinkm;
  String? amount;
  String? status;
  PendingOrOngoingOrder(
      {this.amount = 'N3,450.00',
      this.amountinkm = 'N200.00',
      this.destination = '403, Ikorodu Road, Lagos',
      this.distance = '20km',
      this.location = '43, Palmgrove Avenue',
      this.status = '#Complete'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Orders",
          isText: true,
          fontSize: 20,
          color: AppColors.black,
          backgroundColor: AppColors.white),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              status!,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 24,
            ),

            // Container(
            //   height: 300,
            //   width: 350,
            //   child: ConveyMap(),
            // ),

            SizedBox(
              height: 16,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.only(
                top: 12,
                bottom: 12,
                left: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                // border: Border.all(),
                color: AppColors.gray7,
              ),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Driver driving to Pick-up Location",
                      style: TextStyle(
                        color: AppColors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: Text(
                      "Arriving in 20 mins",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.blue,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(profile),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [Text("4.5"), SvgPicture.asset(star)],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text("13 Trips")
                  ],
                ),
                SizedBox(
                  width: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Location"),
                    Row(
                      children: [Image.asset(locate), Text(location!)],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Destination"),
                    Row(
                      children: [
                        Image.asset(
                          locate,
                          color: AppColors.blue,
                        ),
                        Text(destination!)
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Distance",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      distance!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Amount Estimate/Km",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      amountinkm!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Amount Estimated",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      amount!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 40,
            ),
            CustomButton(
              disabled: false,
              backgroundColor: AppColors.Primaryblue,
              width: MediaQuery.sizeOf(context).width,
              actionText: "Slide right to end trip",
              onTap: () {},
            ),
            CustomButton(
              isOutline: true,
              outLineColor: AppColors.red2,
              disabled: false,
              actionTextColor: AppColors.red2,
              backgroundColor: AppColors.white,
              width: MediaQuery.sizeOf(context).width,
              actionText: "Cancel Trip",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
