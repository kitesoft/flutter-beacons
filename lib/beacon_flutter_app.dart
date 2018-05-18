import 'package:flutter/material.dart';
import 'package:beacon_flutter/app_config.dart';
import 'package:beacon_flutter/beacon_scan_list.dart';

/* Hey, it's core of Beacon Flutter App! */
class BeaconFlutterApp extends StatelessWidget {

  BeaconFlutterApp(AppConfig this._appConfig);

  final AppConfig _appConfig;
  final Widget homeScreen;

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: _appConfig.applicationName,
      home: BeaconScanList(_appConfig.applicationName)
    );
  }
}