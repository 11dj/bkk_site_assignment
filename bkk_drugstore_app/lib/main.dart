import 'package:bkk_drugstore_app/helpers/helpers.dart';
import 'package:bkk_drugstore_app/provider_setup.dart';
import 'package:bkk_drugstore_app/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'views/map_pin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
              color: context.appColors.blue,
            ),
            color: Colors.white,
          ),
          useMaterial3: false,
        ),
        routerConfig: goRouterConfig,
      ),
    );
  }
}
