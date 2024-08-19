import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/widgets/custom_scaffold.dart';

class FortunePage extends StatelessWidget {
  const FortunePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      back: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 435,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset('assets/spinner/spinner2.svg'),
                ),
                SvgPicture.asset('assets/spinner/spinner1.svg'),
                Positioned(
                  top: 50,
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset('assets/spinner/spinner3.svg'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
