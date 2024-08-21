import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../../../core/widgets/title_card.dart';
import '../widgets/daily_reward_button.dart';
import '../widgets/fortune_button.dart';
import '../widgets/play_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          const CustomAppbar(),
          const SizedBox(height: 95),
          const TitleCard('Alien Invasion'),
          const Spacer(),
          PlayButton(
            onPressed: () {
              context.push('/onboard3');
            },
          ),
          const Row(
            children: [
              SizedBox(width: 25),
              DailyRewardButton(),
              Spacer(),
              FortuneButton(),
              SizedBox(width: 25),
            ],
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
