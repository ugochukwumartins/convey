import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/drop_down.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class PaymentsSettings extends StatefulWidget {
  const PaymentsSettings({super.key});

  @override
  State<PaymentsSettings> createState() => _PaymentsSettingsState();
}

class _PaymentsSettingsState extends State<PaymentsSettings> {
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
                DropDown(
                  enbleRight: true,
                  height: 40,
                  width: 132,
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    PaymentCard(
                      title: "Amount Earned",
                      body: "N200,000,000.00",
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    PaymentCard(
                      title: "Convey Fees",
                      body: "N42,000.00",
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "View History",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                CustomButton(
                  disabled: false,
                  backgroundColor: AppColors.Primaryblue,
                  width: MediaQuery.sizeOf(context).width,
                  actionText: "Remit Fees",
                  onTap: () {},
                ),
                SizedBox(
                  height: 24,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Amount in Escrow",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 12,
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
                          "N20,000.00",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Center(
                        child: Text(
                          "View Details",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Amount in Wallet",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 12,
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
                          "N20,000.00",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CustomButton(
                        disabled: false,
                        isOutline: true,
                        outLineColor: AppColors.black,
                        backgroundColor: AppColors.white,
                        actionTextColor: AppColors.black,
                        width: MediaQuery.sizeOf(context).width,
                        actionText: "Withdraw to Account",
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Center(
                        child: Text(
                          "View Details",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class PaymentCard extends StatelessWidget {
  String title;
  String body;
  double? widths;
  PaymentCard({required this.body, required this.title, this.widths});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
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
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            body,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
