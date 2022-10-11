import 'package:flutter/material.dart';
import 'package:flutter_localization/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Localization',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // what language my app supported
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      // select delegets [
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // select what is language of my app
      localeResolutionCallback: (deviceLocal,supportedLocales){
        for(var local in supportedLocales)
          {
            if(deviceLocal != null && deviceLocal.languageCode == local.languageCode)
              {
                return deviceLocal;
              }
          }
        return supportedLocales.first;
      },
      home: HomePage(),
    );
  }
}
