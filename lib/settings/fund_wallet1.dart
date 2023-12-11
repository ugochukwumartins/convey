import 'package:envoymachaant/components/app_activation_pin.dart';
import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/convey_card.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FundWallet1 extends StatefulWidget {
  const FundWallet1({Key? key}) : super(key: key);

  @override
  State<FundWallet1> createState() => _FundWallet1State();
}

class _FundWallet1State extends State<FundWallet1> {
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Fund Wallet",
          isText: true,
          fontSize: 20,
          color: AppColors.black,
          backgroundColor: AppColors.white),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "How do you want to fund your wallet?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height:
                    isvisible ? 300 : MediaQuery.of(context).size.height / 12.6,
                padding: const EdgeInsets.only(top: 0),
                //margin: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.gray7,
                    border: Border.all()
                    // gradient: boxGradient,
                    ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 17,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Bank Transfer",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isvisible = !isvisible;
                                });
                              },
                              child: SvgPicture.asset(
                                isvisible ? chevron_down : chevron_right,
                                height: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      isvisible
                          ? SizedBox(
                              height: 16,
                            )
                          : SizedBox.shrink(),
                      isvisible ? BankContainer() : SizedBox.shrink(),
                      isvisible
                          ? SizedBox(
                              height: 16,
                            )
                          : SizedBox.shrink(),
                      isvisible ? BankContainer() : SizedBox.shrink(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ConveyCard(
                hight: 60,
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => FundWallet1()),
                  // );
                },
                text: "Fund with saved card",
                icon: SvgPicture.asset(
                  chevron_right,
                  height: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
