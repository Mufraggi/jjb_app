
import 'package:get_it/get_it.dart';

import 'core/db/Helper.dart';



final getIt = GetIt.instance; // 'sl' est un raccourci commun pour Service Locator
void setupServiceLocator() {
  getIt.registerLazySingleton<DatabaseHelper>(() => DatabaseHelper.instance);
}
