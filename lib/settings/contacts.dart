import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Contacts",
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
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(facebook),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(twitter),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(LinkedIn),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(instagram),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(youtube),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 0.5,
                color: AppColors.black.withOpacity(0.5),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(mail),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("xyz@convey.org"),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(call),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("080-345-3423"),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(location),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("23, XYZ Avenue, Lekki, Lagos."),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
