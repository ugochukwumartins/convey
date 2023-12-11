import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/constant/const.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Change Password",
          isText: true,
          fontSize: 20,
          color: AppColors.black,
          backgroundColor: AppColors.white),
      body: Padding(
        padding: const EdgeInsets.only(top: 39, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomFormField(
                onTap: () {},
                hint: 'Current Password',
                sIcon: SvgPicture.asset(eye),
                headtext: "Current Password",
                obscureText: false,
                fieldType: TextFieldType.password,
                width: MediaQuery.of(context).size.width / 1.1,
                formIndex: false,
              ),
              const SizedBox(
                height: 24,
              ),
              CustomFormField(
                onTap: () {},
                hint: 'New Password',
                headtext: "New Password",
                obscureText: false,
                sIcon: SvgPicture.asset(eye),
                fieldType: TextFieldType.password,
                width: MediaQuery.of(context).size.width / 1.1,
                formIndex: false,
              ),
              const SizedBox(
                height: 24,
              ),
              CustomFormField(
                onTap: () {},
                hint: 'Confirm New Password',
                headtext: "Confirm New Password",
                sIcon: SvgPicture.asset(eye),
                obscureText: false,
                fieldType: TextFieldType.password,
                width: MediaQuery.of(context).size.width / 1.1,
                formIndex: false,
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomButton(
                        // width: MediaQuery.sizeOf(context).width / 3,
                        width: 158.5,
                        fillColor: AppColors.black,
                        actionText: "Cancel",
                        isOutline: true,
                        backgroundColor: AppColors.white,
                        actionTextColor: AppColors.black,
                        color: AppColors.black,
                        onTap: () {
                          Navigator.pop(context);
                        }),
                    SizedBox(
                      // width: MediaQuery.sizeOf(context).width / 50,
                      // width: MediaQuery.of(context).size.width / 50,

                      width: 16,
                    ),
                    CustomButton(
                        // width: MediaQuery.sizeOf(context).width / 3,
                        width: 158.5,
                        backgroundColor: AppColors.Primaryblue,
                        fillColor: AppColors.black,
                        actionText: "Save",
                        disabled: true,
                        color: AppColors.black,
                        onTap: () {}),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
