import 'package:get_it/get_it.dart';
import 'package:trial_contact_list/router/router.dart';

GetIt s = GetIt.instance;

void initServicesLocator() {
  s.registerSingleton<AppRouter>(AppRouter());
}
