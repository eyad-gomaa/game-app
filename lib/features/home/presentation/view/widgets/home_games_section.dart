import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/size_manager/padding_manager.dart';
import 'package:zone_game_app/features/home/presentation/view/widgets/home_game_card.dart';

class HomeGames extends StatelessWidget {
  const HomeGames({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            text: 'سباق المرح',
            image: ImageManager.funRace,
            anmimationDelay: 100,
            onTap: () {},
          ),
          HomeGameCard(
            color: const Color(0xffBBB671),
            text: 'لعبة الذاكرة',
            image: ImageManager.memoryGame,
            anmimationDelay: 200,
            onTap: () {},
          ),
          HomeGameCard(
            color: const Color(0xffB4D2E2),
            text: 'كنز الإختلافات',
            image: ImageManager.diffrenceGame,
            anmimationDelay: 300,
            onTap: () {},
          ),
          HomeGameCard(
            color: const Color(0xffFCC85D),
            text: 'لعبة الفخ',
            image: ImageManager.trapGame,
            anmimationDelay: 400,
            onTap: () {},
          ),
          HomeGameCard(
            color: const Color(0xffC5B5A4),
            text: "نداء الحرب",
            image: ImageManager.warGame,
            anmimationDelay: 500,
            onTap: () {},
          ),
          HomeGameCard(
            color: const Color(0xffE6DD72),
            text: "سلسلة الأسئلة",
            image: ImageManager.questionsGame,
            anmimationDelay: 600,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
