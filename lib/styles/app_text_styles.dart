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

  static TextStyle title() {
    return const TextStyle(
      color: AppColors.primary,
      fontWeight: FontWeight.w500,
      fontSize: 24.0,
    );
  }

  static TextStyle listTileTitleSmall() {
    return const TextStyle(
      color: AppColors.primary,
      fontWeight: FontWeight.w500,
      fontSize: 14.0,
    );
  }

  AppTextStyles._();
}
