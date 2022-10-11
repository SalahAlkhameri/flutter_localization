import 'package:flutter/material.dart';
import 'package:flutter_localization/app_localizations.dart';

class HomePage  extends StatelessWidget {
  const HomePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "name".tr(context),
                style: const TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
              Text(
                "txt".tr(context),
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
