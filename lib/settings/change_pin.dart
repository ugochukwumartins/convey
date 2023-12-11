import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/constant/const.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class ChangePin extends StatefulWidget {
  const ChangePin({Key? key}) : super(key: key);

  @override
  State<ChangePin> createState() => _ChangePinState();
}

class _ChangePinState extends State<ChangePin> {
  bool form1 = false;
  bool form2 = false;
  bool form3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Change PIN",
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
                "Change your 4 digit PIN for transaction security.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomFormField(
                onTap: () {
                  setState(() {
                    form1 = true;
                    form2 = false;
                    form3 = false;
                  });
                },
                hint: 'Current PIN',
                headtext: "Current PIN",
                obscureText: false,
                fieldType: TextFieldType.pin,
                width: MediaQuery.of(context).size.width / 1.1,
                formIndex: form1,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomFormField(
                onTap: () {
                  setState(() {
                    form1 = false;
                    form2 = true;
                    form3 = false;
                  });
                },
                hint: 'New PIN',
                headtext: "New PIN",
                obscureText: false,
                fieldType: TextFieldType.pin,
                width: MediaQuery.of(context).size.width / 1.1,
                formIndex: form2,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomFormField(
                onTap: () {
                  setState(() {
                    form1 = false;
                    form2 = false;
                    form3 = true;
                  });
                },
                hint: 'Confirm PIN',
                headtext: "Confirm PIN",
                obscureText: false,
                fieldType: TextFieldType.pin,
                width: MediaQuery.of(context).size.width / 1.1,
                formIndex: form3,
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
                        backgroundColor: AppColors.white,
                        actionText: "Cancel",
                        isOutline: true,
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
                        fillColor: AppColors.black,
                        actionText: "Save",
                        color: AppColors.black,
                        disabled: true,
                        backgroundColor: AppColors.Primaryblue,
                        onTap: () {}),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
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
