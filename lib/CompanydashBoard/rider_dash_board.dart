import 'package:envoymachaant/CompanydashBoard/company_dash_board.dart';
import 'package:envoymachaant/account_setup_company/account_setUp.dart';
import 'package:envoymachaant/account_setup_rider/rider_account_setup_stepper.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/chart.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/components/dash_board_appbar.dart';
import 'package:envoymachaant/components/map.dart';
import 'package:envoymachaant/components/order_componet.dart';
import 'package:envoymachaant/components/section.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class RiderDashBoard extends StatefulWidget {
  RiderDashBoard({Key? key}) : super(key: key);

  @override
  State<RiderDashBoard> createState() => _RiderDashBoardState();
}

class _RiderDashBoardState extends State<RiderDashBoard> {
  bool ischangeFare = true;
  valChange() {
    setState(() {
      ischangeFare = !ischangeFare;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 40,
            bottom: 30,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DashBoardAppbar(),
                // Container(
                //   height: 300,
                //   width: 350,
                //   child: ConveyMap(),
                // ),
                CompleAccountSetUp(),
                SizedBox(
                  height: 40,
                ),
                NewRequest(
                  ischangeFare: ischangeFare,
                  ontap: valChange,
                ),
                SizedBox(
                  height: 26.5,
                ),
                Text(
                  'Completed Requests',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 26.5,
                ),
                Orders1(
                  title: "56, Ajose Adeogun",
                  body: "12:00pm 22/12/2013",
                  actionText: "Ongoing",
                  icon: location,
                  width: 120,
                  ontap: () {},
                ),
                Orders1(
                  title: "56, Ajose Adeogun",
                  body: "12:00pm 22/12/2013",
                  actionText: "Ongoing",
                  icon: location,
                  width: 120,
                  ontap: () {},
                ),
                Orders1(
                  title: "56, Ajose Adeogun",
                  body: "12:00pm 22/12/2013",
                  actionText: "Ongoing",
                  icon: location,
                  width: 120,
                  ontap: () {},
                ),
                Orders1(
                  title: "56, Ajose Adeogun",
                  body: "12:00pm 22/12/2013",
                  actionText: "Ongoing",
                  icon: location,
                  width: 120,
                  ontap: () {},
                ),
                Orders1(
                  title: "56, Ajose Adeogun",
                  body: "12:00pm 22/12/2013",
                  actionText: "Ongoing",
                  icon: location,
                  width: 120,
                  ontap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CompleAccountSetUp extends StatelessWidget {
  const CompleAccountSetUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 225,
        padding: const EdgeInsets.only(
          top: 20,
        ),
        //margin: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: AppColors.gray7,
          // gradient: boxGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Complete Account Set-up",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Please complete your account to start accessing customer request",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Spacer(),
                  Text(
                    "20% completed",
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              LinearPercentIndicator(
                lineHeight: 10,
                barRadius: const Radius.circular(20.0),
                percent: 0.2,
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                animation: true,
                animationDuration: 1000,
                backgroundColor: AppColors.white,
                progressColor: AppColors.primary,
              ),
              const SizedBox(
                height: 28,
              ),
              CustomButton(
                fillColor: AppColors.black,
                backgroundColor: AppColors.Primaryblue,
                actionText: "Continue",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RiderAccountSetupStepper()),
                  );

                  // Get.to(() => DataConsent());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
