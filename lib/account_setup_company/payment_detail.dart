import 'package:envoymachaant/account_setup_company/convey_service_stepper.dart';
import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/convey_service_card.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/components/custom_radio_button.dart';
import 'package:envoymachaant/components/drop_down.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentDetail extends StatefulWidget {
  PaymentDetail({Key? key}) : super(key: key);

  @override
  State<PaymentDetail> createState() => _PaymentDetailState();
}

class _PaymentDetailState extends State<PaymentDetail> {
  bool? val = false;

  void valChange(bool? value) {
    setState(() {
      val = value;
    });
  }

  int radioSelected = 1;
  void radioSelectedChanged(String? val) {
    setState(() {
      duration = val!;
    });
  }

  String? duration = "weekly";

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
            "Weekly",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          value: "weekly",
          groupValue: duration,
          onChanged: radioSelectedChanged),
      RadioListTile(
        contentPadding: EdgeInsets.zero,
        activeColor: AppColors.Primarygold,
        visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity),
        title: Text(
          "Bi-weekly",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        value: "bi-weekly",
        groupValue: duration,
        onChanged: radioSelectedChanged,
      ),
      RadioListTile(
        contentPadding: EdgeInsets.zero,
        visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity),
        activeColor: AppColors.Primarygold,
        title: Text(
          "Monthly",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        value: "monthly",
        groupValue: duration,
        onChanged: radioSelectedChanged,
      ),
      RadioListTile(
        contentPadding: EdgeInsets.zero,
        activeColor: AppColors.Primarygold,
        visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity),
        title: Text(
          "Other",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        value: "other",
        groupValue: duration,
        onChanged: radioSelectedChanged,
      )
    ];

    return Scaffold(
      appBar: appBar(context,
          text: "Payment Details",
          isText: true,
          fontSize: 20,
          color: AppColors.black,
          backgroundColor: AppColors.white),
      body: Padding(
        padding: const EdgeInsets.only(top: 34, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Please provide your account details to complete your profile",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: AppColors.gray7,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 16.0,
                    bottom: 16.0,
                    left: 18,
                    right: 31,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Convey Account Created",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset(tomsup),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "See Profile for account Number(s)",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Preffered Remmittance Method (for charges collected directly",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 32,
              ),
              customRadioButton(
                value: values,
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                fillColor: AppColors.black,
                backgroundColor: AppColors.Primaryblue,
                disabled: false,
                actionText: "Complete",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConveyServiceStepper()),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
