import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool onboard = true;

Future<void> getData() async {
  final prefs = await SharedPreferences.getInstance();
  // await prefs.remove('onboard');
  onboard = prefs.getBool('onboard') ?? true;
}

Future<void> saveData() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setBool('onboard', false);
}

int getCurrentTimestamp() {
  return DateTime.now().millisecondsSinceEpoch ~/ 1000;
}

final List<String> assets = [
  'assets/bg1.png',
];

void precache(BuildContext context) async {
  for (String asset in assets) {
    await precacheImage(AssetImage(asset), context);
  }
}
