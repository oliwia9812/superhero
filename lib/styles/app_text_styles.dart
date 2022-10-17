import 'package:flutter/material.dart';
import 'package:super_hero/styles/app_colors.dart';

class AppTextStyles {
  static TextStyle listTileTitle() {
    return const TextStyle(
      color: AppColors.primary,
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
    );
  }

  AppTextStyles._();
}
