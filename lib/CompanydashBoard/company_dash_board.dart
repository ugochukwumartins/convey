import 'package:envoymachaant/account_setup_company/account_setUp.dart';
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

class CompanyDashBoard extends StatefulWidget {
  CompanyDashBoard({Key? key}) : super(key: key);

  @override
  State<CompanyDashBoard> createState() => _CompanyDashBoardState();
}

class _CompanyDashBoardState extends State<CompanyDashBoard> {
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
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DashBoardAppbar(),
                Container(
                  height: 300,
                  width: 350,
                  child: ConveyMap(),
                ),
                Padding(
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
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Please complete your account to start accessing customer request",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Spacer(),
                              Text(
                                "20% completed",
                                style: TextStyle(
                                    fontSize: 8, fontWeight: FontWeight.w500),
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 0.0),
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
                                    builder: (context) => AccountSetup()),
                              );

                              // Get.to(() => DataConsent());
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                NewRequest(
                  ischangeFare: ischangeFare,
                  ontap: valChange,
                ),
                Text(
                  'Orders',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Orders(
                  count: "1",
                  actionText: "New",
                  icon: downarrow,
                  ontap: () {},
                ),
                SizedBox(
                  height: 16,
                ),
                Orders(
                  count: "0",
                  actionText: "Ongoing",
                  icon: upparrow,
                  width: 120,
                  ontap: () {},
                ),
                SizedBox(
                  height: 16,
                ),
                Orders(
                  count: "0",
                  actionText: "Completed",
                  icon: goodtick,
                  width: 125,
                  ontap: () {},
                  actionTesxtcolor: AppColors.Primaryblue,
                ),
                SizedBox(
                  height: 16,
                ),
                Orders(
                  count: "0",
                  actionText: "Cancelled",
                  icon: badtick,
                  ontap: () {},
                  actionTesxtcolor: AppColors.red2,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Earning Distribution",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 160,
                      width: 120,
                      child: PieChartWidget(industrySectors),
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        percentageIndicator(
                            title: 'Delivery Service 0%',
                            color: industrySectors[0].color),
                        SizedBox(
                          height: 12,
                        ),
                        percentageIndicator(
                            title: 'Escort Service - 0%',
                            color: industrySectors[1].color),
                        SizedBox(
                          height: 12,
                        ),
                        percentageIndicator(
                            title: 'Captain Service - 0%',
                            color: industrySectors[2].color),
                        SizedBox(
                          height: 12,
                        ),
                        percentageIndicator(
                            title: 'Hired Service 0%',
                            color: industrySectors[3].color)
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row percentageIndicator({
    required Color color,
    required String title,
  }) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(color: color),
        ),
        SizedBox(
          width: 12,
        ),
        Text(title),
      ],
    );
  }
}

class NewRequest extends StatelessWidget {
  NewRequest({
    super.key,
    required this.ischangeFare,
    required this.ontap,
  });

  final bool ischangeFare;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'New Request',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(profile),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [Text("4.5"), SvgPicture.asset(star)],
                ),
                SizedBox(
                  height: 4,
                ),
                Text("13 Trips")
              ],
            ),
            SizedBox(
              width: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Location"),
                Row(
                  children: [Image.asset(locate), Text('43, Palmgrove Avenue')],
                ),
                SizedBox(
                  height: 8,
                ),
                Text("Destination"),
                Row(
                  children: [
                    Image.asset(
                      locate,
                      color: AppColors.blue,
                    ),
                    Text('403, Ikorodu Road, Lagos')
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Distance",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '20km',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Amount Estimate/Km",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'N200.00',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Amount Estimated",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'N3,450.00',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        ischangeFare
            ? SizedBox.shrink()
            : CustomFormField(
                formIndex: true,
                hint: 'Enter Amount',
                headtext: 'How much do you want to charge?',
              ),
        SizedBox(
          height: 32,
        ),
        CustomButton(
          fillColor: AppColors.black,
          backgroundColor: AppColors.Primaryblue,
          actionText: "Accept Request for N3,450.00",
          onTap: () {
            // Get.to(() => DataConsent());
          },
        ),
        SizedBox(
          height: 24,
        ),
        Center(
          child: InkWell(
            onTap: () {
              // setState(() {
              //   ischangeFare = !ischangeFare;
              // });
            },
            child: ischangeFare
                ? InkWell(
                    onTap: ontap,
                    child: Text(
                      'Change Fare',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                : Text(
                    'Use Estimated Amount',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
