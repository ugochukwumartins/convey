import 'package:envoymachaant/components/app_activation_pin.dart';
import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/components/button.dart';
import 'package:envoymachaant/components/custom_input_feild.dart';
import 'package:envoymachaant/components/dialog.dart';
import 'package:envoymachaant/components/payment_method_card.dart';
import 'package:envoymachaant/constant/const.dart';
import 'package:envoymachaant/constant/img.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RequestCard extends StatefulWidget {
  const RequestCard({super.key});

  @override
  State<RequestCard> createState() => _RequestCardState();
}

class _RequestCardState extends State<RequestCard> {
  bool change = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "Request Card",
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
                Text(
                  'Please note that this comes at a small fee',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Center(
                  child: Image.asset(card),
                ),
                SizedBox(
                  height: 32,
                ),
                Center(
                  child: Text(
                    'Processing Fee',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Center(
                  child: Text(
                    'N1,500.00',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Product Details',
                  style: TextStyle(
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                CustomFormField(
                  onTap: () {},
                  hint: 'CARD PIN',
                  headtext: 'Card Name',
                  obscureText: false,
                  fieldType: TextFieldType.amount,
                  formIndex: true,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Payment method",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 64,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.black, width: 0.2)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16,
                      top: 8,
                      bottom: 8,
                    ),
                    child: change
                        ? PaymentMethodCard(
                            trailing: "Change",
                            leading: "Wallet",
                            iconsval: wallet,
                            iconsval2: chevron_down,
                          )
                        : PaymentMethodCard(
                            trailing: "Change",
                            leading: "Bank Transfer",
                            iconsval: wallet,
                            iconsval2: chevron_down,
                          ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButton(
                  disabled: false,
                  backgroundColor: AppColors.Primaryblue,
                  width: MediaQuery.sizeOf(context).width,
                  actionText: "Request for Card",
                  onTap: () {
                    DialogWidgets.modalBottomSheetMenu(
                        context,
                        AppAtivationPin(
                          title: "Fee Remittance",
                          body: "Enter your PIN to make payment with Wallet",
                        ), () {
                      DialogWidgets.modalBottomSheetMenu(
                          context,
                          AppAtivation2(
                            title: "Fee Remittance",
                            body:
                                "Make payment and send evidence of payment via email",
                            subBody: "Convey Account Numbers",
                          ),
                          null,
                          buttonText: "Make Payment",
                          height: MediaQuery.sizeOf(context).height / 1.5);
                    },
                        buttonText: "Make Payment",
                        height: MediaQuery.sizeOf(context).height / 3.5);
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
