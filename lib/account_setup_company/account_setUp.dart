import 'package:envoymachaant/account_setup_company/company_details.dart';
import 'package:envoymachaant/account_setup_company/convey_service.dart';
import 'package:envoymachaant/account_setup_company/payment_details.dart';
import 'package:envoymachaant/account_setup_company/security_details_stepper.dart';
import 'package:envoymachaant/account_setup_company/set_security_questions.dart';
import 'package:envoymachaant/account_setup_company/verify_num_and_email.dart';
import 'package:envoymachaant/components/account_setup_container.dart';
import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/splashscreen/splash_screen2.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AccountSetup extends StatefulWidget {
  const AccountSetup({Key? key}) : super(key: key);

  @override
  State<AccountSetup> createState() => _AccountSetupState();
}

class _AccountSetupState extends State<AccountSetup> {
  bool isVerify = false;
  changeval() {
    setState(() {
      isVerify = !isVerify;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => VerifyPhoneNumberAndEmail()),
    );
    print(isVerify);
  }

  changeval1() {
    setState(() {
      isVerify = !isVerify;
    });
    // Get.to(() => VerifyEmailAddress());
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecurityDetails()),
    );

    print(isVerify);
  }

  changeval2() {
    setState(() {
      isVerify = !isVerify;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CompanyDetails()),
    );

    print(isVerify);
  }

  changeval3() {
    setState(() {
      isVerify = !isVerify;
    });
    //Get.to(() => AltBankAccount());
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PaymentDetails()),
    );

    print(isVerify);
  }

  changeval4() {
    setState(() {
      isVerify = !isVerify;
    });
    //Get.to(() => SetSecurityQuestions());
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ConveyService()),
    );

    print(isVerify);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Set-up Account",
          isText: true,
          fontSize: 20,
          color: AppColors.black,
          backgroundColor: AppColors.white),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Complete your account set-up to be able to get requests on Convey.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 32,
              ),
              Account_setUp(
                heading: "Verifications",
                body: "Verify your phone number and email",
                tap: changeval,
                level: "1/5",
                isVerified: isVerify,
              ),
              const SizedBox(
                height: 16,
              ),
              Account_setUp(
                  isVerified: isVerify,
                  heading: "Security Details",
                  body: "Provide a layer of security",
                  tap: changeval1,
                  level: "2/5"),
              const SizedBox(
                height: 16,
              ),
              Account_setUp(
                  heading: "Company Details",
                  body: "Provide ID and contact info",
                  tap: changeval2,
                  isVerified: isVerify,
                  level: "3/5"),
              const SizedBox(
                height: 16,
              ),
              Account_setUp(
                  heading: "Convey Services",
                  body: "Select services you provide\n and set costs and EDTs",
                  tap: changeval4,
                  isVerified: isVerify,
                  level: "4/5"),
              const SizedBox(
                height: 16,
              ),
              Account_setUp(
                  heading: "Payment Details",
                  // hight: MediaQuery.of(context).size.height / 8.0,
                  body:
                      "Provide your account details\n and set remittance schedule",
                  tap: changeval3,
                  isVerified: isVerify,
                  level: "5/5"),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
