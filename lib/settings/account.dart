
import 'package:envoymachaant/components/app_activation_pin.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/card_details.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Account extends StatelessWidget {
  const Account({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Dashborad(
            height: 168,
          ),
          SizedBox(
            height: 32,
          ),
          CustomButton(
            disabled: true,
            backgroundColor: AppColors.Primaryblue,
            width: MediaQuery.sizeOf(context).width,
            actionText: "Withdraw Fund",
            onTap: () {},
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            "Saved Account",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          BankContainer1(),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Text(
                "Wallet Account Numbers",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              SvgPicture.asset(
                wallet,
                height: 20,
                color: AppColors.black,
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          BankContainer(),
          SizedBox(
            height: 16,
          ),
          BankContainer(),
        ],
      );
  }
}