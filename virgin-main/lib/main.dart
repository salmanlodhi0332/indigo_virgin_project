import 'dart:io';
import 'package:bot_toast/bot_toast.dart';
import 'package:esim2/service/FirebasePerformance.dart';
import 'package:esim2/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:esim2/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:esim2/l10n/generated/l10n.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_storage/get_storage.dart';
import 'package:go_sell_sdk_flutter/go_sell_sdk_flutter.dart';
import 'package:logger/logger.dart';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:lokalise_flutter_sdk/lokalise_flutter_sdk.dart';
import 'routes/app_routes.dart';
import 'service/FirebaseAnalytics.dart';
import 'service/FirebaseCrashlytics.dart';
import 'service/FirebaseMessaging.dart';

var logger = Logger(
  printer: PrettyPrinter(
    methodCount: 2,
    errorMethodCount: 8,
    colors: true,
    printEmojis: true,
  ),
);
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Lokalise.init(
    projectId: '99182829653904d72e6176.63945173',
    sdkToken: '8dad4c9b634bcf740d6f8562684e8c969a3a',
    preRelease: true,
  );

  var app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
//  await FlutterBranchSdk.init(
  //    useTestKey: false, enableLogging: false, disableTracking: false);
  //! ********** Remove this line when it is ready for production *********
//  FlutterBranchSdk.validateSDKIntegration();
  //! *********************************************************************
  FirebaseAnalyticsHandler.initializeanalytics(app);
  FirebaseMessagingHandler.initializeFirebaseMessaging();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  FirebaseCrashlyticsHandler.initializeCrashlytics();
  // FirebasePerformanceHandler.startTrace('Test');
  FirebasePerformanceHandler.startTrace("TestTrace");
  // FirebaseCrashlytics.instance.crash();
  GoSellSdkFlutter.configureApp(
    bundleId: "one.beyond.esim",
    productionSecretKey:
        Platform.isAndroid ? "Android-Live-KEY" : "iOS-Live-KEY",
    sandBoxSecretKey: Platform.isAndroid
        ? "sk_test_ED6Xoq92cyGTjZIWUbgmJf7v"
        : "sk_test_ED6Xoq92cyGTjZIWUbgmJf7v",
    lang: "en",
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      title: 'maaz_s_application1',
      builder: BotToastInit(),
      navigatorObservers: [
        BotToastNavigatorObserver(),
        FirebaseAnalyticsHandler.getAnalyticsObserver(),
      ],
      // home: InstallationGuide(),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
      localizationsDelegates: const [
        Lt.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Lt.supportedLocales,
    );
  }
}
