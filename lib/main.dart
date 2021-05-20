import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:privacyblur/src/app.dart';
import 'package:privacyblur/src/di.dart';
import 'package:privacyblur/src/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var delegate = await LocalizationDelegate.create(
      basePath: 'lib/resources/i18n/',
      fallbackLocale: 'en_US',
      supportedLocales: ['en_US', 'de']);

  final di = DependencyInjection();
  final navigator = ScreenNavigator();
  AppRouter router;

  router = AppRouter.fromMainScreen(navigator, di);

  runApp(LocalizedApp(delegate, PixelMonsterApp(router)));
}
