import 'package:get_it/get_it.dart';
import 'package:mvvm_statemanagement/services/navigation_service.dart';

final GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerSingleton(NavigationService());
}
