import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Poppins'),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
