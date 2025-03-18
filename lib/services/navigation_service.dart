import 'package:flutter/material.dart';
import 'package:mvvm_statemanagement/services/init_get.dart';

class NavigationService {
  late GlobalKey<NavigatorState> navigatorKey;
  NavigationService() {
    navigatorKey = GlobalKey<NavigatorState>();
  }
  navigate(Widget widget) {
    return navigatorKey.currentState
        ?.push(MaterialPageRoute(builder: (ctx) => widget));
  }

  Future<void> showDialog(Widget widget) async {
    await showAdaptiveDialog(
        barrierDismissible: true,
        context: navigatorKey.currentContext!,
        builder: (ctx) => widget);
  }

  void showSnackBar() {
    final context = navigatorKey.currentContext!;
    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
    const snackbarWidget = SnackBar(
        content: Text(
      "Hey! Scaffold ",
      style: TextStyle(color: Colors.white),
    ));
    ScaffoldMessenger.of(context).showSnackBar(snackbarWidget);
  }
}
