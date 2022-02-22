import 'package:cms_client/models/cart.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:cms_client/router.dart';
import 'package:cms_client/config/application.dart';
import 'package:cms_client/config/theme.dart';
import 'package:provider/provider.dart';
import 'package:cms_client/models/catalog.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
    final app = MaterialApp(
      theme: appTheme,
      onGenerateRoute: Application.router.generator,
    );
    final MP = MultiProvider(
      providers: [
        Provider(create: (ctx) => CatalogModel()),
        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
            create: (context) => CartModel(),
            update: (context, catalog, cart) {
              if (cart == null) {
                throw (ArgumentError.notNull('cart'));
              }
              cart.catalog = catalog;
              return cart;
            })
      ],
      child: app,
    );
    return MP;
  }
}
