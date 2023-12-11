import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/convey_card.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/settings/contacts.dart';
import 'package:envoymachaant/settings/faqs.dart';
import 'package:envoymachaant/settings/send_message.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Support",
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
                    MaterialPageRoute(builder: (context) => FAQs()),
                  );
                },
                text: "FAQs",
                icon: SvgPicture.asset(
                  chevron_right,
                  height: 30,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ConveyCard(
                text: "Convey Contacts",
                icon: SvgPicture.asset(
                  chevron_right,
                  height: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contacts()),
                  );
                  //  Get.to(() => Contacts());
                },
              ),
              SizedBox(
                height: 24,
              ),
              ConveyCard(
                text: "Send a Message",
                icon: SvgPicture.asset(
                  chevron_right,
                  height: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SendMessage()),
                  );
                  // Get.to(() => SendMessage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
