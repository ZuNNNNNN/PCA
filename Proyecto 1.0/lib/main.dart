import 'package:flutter/material.dart';
import 'package:prueba_coigo/src/pages/alert_page.dart';
import 'package:prueba_coigo/src/pages/avatar_page.dart';
import 'package:prueba_coigo/src/pages/home_page.dart';
import 'package:prueba_coigo/src/pages/home_temp.dart';
import 'package:prueba_coigo/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Componentes App',
        debugShowCheckedModeBanner: false,
        //home: HomePage()
        initialRoute: '/',
        routes: getApplicationRoutes(),
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
              builder: (BuildContext context) => AlertPage());
        });
  }
}
