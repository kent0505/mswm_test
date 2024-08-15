import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

int mycoins = 100;
int mydiamonds = 0;

Future<void> getData() async {
  final prefs = await SharedPreferences.getInstance();
  // await prefs.remove('onboard');
  mycoins = prefs.getInt('mycoins') ?? 100;
  mydiamonds = prefs.getInt('mydiamonds') ?? 0;
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

double getStatusBar(BuildContext context) {
  return MediaQuery.of(context).viewPadding.top;
}

double getBottom(BuildContext context) {
  return MediaQuery.of(context).viewPadding.bottom;
}
