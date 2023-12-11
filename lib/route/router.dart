import 'package:envoymachaant/CompanydashBoard/company_dash_board.dart';
import 'package:envoymachaant/account_setup_company/convey_service_stepper.dart';
import 'package:envoymachaant/account_setup_rider/rider_account_setup_stepper.dart';
import 'package:envoymachaant/onbording/company_rider.dart';
import 'package:envoymachaant/onbording/company_signup.dart';
import 'package:envoymachaant/onbording/forgot_password_pin.dart';
import 'package:envoymachaant/products/product_service_stepper.dart';
import 'package:envoymachaant/products/products.dart';
import 'package:envoymachaant/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter goRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'companydashboard',
          builder: (BuildContext context, GoRouterState state) {
            return  CompanyDashBoard();
          },
        ),
        GoRoute(
          path: 'ridersingup',
          builder: (BuildContext context, GoRouterState state) {
            return CompanyRiderSignUp();
          },
        ),
        GoRoute(
          path: 'companysignup',
          builder: (BuildContext context, GoRouterState state) {
            return CompanySignUp();
          },
        ),
        GoRoute(
          path: 'forgotpassword',
          builder: (BuildContext context, GoRouterState state) {
            return const ForgotPassword1();
          },
        ),
        GoRoute(
          path: 'riderstepper',
          builder: (BuildContext context, GoRouterState state) {
            return RiderAccountSetupStepper();
          },
        ),
        GoRoute(
          path: 'companyStepper',
          builder: (BuildContext context, GoRouterState state) {
            return ConveyServiceStepper();
          },
        ),

        GoRoute(
          path: 'products',
          builder: (BuildContext context, GoRouterState state) {
            return const Products();
          },
        ),
        //
        //  GoRoute(
        //   path: 'details',
        //   builder: (BuildContext context, GoRouterState state) {
        //     return const DetailsScreen();
        //   },
        // ),  GoRoute(
        //   path: 'details',
        //   builder: (BuildContext context, GoRouterState state) {
        //     return const DetailsScreen();
        //   },
        // ),  GoRoute(
        //   path: 'details',
        //   builder: (BuildContext context, GoRouterState state) {
        //     return const DetailsScreen();
        //   },
        // ),
      ],
    ),
  ],
);
