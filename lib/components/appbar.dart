import 'package:envoymachaant/constant/const.dart';
import 'package:envoymachaant/constant/responsive.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

PreferredSize appBar(BuildContext context,
    {Color? color,
    String? text,
    bool isText = false,
    Widget? trailing,
    bool showBackButton = true,
    Color? backgroundColor,
    Color iconColor = AppColors.black,
    double? fontSize,
    bool centerText = false,
    double? elevation}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(50),
    child: AppBar(
      leadingWidth: 40,
      leading: showBackButton
          ? Padding(
              padding: const EdgeInsets.only(left: ySpaceMid, top: ySpace1),
              child: Center(
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10),
                        color: AppColors.appbarbg,
                        shape: BoxShape.circle,
                        // gradient: boxGradient,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: iconColor,
                          size: 16,
                        ),
                      ),
                    )
                    // SvgPicture.asset(
                    //   backarrow,
                    //   height: 50,
                    //   width: 2,
                    //   color: color ?? AppColors.black,
                    // ),
                    ),
              ),
            )
          : null,
      title: SizedBox(
        width: SizeConfig.xMargin(context, 35),
        child: Padding(
          padding: const EdgeInsets.only(top: ySpace1),
          child: isText
              ? Text(
                  text!,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: Theme.of(context).textTheme.headline3?.copyWith(
                      color: color ?? Theme.of(context).primaryColor,
                      fontWeight: FontWeight.normal,
                      fontSize: fontSize),
                )
              : SvgPicture.asset(''),
        ),
      ),
      actions: trailing != null
          ? [
              Padding(
                padding: const EdgeInsets.only(
                    right: 24, bottom: 5, top: ySpace1 + 5),
                child: trailing,
              )
            ]
          : null,
      centerTitle: centerText,
      backgroundColor: backgroundColor ?? Theme.of(context).backgroundColor,
      elevation: elevation ?? 0.0,
    ),
  );
}
