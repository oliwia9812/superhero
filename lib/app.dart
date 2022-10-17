import 'package:flutter/material.dart';
import 'package:super_hero/blocs/favorite_super_hero/favorite_super_hero_bloc.dart';
import 'package:super_hero/blocs/super_hero/super_hero_bloc.dart';
import 'package:super_hero/injection.dart';
import 'package:super_hero/repository/super_hero_repository_impl.dart';
import 'package:super_hero/ui/home_screen/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SuperHeroBloc(
            superHeroRepository: Injection().get<SuperHeroRepositoryImpl>(),
          )..add(
              GetSuperHeroList(),
            ),
        ),
        BlocProvider(
          create: (context) => FavoriteSuperHeroBloc(
            superHeroBloc: BlocProvider.of<SuperHeroBloc>(context),
          )..add(
              GetFavoriteList(),
            ),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
