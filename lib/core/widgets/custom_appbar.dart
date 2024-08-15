import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../utils.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32 + getStatusBar(context)),
      child: const Row(
        children: [
          SizedBox(width: 25),
          _CoinsCount(),
          SizedBox(width: 16),
          _DiamonsCount(),
          Spacer(),
          _Settings(),
          SizedBox(width: 25),
        ],
      ),
    );
  }
}

class _CoinsCount extends StatelessWidget {
  const _CoinsCount();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/coin2.svg'),
        Positioned(
          top: 3,
          left: 13,
          child: SvgPicture.asset('assets/coin.svg'),
        ),
        Positioned(
          top: 8,
          left: 55,
          child: Text(
            mycoins.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}

class _DiamonsCount extends StatelessWidget {
  const _DiamonsCount();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 88,
      child: Stack(
        children: [
          SvgPicture.asset('assets/diamond.svg'),
          Positioned(
            top: 4,
            left: 13,
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(22 / 360),
              child: Image.asset(
                'assets/diamond.png',
                width: 20,
              ),
            ),
          ),
          Positioned(
            top: 8,
            left: 55,
            child: Text(
              mydiamonds.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 8,
            child: CupertinoButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              minSize: 13,
              child: SvgPicture.asset('assets/diamond2.svg'),
            ),
          ),
        ],
      ),
    );
  }
}

class _Settings extends StatelessWidget {
  const _Settings();

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        context.push('/settings');
      },
      padding: EdgeInsets.zero,
      minSize: 28,
      child: Stack(
        children: [
          SvgPicture.asset(
            'assets/settings2.svg',
          ),
          Positioned(
            top: 5,
            left: 17,
            child: SvgPicture.asset(
              'assets/settings1.svg',
              height: 18,
            ),
          ),
        ],
      ),
    );
  }
}
