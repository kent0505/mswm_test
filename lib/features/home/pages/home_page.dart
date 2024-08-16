import 'package:flutter/material.dart';

import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../widgets/daily_reward_button.dart';
import '../widgets/fortune_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: Column(
        children: [
          CustomAppbar(),
          Spacer(),
          Row(
            children: [
              SizedBox(width: 25),
              DailyRewardButton(),
              Spacer(),
              FortuneButton(),
              SizedBox(width: 25),
            ],
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
