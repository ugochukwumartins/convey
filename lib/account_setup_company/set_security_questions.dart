import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/security_question.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class SetSecurityQuestions extends StatefulWidget {
  const SetSecurityQuestions({Key? key}) : super(key: key);

  @override
  State<SetSecurityQuestions> createState() => _SetSecurityQuestionsState();
}

class _SetSecurityQuestionsState extends State<SetSecurityQuestions> {
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
              "Set Security Questions to provide an extra layer of security.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 32,
            ),
            ConveyCardSecurityQuestion(
              text: "What is your favourite meal?",
              icon: chevron_right,
              showInputFeild: showInputFeilds,
              onTap: () {
                setState(() {
                  showInputFeilds = !showInputFeilds;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            ConveyCardSecurityQuestion(
              text: "What is your favourite meal?",
              icon: chevron_right,
              showInputFeild: showInputFeilds,
              onTap: () {
                setState(() {
                  showInputFeilds = !showInputFeilds;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            ConveyCardSecurityQuestion(
              text: "What is your favourite meal?",
              icon: chevron_down,
              showInputFeild: showInputFeilds,
              onTap: () {
                setState(() {
                  showInputFeilds = !showInputFeilds;
                });
              },
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
