

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:inject/inject.dart';
import 'package:turksell/details_module/details_routes.dart';

import 'account_page/account_module.dart';
import 'details_module/details_module.dart';
import 'di/components/app.component.dart';
import 'generated/l10n.dart';

import 'history_page/notification_turkish_module.dart';
import 'home_list/home_list_module.dart';
import 'module_localization/service/localization_service/localization_service.dart';

import 'module_theme/service/theme_service/theme_service.dart';
import 'notification_turkish/notification_turkish_module.dart';

typedef Provider<T> = T Function();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 // await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) async {
    final container = await AppComponent.create();
    runApp(container.app);
  });
}

@provide
class MyApp extends StatefulWidget {

  final LocalizationService _localizationService;
  final SwapThemeDataService _swapThemeService;
  final DetailsModule _detailsModule;
  final HomeListModule _homeListModule;
  final AccountModule _accountModule;
  final NotificationTurkishModule _notificationTurkishModule;
  final HistoryModule _historyModule;


  MyApp(

      this._detailsModule,
      this._localizationService,
      this._swapThemeService,
      this._historyModule,
      this._notificationTurkishModule,this._accountModule,
      this._homeListModule

      );

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //static FirebaseAnalytics analytics = FirebaseAnalytics();
  //static FirebaseAnalyticsObserver observer =
  //FirebaseAnalyticsObserver(analytics: analytics);

  String lang;
  bool isDarkMode;

  @override
  void initState() {
    super.initState();

    widget._localizationService.localizationStream.listen((event) {
      lang = event;
      setState(() {});
    });

    widget._swapThemeService.darkModeStream.listen((event) {
      isDarkMode = event;
      print('Dark Mode: ' + isDarkMode.toString());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> fullRoutesList = {};


    fullRoutesList.addAll(widget._detailsModule.getRoutes());
    fullRoutesList.addAll(widget._homeListModule.getRoutes());
    fullRoutesList.addAll(widget._accountModule.getRoutes());
    fullRoutesList.addAll(widget._notificationTurkishModule.getRoutes());
    fullRoutesList.addAll(widget._historyModule.getRoutes());


    return FutureBuilder(
      future: getConfiguratedApp(fullRoutesList),
      builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
        if (snapshot.hasData) return snapshot.data;
        return Scaffold();
      },
    );
  }

  Future<Widget> getConfiguratedApp(
      Map<String, WidgetBuilder> fullRoutesList) async {
    lang ??= await widget._localizationService.getLanguage();
    isDarkMode ??= await widget._swapThemeService.isDarkMode();
    print(isDarkMode.toString());

    return MaterialApp(
     //  navigatorObservers: <NavigatorObserver>[observer],
        locale: Locale.fromSubtags(
          languageCode: lang ?? 'en',
        ),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: isDarkMode == true
            ? ThemeData(
          brightness: Brightness.dark,

        )
            : ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
        ),
        supportedLocales: S.delegate.supportedLocales,
        title: 'Anime Galaxy',
        routes: fullRoutesList,
        initialRoute: DetailsRoutes.ROUTE_Car);
  }
}
