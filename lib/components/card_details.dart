import 'package:envoymachaant/components/circle_dot.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Dashborad extends StatelessWidget {
  void Function()? ontap;
  bool isVisible;
  double? height;
  String title;
  String body;
  Color? color;

  Dashborad({
    this.isVisible = true,
    this.ontap,
    this.height,
    this.body = "₦235,000.00",
    this.title = "Wallet Balance",
    this.color = AppColors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 29),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: height ?? 162,
        // padding: const EdgeInsets.only(top: 24),
        //margin: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage(
                  "assets/images/dashboard/create_investment_bg.png"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10),
          color: color,
          // gradient: boxGradient,
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.white,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            isVisible
                ? Text(
                    body,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                  )
                : Text(
                    "****",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                  ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 2.4),
                  child: CircleDot(
                    isselected: true,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                CircleDot(),
                const Spacer(),
                // Padding(
                //   padding: EdgeInsets.only(
                //       right: MediaQuery.of(context).size.width / 25.4),
                //   child: InkWell(
                //     onTap: ontap,
                //     child: isVisible
                //         ? SvgPicture.asset(eye)
                //         : SvgPicture.asset(
                //             eye,
                //             color: AppColors.white,
                //           ),
                //   ),
                // ),
              ],
            ),
            SizedBox(
              height: 24,
            )
          ],
        ),
      ),
    );
  }
}
