import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/components/security_question.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class CreatePinRider extends StatefulWidget {
  const CreatePinRider({Key? key}) : super(key: key);

  @override
  State<CreatePinRider> createState() => _CreatePinRiderState();
}

class _CreatePinRiderState extends State<CreatePinRider> {
  bool showInputFeilds = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Security",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 26,
            ),
            const Text(
              "Create a unique PIN to provide an extra layer of security.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 32,
            ),
            CustomFormField(
              formIndex: true,
              obscureText: true,
              hint: '',
              headtext: "Create PIN",
            ),
            SizedBox(
              height: 20,
            ),
            CustomFormField(
              obscureText: true,
              formIndex: true,
              hint: '',
              headtext: "Confirm PIN",
            ),
            SizedBox(
              height: 20,
            ),

            SizedBox(
              height: 40,
            ),
            // CustomButton(
            //   fillColor: AppColors.black,
            //   disabled: true,
            //   actionText: "Continue",
            //   onTap: () {},
            // ),
            SizedBox(
              height: 34,
            ),
          ],
        ),
      ),
    );
  }
}
