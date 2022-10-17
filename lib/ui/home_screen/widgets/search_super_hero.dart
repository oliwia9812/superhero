import 'package:flutter/material.dart';
import 'package:super_hero/styles/app_colors.dart';

class SearchSuperHero extends StatelessWidget {
  const SearchSuperHero({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30.0),
        ),
        hintStyle: const TextStyle(
          color: AppColors.lightGray,
        ),
        hintText: "Search SuperHero",
        filled: true,
        fillColor: AppColors.white,
        prefixIcon: const Icon(
          Icons.search,
          color: AppColors.lightGray,
          size: 20.0,
        ),
        prefixIconColor: Colors.red,
      ),
    );
  }
}
