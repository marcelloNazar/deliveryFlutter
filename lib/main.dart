import 'package:app_delivery/app/core/theme/app_theme.dart';
import 'package:app_delivery/app/data/providers/api.dart';
import 'package:app_delivery/app/data/services/auth/repository.dart';
import 'package:app_delivery/app/data/services/auth/service.dart';
import 'package:app_delivery/app/data/services/cart.dart';
import 'package:app_delivery/app/data/services/storage/service.dart';
import 'package:app_delivery/app/routes/pages.dart';
import 'package:app_delivery/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

void main() async {
  await GetStorage.init();
  Get.put<StorageService>(StorageService());
  Get.put<Api>(Api());
  Get.put<CartService>(CartService());
  Get.put<AuthService>(AuthService(AuthRepository(Get.find<Api>())));

  Intl.defaultLocale = 'pt_BR';

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.dashboard,
    theme: themeData,
    getPages: AppPages.pages,
    localizationsDelegates: const [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    locale: const Locale('pt', 'BR'),
    supportedLocales: const [Locale('pt', 'BR')],
  ));
}
