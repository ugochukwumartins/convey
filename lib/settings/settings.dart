import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/custom_radio_button.dart';
import 'package:envoymachaant/components/setting_list.dart';
import 'package:envoymachaant/components/settings_card.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/settings/profile.dart';
import 'package:envoymachaant/settings/security_details.dart';
import 'package:envoymachaant/settings/support.dart';
import 'package:envoymachaant/settings/terms_ad_conditions.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitchchecked = false;
  bool isSwitchchecked1 = false;
  swichChange(bool val) {
    setState(() {
      isSwitchchecked = val;
    });
  }

  swichChange1(bool val) {
    setState(() {
      isSwitchchecked1 = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Settings",
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
              SizedBox(
                height: 0,
              ),
              SettingsCard(
                text: " Balogun".toUpperCase(),
                icon: chevron_right,
                img: profile,
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
              ),
              SizedBox(
                height: 24,
              ),
              SettingsList(
                body: Text(
                  "Push Notification",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                ontap: () {},
                leading: SvgPicture.asset(notifications),
                trailing: CustomSwitch(
                  value: isSwitchchecked,
                  onChanged: swichChange,
                ),
              ),
              SettingsList(
                body: Text(
                  "Security Details",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                leading: SvgPicture.asset(security),
                trailing: SvgPicture.asset(
                  chevron_right,
                  height: 30,
                ),
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecurityDetails()),
                  );
                },
              ),
              SettingsList(
                body: Text(
                  "Support",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                leading: SvgPicture.asset(support),
                trailing: SvgPicture.asset(
                  chevron_right,
                  height: 30,
                ),
                ontap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Support()),
                  );
                }),
              ),
              SettingsList(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TermsConditions()),
                  );
                },
                body: Text(
                  "Terms & Conditions",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                leading: SvgPicture.asset(terms),
                trailing: SvgPicture.asset(
                  chevron_right,
                  height: 30,
                ),
              ),
              SettingsList(
                body: Text(
                  "Log out",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                ),
                leading: SvgPicture.asset(logout),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
