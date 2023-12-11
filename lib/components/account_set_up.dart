import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountsetUp extends StatelessWidget {
  AccountsetUp({
    this.hight,
    required this.heading,
    required this.body,
    required this.tap,
    required this.icon,
    this.iconColor = AppColors.primary,
    this.isVerified = false,
  });

  double? hight;
  String heading;
  String body;
  String icon;
  Color? iconColor;
  void Function()? tap;
  bool isVerified;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: hight ?? MediaQuery.of(context).size.height / 9.6,
      padding: const EdgeInsets.only(top: 0),
      //margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isVerified ? AppColors.fillcolor : AppColors.white,
          border: Border.all()
          // gradient: boxGradient,
          ),
      child: InkWell(
        onTap: tap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 12,
            ),
            Center(
              child: SvgPicture.asset(
                icon,
                height: 28,
                color: iconColor,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  heading,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  body,
                  style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black2),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




















// class Account_setUp extends StatelessWidget {
//   Account_setUp({
//     this.hight,
//     required this.heading,
//     required this.body,
//     required this.level,
//     required this.tap,
//     this.isVerified = false,
//   });

//   double? hight;
//   String heading;
//   String body;
//   String level;
//   void Function()? tap;
//   bool isVerified;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: hight ?? MediaQuery.of(context).size.height / 9.6,
//       padding: const EdgeInsets.only(top: 0),
//       //margin: const EdgeInsets.all(25),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: isVerified ? AppColors.fillcolor : AppColors.gray7,
//           border: Border.all()
//           // gradient: boxGradient,
//           ),
//       child: InkWell(
//         onTap: tap,
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             const SizedBox(
//               width: 12,
//             ),
//             isVerified
//                 ? Center(
//                     child: SvgPicture.asset(
//                       check_circle,
//                       height: 28,
//                     ),
//                   )
//                 : Center(
//                     child: SvgPicture.asset(
//                       alert_triangle,
//                       height: 28,
//                     ),
//                   ),
//             const SizedBox(
//               width: 15,
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   heading,
//                   style: TextStyle(
//                     height: 1.5,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 Text(
//                   body,
//                   style: TextStyle(
//                       fontSize: 14,
//                       height: 1.5,
//                       fontWeight: FontWeight.w400,
//                       color: AppColors.black2),
//                 ),
//               ],
//             ),
//             Spacer(),
//             Center(
//                 child: Text(
//               level,
//               style: TextStyle(
//                   fontSize: 12,
//                   fontFamily: "Poppins",
//                   fontWeight: FontWeight.w400,
//                   color: AppColors.black2),
//             )),
//             const SizedBox(
//               width: 5,
//             ),
//             isVerified
//                 ? SizedBox.shrink()
//                 : Center(
//                     child: SvgPicture.asset(
//                       chevron_right,
//                       height: 20,
//                     ),
//                   ),
//             const SizedBox(
//               width: 12,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }