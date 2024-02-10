import 'package:envoymachaant/CompanydashBoard/company_dash_board.dart';
import 'package:envoymachaant/CompanydashBoard/rider_dash_board.dart';
import 'package:envoymachaant/account_setup_company/account_setUp.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/onbording/login.dart';
import 'package:envoymachaant/products/products.dart';
import 'package:envoymachaant/services/auth-service.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen2 extends StatefulWidget {
  SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(map),
              SizedBox(
                height: 24,
              ),
              const Text(
                "Build Connections",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                "With convey, you can reach more clients requesting for your service. It helps you expand your business while earning more.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 197,
              ),
              CustomButton(
                backgroundColor: AppColors.Primaryblue,
                width: MediaQuery.sizeOf(context).width,
                actionText: "Sign up",
                onTap: () {
                  addAccountRequest();
                },
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => CompanyDashBoard()),
                      // );
                      context.go('/companydashboard');
                    },
                    child: Text(
                      "Log in",
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        color: AppColors.Primarygold,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
