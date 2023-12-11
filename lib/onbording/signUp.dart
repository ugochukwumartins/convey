import 'package:envoymachaant/components/account_set_up.dart';
import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/dialog.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/onbording/company_signup.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isVerify = false;
  changeval() {
    setState(() {
      isVerify = !isVerify;
    });
    // Get.to(() => VerifyPhoneNumber());
    print(isVerify);
  }

  changeval1() {
    setState(() {
      isVerify = !isVerify;
    });

    DialogWidgets.showConfirmWithdrwalDialog(context, "Enter Company Code",
        "Enter the company code provided to proceed with sign up.");

    // Get.to(() => VerifyEmailAddress());
    print(isVerify);
  }

  changeval2() {
    setState(() {
      isVerify = !isVerify;
    });
    // Get.to(() => VerifyBvn());
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CompanySignUp()),
    );

    print(isVerify);
  }

  changeval3() {
    setState(() {
      isVerify = !isVerify;
    });
    //Get.to(() => AltBankAccount());
    print(isVerify);
  }

  changeval4() {
    setState(() {
      isVerify = !isVerify;
    });
    //  Get.to(() => SetSecurityQuestions());
    print(isVerify);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          top: 34,
          left: 24,
          right: 24,
          bottom: 47,
        ),
        child: CustomButton(
          backgroundColor: AppColors.Primaryblue,
          width: MediaQuery.sizeOf(context).width,
          actionText: "Sign up",
          height: 60,
          onTap: () {},
        ),
      ),
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "",
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
                "Sign up",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 40,
              ),
              AccountsetUp(
                heading: "Individual",
                hight: MediaQuery.of(context).size.height / 8.0,
                body: "You want to register with Convey as\n an individual",
                tap: changeval,
                icon: person,
                isVerified: isVerify,
              ),
              const SizedBox(
                height: 16,
              ),
              AccountsetUp(
                isVerified: isVerify,
                heading: "Company Rider",
                body: "You work with a registered company",
                tap: changeval1,
                icon: trucks,
              ),
              const SizedBox(
                height: 16,
              ),
              AccountsetUp(
                  heading: "Company",
                  body: "You want to register with Convey",
                  tap: changeval2,
                  isVerified: isVerify,
                  icon: company),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
