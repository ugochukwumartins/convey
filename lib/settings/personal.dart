
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/settings/profile.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class Personal extends StatefulWidget {
  Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  bool isLocation = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Image.asset(profile),
            SizedBox(
              width: 8,
            ),
            Text(
              "ABC GROUP & CO.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isLocation = false;
                });
              },
              child: Text(
                "Company Information",
                style: TextStyle(
                  decoration: isLocation == false
                      ? TextDecoration.underline
                      : TextDecoration.none,
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isLocation = true;
                });
              },
              child: Text(
                "Locations",
                style: TextStyle(
                  decoration: isLocation == true
                      ? TextDecoration.underline
                      : TextDecoration.none,
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        isLocation
            ? Column(
                children: [
                  ProfileDesign(
                    pad: 40,
                    title: "State(s):",
                    body: "Lagos, Abuja, Kano",
                  ),
                  ProfileDesign(
                    pad: 60,
                    title: "LG(s):",
                    body: "Eti-Osa, Shomolu, Gwagwalada, ",
                  ),
                ],
              )
            : Column(
                children: [
                  ProfileDesign(
                    pad: 80,
                    title: "Email:",
                    body: "xyz@gmail.com",
                  ),
                  ProfileDesign(
                    pad: 60,
                    title: "Phone\nNumber:",
                    body: "0802 348 8273",
                  ),
                  ProfileDesign(
                    title: "HQ Address:",
                    pad: 30,
                    body: "23, Admiralty Way, Lekki,Lagos",
                  ),
                  ProfileDesign(
                    pad: 30,
                    title: "Registration\nNumber:",
                    body: "23, Admiralty Way, Lekki,Lagos",
                  ),
                  ProfileDesign(
                    pad: 10,
                    title: "Contact Name:",
                    body: "Balogun Kendrick",
                  ),
                ],
              ),
      ],
    );
  }
}
