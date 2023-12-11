import 'package:envoymachaant/components/app_activation_pin.dart';
import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/card_details.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/settings/account.dart';
import 'package:envoymachaant/settings/personal.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool personal = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Profile",
          isText: true,
          fontSize: 20,
          color: AppColors.black,
          backgroundColor: AppColors.white),
      body: Padding(
        padding: const EdgeInsets.only(top: 64, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        personal = true;
                      });
                    },
                    child: Container(
                      width: 167.5,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: personal ? AppColors.black : AppColors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                          right: 10,
                          top: 8,
                          bottom: 8,
                        ),
                        child: Center(
                          child: Text(
                            "Personal",
                            style: TextStyle(
                              fontSize: 16,
                              color:
                                  personal ? AppColors.white : AppColors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        personal = false;
                      });
                    },
                    child: Container(
                      width: 167.5,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: personal ? AppColors.white : AppColors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                          right: 10,
                          top: 8,
                          bottom: 8,
                        ),
                        child: Center(
                          child: Text(
                            "Account",
                            style: TextStyle(
                              fontSize: 16,
                              color:
                                  personal ? AppColors.black : AppColors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              personal ? Personal() : Account()
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileDesign extends StatelessWidget {
  String title;
  String body;
  double? pad;
  ProfileDesign({
    required this.title,
    required this.body,
    this.pad,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: AppColors.black2),
            ),
            Padding(
              padding: EdgeInsets.only(left: pad ?? 50.0),
              child: Text(
                body,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
