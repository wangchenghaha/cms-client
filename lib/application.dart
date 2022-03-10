import 'package:cms_client/generated/l10n.dart';
import 'package:cms_client/models/cart.dart';
import 'package:cms_client/models/daren.dart';
import 'package:cms_client/models/home_select_index.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:cms_client/router.dart';
import 'package:cms_client/config/application.dart';
import 'package:cms_client/config/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      // 讲zh设置为第一项,没有适配语言时，英语为首选项
      supportedLocales: S.delegate.supportedLocales,
      theme: appTheme,
      onGenerateRoute: Application.router.generator,
    );
    final MP = MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => HomeSelectIndexModel()),
        ChangeNotifierProvider(create: (ctx) => DarenModel()),
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
