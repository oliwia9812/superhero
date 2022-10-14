import 'package:get_it/get_it.dart';
import 'package:super_hero/repository/networking.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton(() => Networking());
}
