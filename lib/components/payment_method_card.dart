import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodCard extends StatefulWidget {
  String iconsval;
  String leading;
  String trailing;
  String iconsval2;

  PaymentMethodCard({
    required this.iconsval,
    required this.leading,
    required this.trailing,
    required this.iconsval2,
  });

  @override
  State<PaymentMethodCard> createState() => _PaymentMethodCardState();
}

class _PaymentMethodCardState extends State<PaymentMethodCard> {
  bool change = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(widget.iconsval),
        Text(
          widget.leading,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        Spacer(),
        InkWell(
          onTap: () {
            setState(() {
              change = !change;
            });
          },
          child: Text(
            widget.trailing,
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SvgPicture.asset(widget.iconsval2)
      ],
    );
  }
}
