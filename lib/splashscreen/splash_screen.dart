import 'dart:async';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/splashscreen/splash_screen2.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  int _start = 4;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SplashScreen2()),
            );
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Start duration of screen
    startTimer();
  }

  @override
  void dispose() {
    //end duration of screen
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: AppColors.PrimaryColour,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0))),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: SvgPicture.asset(bus)),
                // const SizedBox(
                //   height: 85,
                // ),
                // Container(
                //   margin: const EdgeInsets.only(left: 26, right: 26, bottom: 0),
                //   child: Image.asset("assets/images/splash_image.png",
                //   ),
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                const Padding(
                    padding: EdgeInsets.only(right: 0, left: 0, top: 0),
                    child: Text(
                      "Convey",
                      style: TextStyle(
                          fontSize: 40,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.none,
                          fontFamily: 'appfontbold',
                          fontStyle: FontStyle.normal),
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
          ),
        ));
  }
}
