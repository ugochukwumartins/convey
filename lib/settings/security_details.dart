import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/convey_card.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/settings/change_password.dart';
import 'package:envoymachaant/settings/change_pin.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SecurityDetails extends StatefulWidget {
  const SecurityDetails({Key? key}) : super(key: key);

  @override
  State<SecurityDetails> createState() => _SecurityDetailsState();
}

class _SecurityDetailsState extends State<SecurityDetails> {
  bool isSwitchchecked = false;
  swichChange(bool val) {
    setState(() {
      isSwitchchecked = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Security  Details",
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
                height: 24,
              ),
              ConveyCard(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChangePin()),
                  );
                },
                text: "Change Transaction PIN",
                icon: SvgPicture.asset(
                  chevron_right,
                  height: 30,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ConveyCard(
                text: "Change Password",
                icon: SvgPicture.asset(
                  chevron_right,
                  height: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChangePassword()),
                  );
                },
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
