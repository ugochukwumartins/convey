import 'package:envoymachaant/CompanydashBoard/rider_dash_board.dart';
import 'package:envoymachaant/products/add_promo.dart';
import 'package:envoymachaant/products/product_service_stepper.dart';
import 'package:envoymachaant/products/products.dart';
import 'package:envoymachaant/route/router.dart';
import 'package:envoymachaant/settings/add_card.dart';
import 'package:envoymachaant/settings/completed_or_cancell_order.dart';
import 'package:envoymachaant/settings/ending_trip_payment_details.dart';
import 'package:envoymachaant/settings/fund_wallet.dart';
import 'package:envoymachaant/settings/ongoing_or_pending_order.dart';
import 'package:envoymachaant/settings/payments.dart';
import 'package:envoymachaant/settings/performance.dart';
import 'package:envoymachaant/settings/request_card.dart';
import 'package:envoymachaant/settings/settings.dart';
import 'package:envoymachaant/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'ConveyMachant',
           routerConfig: goRouter,


      //SplashScreen(),
    );
  }
}
