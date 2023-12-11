import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AltbankCard extends StatelessWidget {
  void Function()? onTap;
  String text;
  Widget icon;

  AltbankCard({
    required this.text,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 9.6,
      padding: const EdgeInsets.only(top: 0),
      //margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.gray7,
          border: Border.all()
          // gradient: boxGradient,
          ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 17,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              icon
            ],
          ),
        ),
      ),
    );
  }
}

class ConveyCardSecurityQuestion extends StatelessWidget {
  void Function()? onTap;
  String text;
  String icon;
  bool showInputFeild;
  bool isCompleted;

  ConveyCardSecurityQuestion({
    required this.text,
    required this.icon,
    this.onTap,
    this.showInputFeild = false,
    this.isCompleted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: showInputFeild
              ? MediaQuery.of(context).size.width / 1.3
              : MediaQuery.of(context).size.width / 1.2677,
          height: showInputFeild
              ? MediaQuery.of(context).size.height / 4.6
              : MediaQuery.of(context).size.height / 9.6,

          //margin: const EdgeInsets.all(25),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.gray7,
              border: Border.all()
              // gradient: boxGradient,
              ),
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: showInputFeild
                  ? const EdgeInsets.only(
                      left: 12.0,
                      right: 12,
                      top: 14,
                      bottom: 14,
                    )
                  : const EdgeInsets.only(
                      left: 12.0,
                      right: 12,
                      top: 14,
                      bottom: 14,
                    ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      showInputFeild
                          ? SvgPicture.asset(
                              chevron_down,
                              height: 30,
                              color: AppColors.black2,
                            )
                          : SvgPicture.asset(
                              icon,
                              height: 30,
                            ),
                    ],
                  ),
                  showInputFeild
                      ? CustomFormField(
                          onTap: () {},
                          hint: 'Enter Answer',
                          headtext: "",
                          obscureText: false,
                          keyboardType: TextInputType.emailAddress,
                          width: MediaQuery.of(context).size.width / 1.45,
                          formIndex: false,
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        isCompleted
            ? SvgPicture.asset(check_circle)
            : SvgPicture.asset(refresh),
      ],
    );
  }
}
