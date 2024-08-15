import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  const TitleCard(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 162,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff61C7FF),
                blurRadius: 50,
              ),
            ],
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 32,
                  width: 162,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff0054A1),
                        Color(0xff0561AB),
                        Color(0xff0969B2),
                        Color(0xff0A6CB4),
                        Color(0xff45B4F7),
                        Color(0xff117EC1),
                        Color(0xff3EA8E7),
                        Color(0xff5BC3FF),
                        Color(0xff0867B0),
                        Color(0xff0054A1),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: 30,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xff117EC1),
                            Color(0xff218ECF),
                            Color(0xff339EDE),
                            Color(0xff7AD2FF),
                            Color(0xff6FCCFD),
                            Color(0xff58BFFA),
                            Color(0xff4AB7F8),
                            Color(0xff45B4F7),
                            Color(0xff73CEFF),
                            Color(0xff5BC3FF),
                            Color(0xff2B96D7),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Center(
                  child: Container(
                    height: 32,
                    width: 162,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color(0xff73CEFF),
                          Color(0xff95DFFF),
                          Color(0xffB7F0FF),
                          Color(0xffCCFAFF),
                          Color(0xffD3FEFF),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Container(
                        height: 30,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff73CEFF),
                              Color(0xff95DFFF),
                              Color(0xffB7F0FF),
                              Color(0xffCCFAFF),
                              Color(0xffD3FEFF),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Stack(
                            children: <Widget>[
                              Text(
                                title,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 3
                                    ..color = Colors.white, // <-- Border color
                                ),
                              ),
                              Text(
                                title,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFF172D), // <-- Inner color
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
