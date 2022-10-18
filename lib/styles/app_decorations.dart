import 'package:flutter/material.dart';
import 'package:super_hero/styles/app_colors.dart';

class AppDecorations {
  static ButtonStyle button() {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.all(0),
      shadowColor: Colors.transparent,
      backgroundColor: AppColors.white,
    );
  }

  AppDecorations._();
}
