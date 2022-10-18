import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_hero/blocs/super_hero/super_hero_bloc.dart';
import 'package:super_hero/styles/app_colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
        BlocProvider.of<SuperHeroBloc>(context).add(GetSuperHeroList());
      },
      icon: const Icon(
        Icons.arrow_back_ios_new_outlined,
        color: AppColors.primary,
      ),
    );
  }
}
