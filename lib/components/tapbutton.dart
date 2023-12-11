  import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';

InkWell TapButton({required String texts}) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            // border: Border.all(),
            borderRadius: BorderRadius.circular(14),
            color: AppColors.gray7),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            texts,
            style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }