import 'package:flutter/material.dart';

import 'package:flutter_crypto_daily_reporter/routes/routes.dart';
import 'package:flutter_crypto_daily_reporter/services/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => UiProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        onGenerateRoute: (settings) =>
            AppRoutes.onGenerateDefaultRoute(settings),
      ),
    );
  }
}
