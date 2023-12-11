import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/security_question.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class SetSecuritysQuestions extends StatefulWidget {
  const SetSecuritysQuestions({Key? key}) : super(key: key);

  @override
  State<SetSecuritysQuestions> createState() => _SetSecuritysQuestionsState();
}

class _SetSecuritysQuestionsState extends State<SetSecuritysQuestions> {
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
              "Set Security Questions to provide an extra layer of security.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 26,
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
