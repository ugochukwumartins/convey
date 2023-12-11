import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TripPaymentConfirmation extends StatelessWidget {
  const TripPaymentConfirmation({Key? key}) : super(key: key);

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
                      "Trip Cost:  N20,000.00",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: Text(
                      "Code: REC7823",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.red,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 56,
            ),
            CustomButton(
              disabled: false,
              backgroundColor: AppColors.Primaryblue,
              width: MediaQuery.sizeOf(context).width,
              actionText: "Payment Received",
              onTap: () {},
            ),
            SizedBox(
              height: 32,
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Rate this customer",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              itemSize: 60,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              maxRating: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: AppColors.Primaryblue,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                CustomButton(
                  isOutline: true,
                  outLineColor: AppColors.black,
                  disabled: false,
                  backgroundColor: AppColors.white,
                  width: 116,
                  actionTextColor: AppColors.black,
                  actionText: "Cancel",
                  onTap: () {},
                ),
                Spacer(),
                CustomButton(
                  disabled: true,
                  backgroundColor: AppColors.Primaryblue,
                  width: 203,
                  actionText: "Submit",
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
