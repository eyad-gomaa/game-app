import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/size_manager/padding_manager.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/home_game_card.dart';
import 'package:zone_game_app/generated/l10n.dart';

class HomeGames extends StatelessWidget {
  const HomeGames({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    return Padding(
      padding: PaddingManager.horizontalPadding20,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 30,
        childAspectRatio: 1.37 / 1,
        children: [
          HomeGameCard(
            color: const Color(0xffFDF7E0),
            text: names.sebakAlmarahGame,
            image: ImageManager.funRace,
            anmimationDelay: 100,
            onTap: () {},
          ),
          HomeGameCard(
            color: const Color(0xffBBB671),
            text: names.zakeraGame,
            image: ImageManager.memoryGame,
            anmimationDelay: 200,
            onTap: () {},
          ),
          HomeGameCard(
            color: const Color(0xffB4D2E2),
            text: names.kenzAlekhtlafatGame,
            image: ImageManager.diffrenceGame,
            anmimationDelay: 300,
            onTap: () {},
          ),
          HomeGameCard(
            color: const Color(0xffFCC85D),
            text: names.alfakhGame,
            image: ImageManager.trapGame,
            anmimationDelay: 400,
            onTap: () {},
          ),
          HomeGameCard(
            color: const Color(0xffC5B5A4),
            text: names.nidaaAlharb,
            image: ImageManager.warGame,
            anmimationDelay: 500,
            onTap: () {},
          ),
          HomeGameCard(
            color: const Color(0xffE6DD72),
            text: names.selselatAlasila,
            image: ImageManager.questionsGame,
            anmimationDelay: 600,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
