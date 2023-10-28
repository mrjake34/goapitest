import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:goapitest/core/utils/ad/ad_manager.dart';
import 'package:goapitest/core/utils/navigation/navigation_router.dart';
import 'package:goapitest/core/utils/navigation/navigation_service.dart';
import 'package:goapitest/core/utils/translation/translation_manager.dart';
import 'package:goapitest/main_page.dart';
import 'package:goapitest/screens/home/viewmodel/home_view_model.dart';
import 'package:goapitest/screens/products/viewmodels/product_view_model.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'screens/product_detail_page/viewmodel/product_detail_viewmodel.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  MobileAds.instance.updateRequestConfiguration(
    RequestConfiguration(
      testDeviceIds: <String>['CF3870D97DBD63ED1576D7AE2C169EFF'], // Android emulators are considered test devices
    ),
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProductDetailProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AdManager(),
        ),
        ChangeNotifierProvider(
          create: (_) => HomeViewModel(),
        ),
      ],
      child: TranslationManager(child: const MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go API Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      onGenerateRoute: NavigationRouter.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      home: const MainPage(),
    );
  }
}
