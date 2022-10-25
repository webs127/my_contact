import 'package:flutter/material.dart';
import 'package:todo/Presentation/Views/ItemAddPage/add_item.dart';
import 'package:todo/Presentation/Views/Splash/splash.dart';
import 'package:todo/Wrapper/wrapper.dart';

class RoutesManager {
  static const String splash = "/";
  static const String wrapper = "/wrapper";
  static const String addItemPage = "/addItemPage";
  // static const String splash = "/";
}

class Routes {
  static Route<dynamic> getRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesManager.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RoutesManager.wrapper:
        return MaterialPageRoute(builder: (_) => const Wrapper());
      case RoutesManager.addItemPage:
        return MaterialPageRoute(builder: (_) => const AddItem());
      default:
        return unDefineRoute();
    }
  }
}

Route<dynamic> unDefineRoute() {
  return MaterialPageRoute(builder: (_) => const Scaffold());
}
