import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/constant/const.dart';
import 'package:envoymachaant/constant/responsive.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/onbording/company_rider.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DialogWidgets {
  static Future dialog(
      BuildContext context, bool dismiss, String title, String content) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  static Future showDialogFunc(context, String title, String content) {
    return showDialog(
      context: context,
      builder: (context) {
        // print('hello ${MediaQuery.sizeOf(context).width}');
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Stack(
              alignment: const Alignment(0.8, -0.8),
              children: [
                Container(
                  margin: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.white,
                    // gradient: boxGradient,
                  ),
                  padding: const EdgeInsets.only(top: 350 / 14.59, bottom: 0),
                  width: 350,
                  height: 350,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Center(
                          child: Text(content),
                        ),
                        // SizedBox(
                        //   height: MediaQuery.sizeOf(context).width / 9.6,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(top: 350 / 8.75),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomButton(
                                  // width: MediaQuery.sizeOf(context).width / 3,
                                  width: MediaQuery.of(context).size.width / 3,
                                  fillColor: AppColors.black,
                                  actionText: "Back",
                                  isOutline: true,
                                  color: AppColors.black,
                                  onTap: () {
                                    Navigator.pop(context);
                                  }),
                              SizedBox(
                                // width: MediaQuery.sizeOf(context).width / 50,
                                width: MediaQuery.of(context).size.width / 50,
                              ),
                              CustomButton(
                                  // width: MediaQuery.sizeOf(context).width / 3,
                                  width: MediaQuery.of(context).size.width / 3,
                                  fillColor: AppColors.black,
                                  actionText: "Confirm",
                                  color: AppColors.black,
                                  onTap: () {
                                    DialogWidgets.modalBottomSheetMenu(
                                        context, const Text(''), null);
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                    onTap: () {
                      //perform action here.
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(eye))
              ],
            ),
          ),
        );
      },
    );
  }

