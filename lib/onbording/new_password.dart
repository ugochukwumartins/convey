import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/constant/const.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "",
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
              const Text(
                'New Password',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Enter new password and save',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
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
              CustomButton(
                backgroundColor: AppColors.Primaryblue,
                width: MediaQuery.sizeOf(context).width,
                actionText: "Save Password",
                height: 60,
                disabled: true,
                disabledColor: AppColors.gray7,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewPassword()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
