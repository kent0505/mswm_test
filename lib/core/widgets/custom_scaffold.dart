import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.body,
    this.bg = 1,
  });

  final Widget body;
  final int bg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(color: const Color(0xff73CEFF)),
          Image.asset(
            'assets/bg$bg.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          // Container(height: MediaQuery.of(context).viewPadding.top),
          Container(
            height: 273,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xff331F8D),
                  const Color(0xff331F8D).withOpacity(0.5),
                  const Color(0xff000000).withOpacity(0),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 273,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xff000000).withOpacity(0),
                    const Color(0xff331F8D).withOpacity(0.5),
                    const Color(0xff331F8D),
                  ],
                ),
              ),
            ),
          ),
          body,
        ],
      ),
    );
  }
}