//

  static Future showConfirmWithdrwalDialog(
      context, String title, String content) {
    return showDialog(
      context: context,
      builder: (context) {
        // print('hello ${MediaQuery.sizeOf(context).width}');
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.white,
                    // gradient: boxGradient,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    margin: const EdgeInsets.all(0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.end,
                        //   children: [
                        //     InkWell(
                        //         onTap: () {
                        //           //perform action here.
                        //           Navigator.pop(context);
                        //         },
                        //         child: SvgPicture.asset(
                        //           eye,
                        //           width: 18,
                        //           height: 18,
                        //         ))
                        //   ],
                        // ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          content,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.justify,
                        ),

                        const SizedBox(
                          height: 32,
                        ),
                        CustomFormField(
                          formIndex: false,
                          hint: 'Enter Code',
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomButton(
                                  // width: MediaQuery.sizeOf(context).width / 3,
                                  width:
                                      MediaQuery.of(context).size.width / 2.6,
                                  fillColor: AppColors.black,
                                  backgroundColor: AppColors.white,
                                  actionText: "Back",
                                  isOutline: true,
                                  actionTextColor: AppColors.black,
                                  color: AppColors.black,
                                  onTap: () {
                                    Navigator.pop(context);
                                  }),
                              SizedBox(
                                // width: MediaQuery.sizeOf(context).width / 50,
                                width: MediaQuery.of(context).size.width / 50,
                              ),
                              CustomButton(
                                  // width: MediaQuery.sizeOf(context).width / 3,
                                  width:
                                      MediaQuery.of(context).size.width / 2.6,
                                  height: 48,
                                  fillColor: AppColors.black,
                                  backgroundColor: AppColors.Primaryblue,
                                  actionText: "Submit",
                                  color: AppColors.black,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CompanyRiderSignUp()),
                                    );

                                    // DialogWidgets.modalBottomSheetMenu(
                                    //     context, const Text(''), null);
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

//
  static Future showConfirmWithdrwalDialogs(
      context, String title, String content) {
    return showDialog(
      context: context,
      builder: (context) {
        // print('hello ${MediaQuery.sizeOf(context).width}');
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.white,
                    // gradient: boxGradient,
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                                onTap: () {
                                  //perform action here.
                                  Navigator.pop(context);
                                },
                                child: SvgPicture.asset(
                                  eye,
                                  width: 18,
                                  height: 18,
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            title,
                            style: const TextStyle(
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            content,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        // SizedBox(
                        //   height: MediaQuery.sizeOf(context).width / 9.6,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(top: 350 / 8.75),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomButton(
                                  // width: MediaQuery.sizeOf(context).width / 3,
                                  width: MediaQuery.of(context).size.width / 5,
                                  fillColor: AppColors.black,
                                  actionText: "Cancel",
                                  isOutline: true,
                                  color: AppColors.black,
                                  onTap: () {
                                    Navigator.pop(context);
                                  }),
                              SizedBox(
                                // width: MediaQuery.sizeOf(context).width / 50,
                                width: MediaQuery.of(context).size.width / 50,
                              ),
                              CustomButton(
                                  // width: MediaQuery.sizeOf(context).width / 3,
                                  width:
                                      MediaQuery.of(context).size.width / 2.15,
                                  fillColor: AppColors.black,
                                  actionText: "Confirm",
                                  color: AppColors.black,
                                  onTap: () {
                                    DialogWidgets.modalBottomSheetMenu(
                                        context, const Text(''), null);
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static Future showSignUpSuccessfulDialog(
      context, String title, String content) {
    return showDialog(
      context: context,
      builder: (context) {
        // print('hello ${MediaQuery.sizeOf(context).width}');
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.white,
                    // gradient: boxGradient,
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                                onTap: () {
                                  //perform action here.
                                  Navigator.pop(context);
                                },
                                child: SvgPicture.asset(
                                  eye,
                                  width: 18,
                                  height: 18,
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SvgPicture.asset(eye),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            content,
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        // SizedBox(
                        //   height: MediaQuery.sizeOf(context).width / 9.6,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(top: 350 / 8.75),
                          child: CustomButton(
                              // width: MediaQuery.sizeOf(context).width / 3,
                              width: double.infinity,
                              fillColor: AppColors.black,
                              actionText: "Complete",
                              color: AppColors.black,
                              onTap: () {
                                DialogWidgets.modalBottomSheetMenu(
                                    context, const Text(''), null);
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static Future modalBottomSheetMenu(
      BuildContext context, Widget child, Function? ontap,
      {dismiss = true,
      double? height,
      double? minHeight,
      bool isScrollControlled = true,
      bool hasShadow = false,
      bool secondHasShadow = false,
      bool secondHasGradient = false,
      bool hasGradient = false,
      String buttonText = '',
      String secondButtonText = '',
      bool showButton = true,
      Function? onTapSecBtn,
      Color outlineColor = AppColors.white,
      Color? outlineTextColor,
      bool isSecondBTN = false,
      bool showCancelButton = true,
      bool removeSpace = false}) {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: isScrollControlled,
        isDismissible: dismiss,
        useRootNavigator: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(bottomSheetBorderRadius),
          ),
        ),
        builder: (builder) {
          return Container(
              constraints: BoxConstraints(
                minHeight: minHeight ?? bottomSheetHeight, //
              ),
              height: height ?? bottomSheetHeight,
              padding: const EdgeInsets.symmetric(
                  horizontal: generalHorizontalPadding, vertical: ySpace1),
              margin: isScrollControlled
                  ? EdgeInsets.only(
                      bottom: MediaQuery.of(builder).viewInsets.bottom,
                    )
                  : null,
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(bottomSheetBorderRadius),
                      topRight: Radius.circular(bottomSheetBorderRadius))),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (showCancelButton)
                      Row(
                        children: [
                          const Spacer(),
                          InkWell(
                            onTap: () => Navigator.pop(context),
                            child: SvgPicture.asset(x),
                          )
                          // SvgImage(asset: xIcon))
                        ],
                      ),
                    Center(child: child),
                    if (!removeSpace)
                      SizedBox(
                        height: SizeConfig.yMargin(context, 3),
                        width: SizeConfig.yMargin(context, 3),
                      ), //Gap(),
                    isSecondBTN == true
                        ? Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: CustomButton(
                                isOutline: true,
                                actionText: secondButtonText,
                                hasGradient: secondHasGradient,
                                hasShadow: secondHasShadow,
                                outLineColor: outlineColor,
                                color: outlineTextColor,
                                onTap: onTapSecBtn),
                          )
                        : const SizedBox.shrink(),
                    if (showButton)
                      CustomButton(
                          actionText: buttonText,
                          hasGradient: hasGradient,
                          hasShadow: hasShadow,
                          backgroundColor: AppColors.Primaryblue,
                          onTap: ontap),
                  ],
                ),
              ));
        });
  }
}
