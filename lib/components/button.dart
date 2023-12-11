import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String actionText;
  final Color? color;
  final Color? fillColor;
  final Color outLineColor;
  final bool isOutline;
  final bool disabled;
  final Color disabledColor;
  final double? width;
  final double? height;
  final TextStyle? style;
  final double radius;
  final bool hasShadow;
  final bool hasGradient;
  final bool hasImage;
  final Function? onTap;
  final double left;
  final double right;
  final double bottom;
  final double elevation;
  final double top;
  final double padding;
  final String rightImage;
  final String leftImage;
  final bool imageIsLeft;
  final Color? overlayColor;
  final Color? shadowColor;
  final Color? backgroundColor;
  final Color actionTextColor;
  final Color? foregroundColor;

  const CustomButton({
    Key? key,
    required this.actionText,
    this.color,
    this.fillColor,
    this.outLineColor = const Color(0xFFB99745),
    this.isOutline = false,
    this.disabled = false,
    this.disabledColor = const Color(0xFF959490),
    this.width,
    this.height,
    this.style,
    this.radius = 2,
    this.hasShadow = false,
    this.hasGradient = false,
    this.hasImage = false,
    this.left = 0,
    this.right = 0,
    this.bottom = 0,
    this.top = 0,
    this.actionTextColor = AppColors.white,
    required this.onTap,
    this.rightImage = "assets/images/dashboard/low_risk.png",
    this.leftImage = "assets/images/dashboard/low_risk.png",
    this.imageIsLeft = true,
    this.overlayColor = const Color(0xFFB99745),
    this.shadowColor = const Color(0xFFB99745),
    this.backgroundColor = const Color(0xFF2FCA6D),
    this.foregroundColor = Colors.white,
    this.elevation = 0,
    this.padding = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const Key('customButton'),
      height: height,
      width: width,
      margin:
          EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
      child: ElevatedButton(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            hasImage
                ? imageIsLeft
                    ? Image.asset(
                        leftImage,
                        color: const Color(0xFF000000),
                        height: 24,
                        width: 24,
                      )
                    : Container()
                : Container(),
            SizedBox(
              width: 8,
            ),
            Center(
              child: Text(
                actionText,
                textAlign: TextAlign.center,
                style: TextStyle(color: actionTextColor),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            hasImage
                ? imageIsLeft
                    ? Container()
                    : Image.asset(
                        rightImage,
                        color: const Color(0xFF000000),
                        height: 24,
                        width: 24,
                      )
                : Container(),
          ],
        ),
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
              fontFamily: 'OpenSans',
              // color: Colors.white
            ),
          ),
          backgroundColor: disabled
              ? MaterialStateProperty.all(AppColors.gray6)
              : MaterialStateProperty.all(backgroundColor),
          foregroundColor: MaterialStateProperty.all(foregroundColor),
          overlayColor: MaterialStateProperty.all(overlayColor),
          shadowColor: MaterialStateProperty.all(shadowColor),
          elevation: MaterialStateProperty.all(elevation),
          padding: MaterialStateProperty.all(EdgeInsets.all(padding)),
          minimumSize: MaterialStateProperty.all(const Size(150, 50)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          animationDuration: const Duration(milliseconds: 100),
          enableFeedback: true,
          splashFactory: NoSplash.splashFactory,
          side: MaterialStateProperty.all(
            BorderSide(
              color: isOutline ? outLineColor : Colors.transparent,
              width: 0.2,
            ),
          ),
          // overlayColor: MaterialStateProperty.resolveWith<Color?>(
          //       (Set<MaterialState> states) {
          //       if (states.contains(MaterialState.pressed)) {
          //         return Colors.redAccent; //<-- SEE HERE
          //       }
          //       return null; // Defer to the widget's default.
          //   },
          // ),
        ),
        onPressed: () {
          // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> new WelcomeScreen()));
          // Navigator.of(context).push(MaterialPageRoute(builder: (_) => LoginScreen()));
          disabled ? null : onTap!();
        },
      ),
    );
  }
}
