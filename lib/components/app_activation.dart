import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppActivation extends StatefulWidget {
  const AppActivation({
    super.key,
  });

  @override
  State<AppActivation> createState() => _AppActivationState();
}

class _AppActivationState extends State<AppActivation> {
  bool change = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "App Activation",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "You are required to make a payment of N1,500.00 for app activation.",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          "Payment method",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: 64,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.black, width: 0.2)),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16,
              top: 8,
              bottom: 8,
            ),
            child: change
                ? Row(
                    children: [
                      SvgPicture.asset(wallet),
                      Text(
                        "Wallet",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            change = !change;
                          });
                        },
                        child: Text(
                          "Change",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SvgPicture.asset(chevron_down)
                    ],
                  )
                : Row(
                    children: [
                      SvgPicture.asset(wallet),
                      Text(
                        "Bank Transfer",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            change = !change;
                          });
                        },
                        child: Text(
                          "Change",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SvgPicture.asset(chevron_down)
                    ],
                  ),
          ),
        )
      ],
    );
  }
}
