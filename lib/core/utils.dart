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

// final List<String> assets = [
//   'assets/bg1.png',
//   'assets/bg2.png',
//   'assets/bg3.png',
//   'assets/bg4.png',
//   'assets/bg5.png',
//   'assets/bg6.png',
//   'assets/bg7.png',
//   'assets/bg8.png',
//   'assets/bg9.png',
// ];

// final List<String> assets2 = [
//   'assets/bg10.png',
//   'assets/bg11.png',
//   'assets/bg12.png',
//   'assets/bg13.png',
//   'assets/bg14.png',
//   'assets/bg15.png',
//   'assets/bg16.png',
//   'assets/bg17.png',
//   'assets/bg18.png',
//   'assets/bg19.png',
// ];

// void precache(BuildContext context) async {
//   for (String asset in assets) {
//     precacheImage(AssetImage(asset), context);
//   }
// }

// void precache2(BuildContext context) async {
//   for (String asset in assets2) {
//     precacheImage(AssetImage(asset), context);
//   }
// }

double getStatusBar(BuildContext context) {
  return MediaQuery.of(context).viewPadding.top;
}

double getBottom(BuildContext context) {
  return MediaQuery.of(context).viewPadding.bottom;
}
