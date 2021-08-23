import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'common/routes/route_name.dart';
import 'common/routes/routing.dart';

void main() => SharedPreferences.getInstance().then((prefs) {
      print(WidgetsBinding.instance!.window.locale);
      runZoned(() {
        runApp(MyApp());
      });
    });

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return GestureDetector(
      onTap: () {
        WidgetsBinding.instance!.focusManager.primaryFocus?.unfocus();
      },
      child: LayoutBuilder(builder: (context, constraints) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'BEAUTY SHOP',
          initialRoute: RouteNames.home,
          onGenerateRoute: RouteGenerator.generateRoute,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          localeResolutionCallback: (locale, supportedLocales) {
            for (var supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale!.languageCode &&
                  supportedLocale.countryCode == locale.countryCode) {
                return supportedLocale;
              }
            }
            return supportedLocales.first;
          },
        );
      }),
    );
  }
}
