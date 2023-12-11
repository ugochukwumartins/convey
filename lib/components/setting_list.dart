import 'package:flutter/material.dart';

class SettingsList extends StatelessWidget {
  Widget leading;
  Widget body;
  Widget? trailing;
  Function()? ontap;
  SettingsList({
    required this.body,
    required this.leading,
    this.trailing,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                leading,
                SizedBox(
                  width: 15,
                ),
                body,
                Spacer(),
                trailing ?? const SizedBox.shrink(),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
