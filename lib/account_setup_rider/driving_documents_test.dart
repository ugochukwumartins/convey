import 'package:envoymachaant/components/button_with_icon.dart';
import 'package:envoymachaant/components/correct_answer.dart';
import 'package:envoymachaant/components/custom_radio_button.dart';
import 'package:envoymachaant/components/wrong_answer.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrivingDocumentsTest extends StatefulWidget {
  DrivingDocumentsTest({Key? key}) : super(key: key);

  @override
  State<DrivingDocumentsTest> createState() => _DrivingDocumentsTestState();
}

class _DrivingDocumentsTestState extends State<DrivingDocumentsTest> {
  void radioSelectedChanged(String? val) {
    setState(() {
      instructions = val!;
    });
  }

  String? instructions = "stop";

  @override
  Widget build(BuildContext context) {
    List<Widget> values = [
      RadioListTile(
          contentPadding: EdgeInsets.zero,
          activeColor: AppColors.Primarygold,
          visualDensity: const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity),
          title: Text(
            "Stop",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          value: "stop",
          groupValue: instructions,
          onChanged: radioSelectedChanged),
      RadioListTile(
        contentPadding: EdgeInsets.zero,
        activeColor: AppColors.Primarygold,
        visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity),
        title: Text(
          "Go",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        value: "go",
        groupValue: instructions,
        onChanged: radioSelectedChanged,
      ),
      RadioListTile(
        contentPadding: EdgeInsets.zero,
        visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity),
        activeColor: AppColors.Primarygold,
        title: Text(
          "Sleep",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        value: "sleep",
        groupValue: instructions,
        onChanged: radioSelectedChanged,
      ),
    ];

    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Driving Documents & Test",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Note: You need to get over 80% to proceed",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.Primarygold),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "1. What does this color mean?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(color: AppColors.red),
              ),
              SizedBox(
                height: 24,
              ),
              customRadioButton(
                value: values,
              ),
              Center(child: Correct()),
              SizedBox(
                height: 24,
              ),
              Center(
                  child: Wrong(
                answer: "Go".toUpperCase(),
              ))
            ]),
      ),
    );
  }
}

class DrivingDocumentsTestSucces extends StatefulWidget {
  DrivingDocumentsTestSucces({Key? key}) : super(key: key);

  @override
  State<DrivingDocumentsTestSucces> createState() =>
      _DrivingDocumentsTestSuccesState();
}

class _DrivingDocumentsTestSuccesState
    extends State<DrivingDocumentsTestSucces> {
  void radioSelectedChanged(String? val) {
    setState(() {
      instructions = val!;
    });
  }

  String? instructions = "stop";

  @override
  Widget build(BuildContext context) {
    List<Widget> values = [
      RadioListTile(
          contentPadding: EdgeInsets.zero,
          activeColor: AppColors.Primarygold,
          visualDensity: const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity),
          title: Text(
            "Stop",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          value: "stop",
          groupValue: instructions,
          onChanged: radioSelectedChanged),
      RadioListTile(
        contentPadding: EdgeInsets.zero,
        activeColor: AppColors.Primarygold,
        visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity),
        title: Text(
          "Go",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        value: "go",
        groupValue: instructions,
        onChanged: radioSelectedChanged,
      ),
      RadioListTile(
        contentPadding: EdgeInsets.zero,
        visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity),
        activeColor: AppColors.Primarygold,
        title: Text(
          "Sleep",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        value: "sleep",
        groupValue: instructions,
        onChanged: radioSelectedChanged,
      ),
    ];

    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Driving Documents & Test",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Note: You need to get over 80% to proceed",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.Primarygold),
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: Percent(answer: "80%"),
              ),
              SizedBox(
                height: 40,
              ),
            ]),
      ),
    );
  }
}
