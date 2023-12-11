import 'package:envoymachaant/constant/const.dart';
import 'package:envoymachaant/constant/responsive.dart';
import 'package:envoymachaant/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import '../styles/app_colors.dart';

class CustomFormField extends StatefulWidget {
  final bool formIndex;
  final bool showCreamFill;
  final bool showPinPrefilledWidget;
  final String? obscuringCharacter;
  final MainAxisAlignment? mainAxisAlignment;
  final Function(String)? onCompleted;
  final VoidCallback? onTap;
  final String hint;
  final _pinPutFocusNode = FocusNode();
  final Color? fillColor;
  final bool useNativeKeyboard;
  final double? width;
  final double? height;
  final Widget? sIcon;
  final Widget? pIcon;
  final EdgeInsetsGeometry? contentPadding;
  final TextEditingController? controller;
  final Function? validator;
  final TextStyle? hintstyle;
  final Color? hintColor;
  final int? maxline;
  final String? headtext;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextFieldType? fieldType;
  final bool isWordField;
  final bool validate;
  final bool readonly;
  final bool showCursor;
  final ValueChanged<String>? onChanged;
  final int? maxLength;
  final bool autoFocus;
  final BoxShape? shape;
  final FocusNode? focusNode;
  final int? pinPutFieldCount;
  final List<TextInputFormatter>? inputFormatters;

