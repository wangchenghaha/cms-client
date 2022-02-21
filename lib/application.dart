
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:cms_client/router.dart';
import 'package:cms_client/config/application.dart';



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
    final app = MaterialApp(
      onGenerateRoute: Application.router.generator,
    );
    return app;
  }
}