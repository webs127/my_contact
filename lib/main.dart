import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Models/item_book.dart';
import 'package:todo/Presentation/Resources/routes_manager.dart';

import 'Presentation/Resources/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ContactBook(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Routes.getRoutes,
        initialRoute: RoutesManager.splash,
        title: 'My Contacts',
        theme: GetAppTheme.getTheme()
      ),
    );
  }
}