  CustomFormField(
      {Key? key,
      this.hint = '',
      this.width,
      this.height,
      this.sIcon,
      this.pIcon,
      this.obscureText = false,
      this.isWordField = true,
      this.maxline,
      this.controller,
      this.contentPadding,
      this.onChanged,
      this.hintstyle,
      this.hintColor,
      this.headtext,
      this.onTap,
      this.keyboardType,
      this.validate = true,
      this.readonly = false,
      this.autoFocus = false,
      this.fieldType,
      this.inputFormatters,
      this.maxLength,
      this.useNativeKeyboard = true,
      this.fillColor,
      this.onCompleted,
      this.showCursor = false,
      this.shape = BoxShape.rectangle,
      this.pinPutFieldCount = 0,
      this.focusNode,
      this.validator,
      this.mainAxisAlignment,
      this.obscuringCharacter,
      this.showCreamFill = true,
      this.showPinPrefilledWidget = true,
      required this.formIndex})
      : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    // var keyboardHeight = MediaQuery.viewInsetsOf(context).bottom;
    var keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    final BoxDecoration pinPutDecoration = BoxDecoration(
      border: Border.all(
        color: widget.fillColor ?? AppColors.black,
      ),
      shape: widget.shape ?? BoxShape.rectangle,
      borderRadius:
          widget.shape == BoxShape.circle ? null : BorderRadius.circular(2),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.formIndex
            ? widget.headtext == null
                ? const SizedBox.shrink()
                : Text(widget.headtext!,
                    style: Theme.of(context)
                        .primaryTextTheme
                        .headline5
                        ?.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? null
                                    : AppColors.gray3))
            : const SizedBox.shrink(),
        SizeConfig.spaceTextFieldLabel,
        Expanded(
            flex: 0,
            //height: inputFieldHeight,
            child: widget.isWordField
                ? SizedBox(
                    width: widget.width,
                    height: widget.height,
                    child: Container(
                      decoration: BoxDecoration(
                        color: widget.formIndex
                            ? const Color(0xFFFFFDF6)
                            : Colors.transparent,
                        // border: Border(
                        //   left: BorderSide(color: Color(0xFF66A681), width: 2),
                        //   right: BorderSide(color: Color(0xFF66A681), width: 2),
                        //   top: BorderSide(color: Color(0xFF66A681), width: 2),
                        //   bottom: BorderSide(color: Color(0xFF66A681), width: 2),
                        // ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: TextFormField(
                        onTap: widget.onTap,
                        maxLines: widget.maxline ?? 1,
                        maxLength: widget.maxLength,
                        obscureText: widget.obscureText,
                        controller: widget.controller,
                        readOnly: widget.readonly,
                        autofocus: false,
                        focusNode: widget.focusNode,
                        scrollPadding:
                            EdgeInsets.only(bottom: keyboardHeight + 20),
                        enableSuggestions: true,
                        keyboardType: widget.fieldType == TextFieldType.phone ||
                                widget.fieldType == TextFieldType.bvn
                            ? TextInputType.phone
                            : widget.fieldType == TextFieldType.pin ||
                                    widget.fieldType == TextFieldType.amount
                                ? TextInputType.number
                                : widget.keyboardType ?? TextInputType.text,
                        onChanged: widget.onChanged,
                        inputFormatters: (widget.fieldType ==
                                    TextFieldType.phone ||
                                widget.fieldType == TextFieldType.amount ||
                                widget.fieldType == TextFieldType.accountNo ||
                                widget.fieldType == TextFieldType.pin ||
                                widget.fieldType == TextFieldType.bvn)
                            ? <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ]
                            : widget.inputFormatters,
                        decoration: InputDecoration(
                          focusColor: AppColors.primary,
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  // color: AppColors.primary,
                                  )),
                          border: const OutlineInputBorder(),
                          counterText: "",
                          contentPadding: widget.contentPadding,
                          filled: true,
                          fillColor: widget.showCreamFill
                              ? AppColors.creamWhite.withOpacity(.1)
                              : widget.readonly == true
                                  ? widget.fillColor ?? AppColors.gray5
                                  : widget.fillColor ??
                                      Theme.of(context).backgroundColor,
                          errorMaxLines: 6,
                          prefixIcon: widget.pIcon != null
                              ? Padding(
                                  padding: const EdgeInsets.all(ySpaceMid + 3),
                                  child: widget.pIcon,
                                )
                              : null,
                          enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              borderSide: BorderSide(
                                //width: 50,
                                color: AppColors.textField,
                              )),
                          suffixIcon: widget.sIcon != null
                              ? Padding(
                                  padding: const EdgeInsets.all(ySpaceMid),
                                  child: widget.sIcon,
                                )
                              : null,
                          hintText: !widget.formIndex ? widget.hint : "",
                          hintStyle: widget.hintstyle ??
                              TextStyle(
                                  color: AppColors.black.withOpacity(0.5)),
                        ),
                        validator: (val) {
                          if (widget.fieldType == TextFieldType.refferal)
                            return null;
                          if (val == null) return 'Invalid input';
                          if (widget.validator == null) {
                            if (widget.fieldType == TextFieldType.bvn) {
                              if (val.isEmpty) {
                                return 'Field cannot be empty';
                              } else if (val.trim().isEmpty) {
                                return "Field cannot be empty";
                              } else if (val.length < 11) {
                                return 'Invalid Entry';
                              } else if (int.tryParse(val) == null) {
                                return 'Invalid entry';
                              }
                              return null;
                            } else if (widget.fieldType ==
                                TextFieldType.accountNo) {
                              if (val.isEmpty) {
                                return 'Field cannot be empty';
                              } else if (val.trim().isEmpty) {
                                return "Field cannot be empty";
                              } else if (val.length < 10) {
                                return 'Invalid Entry';
                              } else if (int.tryParse(val) == null) {
                                return 'Invalid entry';
                              }
                              return null;
                            } else if (widget.fieldType == TextFieldType.pin) {
                              if (val.isEmpty) {
                                return 'Field cannot be empty';
                              } else if (val.trim().isEmpty) {
                                return "Field cannot be empty";
                              } else if (val.length < 4) {
                                return 'Invalid Entry';
                              } else if (int.tryParse(val) == null) {
                                return 'Invalid entry';
                              }
                              return null;
                            } else if (widget.fieldType ==
                                TextFieldType.phone) {
                              if (val.isEmpty || val.trim().isEmpty) {
                                return 'Field must not be empty';
                              } else if (val.length < phoneNumberFieldLength) {
                                return 'Invalid entry';
                              } else if (int.tryParse(
                                      val.replaceAll('+', '')) ==
                                  null) {
                                return 'Invalid entry';
                              }
                              return null;
                            } else {
                              if (widget.validate) {
                                if (val.isEmpty &&
                                    (widget.fieldType != TextFieldType.pin)) {
                                  return "Field cannot be empty";
                                } else if (val.trim().isEmpty) {
                                  return "Field cannot be empty";
                                } else if (widget.fieldType ==
                                    TextFieldType.amount) {
                                  if (double.tryParse(
                                          val.replaceAll(',', '')) ==
                                      null) {
                                    return 'Enter a valid amount';
                                  } else if (double.tryParse(
                                          val.replaceAll(',', ''))! <=
                                      0) {
                                    return 'Enter a valid amount';
                                  }
                                } else if (widget.fieldType ==
                                    TextFieldType.email) {
                                  bool isValidEmail = RegExp(
                                          r"[a-z0-9!#$%&'+/=?^`{|}~-]+(?:\.[a-z0-9!#$%&'+/=?^`{|}~-]+)@(?:[a-z0-9](?:[a-z0-9-][a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                                      .hasMatch(val);
                                  return isValidEmail
                                      ? null
                                      : "Please provide a valid email address";
                                } else if (widget.fieldType ==
                                    TextFieldType.setPassword) {
                                  bool isValidPassword = val
                                      .isPasswordValid; //RegExp(r"^(?=.[a-z])(?=.[A-Z])(?=.\d)(?=.[^\da-zA-Z]).{8,15}$").hasMatch(val);
                                  return isValidPassword
                                      ? null
                                      : "Password must contain at least one special character,one number,\none lower case letter, one upper case letter and between 8 and\n15 characters long";
                                } else if (widget.fieldType ==
                                    TextFieldType.nin) {
                                  if (val.isEmpty || val.trim().isEmpty) {
                                    return 'Field must not be empty';
                                  } else if (val.length < 11) {
                                    return 'Invalid entry';
                                  } else if (int.tryParse(val) == null) {
                                    return 'Invalid entry';
                                  }
                                  return null;
                                } else if (widget.fieldType ==
                                    TextFieldType.expiry) {
                                  if (val.isEmpty || val.trim().isEmpty) {
                                    return 'Field must not be empty';
                                  } else if (val.length < 5) {
                                    return 'Invalid entry';
                                  } else if (!val.contains('/')) {
                                    return 'Invalid entry';
                                  }
                                  return null;
                                } else if (widget.fieldType ==
                                    TextFieldType.cvv) {
                                  if (val.isEmpty || val.trim().isEmpty) {
                                    return 'Field must not be empty';
                                  } else if (val.length < 3) {
                                    return 'Invalid entry';
                                  }
                                  return null;
                                }
                              }

                              return null;
                            }
                          } else {
                            widget.validator!(val);
                          }
                          return null;
                        },
                      ),
                    ),
                  )
                : Theme(
                    data: Theme.of(context).copyWith(
                        inputDecorationTheme: const InputDecorationTheme(
                      filled: false,
                    )),
                    child: Pinput(
                        length: widget.pinPutFieldCount! > 0
                            ? widget.pinPutFieldCount!.toInt()
                            : pinCodeFieldLength,
                        validator: (val) {
                          if (val == null) return 'Invalid input';
                          if (widget.pinPutFieldCount! < 1
                              ? val.length < pinCodeFieldLength
                              : val.length < widget.pinPutFieldCount!) {
                            return 'Complete the Pin Fields';
                          }
                          return null;
                        },
                        defaultPinTheme: PinTheme(
                            width: widget.width ?? 45,
                            height: widget.height ?? 50,
                            textStyle: Theme.of(context)
                                .primaryTextTheme
                                .headline3!
                                .copyWith(
                                    fontSize: 18, fontWeight: FontWeight.w300),
                            decoration: pinPutDecoration),
                        onCompleted: widget.onCompleted,
                        obscuringCharacter:
                            widget.obscuringCharacter ?? '*', //●
                        mainAxisAlignment: widget.mainAxisAlignment ??
                            MainAxisAlignment.center,
                        obscureText: true,
                        controller: widget.controller,
                        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                        autofocus: widget.autoFocus,
                        focusNode: widget._pinPutFocusNode,
                        preFilledWidget: widget.showPinPrefilledWidget
                            ? Container(
                                height: 35,
                                width: 30,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        width: 1.5, color: AppColors.black),
                                  ),
                                ),
                              )
                            : null),
                  )),
      ],
    );
  }
}
