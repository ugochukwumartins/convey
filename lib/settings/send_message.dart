import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SendMessage extends StatelessWidget {
  SendMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Send us a message",
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 484,

                  //margin: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.white,
                      border: Border.all(
                          color: AppColors.black2.withOpacity(0.5), width: 0.5)
                      // gradient: boxGradient,
                      ),

                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              mail,
                              color: AppColors.black,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            const Text(
                              "We want to hear from you",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomFormField(
                          onTap: () {},
                          hint: 'Title',
                          headtext: "Title",
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          width: MediaQuery.of(context).size.width / 1.1,
                          formIndex: false,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomFormField(
                          onTap: () {},
                          hint: 'Report',
                          headtext: "Report",
                          obscureText: false,
                          keyboardType: TextInputType.multiline,
                          width: MediaQuery.of(context).size.width / 1.1,
                          formIndex: false,
                          maxline: 10,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        CustomButton(
                          fillColor: AppColors.black,
                          backgroundColor: AppColors.Primaryblue,
                          actionText: "Submit",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
