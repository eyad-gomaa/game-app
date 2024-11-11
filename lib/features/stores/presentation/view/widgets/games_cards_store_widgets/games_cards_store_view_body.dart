import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/shared/widgets/shared_app_bar.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/size_manager/padding_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/stores/data/models/view_models/game_card_model.dart';
import 'package:zone_game_app/features/stores/presentation/view/widgets/games_cards_store_widgets/confirm_game_card_purchase_bottom_sheet.dart';
import 'package:zone_game_app/features/stores/presentation/view/widgets/games_cards_store_widgets/store_game_card.dart';
import 'package:zone_game_app/generated/l10n.dart';

class GamesCardsStoreViewBody extends StatefulWidget {
  const GamesCardsStoreViewBody({super.key});

  @override
  State<GamesCardsStoreViewBody> createState() =>
      _GamesCardsStoreViewBodyState();
}

class _GamesCardsStoreViewBodyState extends State<GamesCardsStoreViewBody> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    List<GameCardModel> gameCards = [
      GameCardModel(
        color: const Color(0xffFDF7E0),
        name: names.sebakAlmarahGame,
        image: ImageManager.funRace,
        onTap: () {},
      ),
      GameCardModel(
        color: const Color(0xffBBB671),
        name: names.zakeraGame,
        image: ImageManager.memoryGame,
        onTap: () {},
      ),
      GameCardModel(
        color: const Color(0xffB4D2E2),
        name: names.kenzAlekhtlafatGame,
        image: ImageManager.diffrenceGame,
        onTap: () {},
      ),
      GameCardModel(
        color: const Color(0xffFCC85D),
        name: names.alfakhGame,
        image: ImageManager.trapGame,
        onTap: () {},
      ),
      GameCardModel(
        color: const Color(0xffC5B5A4),
        name: names.nidaaAlharb,
        image: ImageManager.warGame,
        onTap: () {},
      ),
      GameCardModel(
        color: const Color(0xffE6DD72),
        name: names.selselatAlasila,
        image: ImageManager.questionsGame,
        onTap: () {},
      ),
    ];

    return Column(
      children: [
        Padding(
          padding: PaddingManager.horizontalPadding20,
          child: SharedAppBar(title: names.store,),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
            6,
            (index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                border: currentIndex == index
                    ? Border.all(color: ColorManager.blue)
                    : null,
              ),
              child: StoreGameCard(
                  name: gameCards[index].name,
                  color: gameCards[index].color,
                  image: gameCards[index].image,
                  onTap: () {
                    print(index);
                    setState(() {
                      currentIndex = index;
                    });
                  }),
            ),
          )),
        ),
        Gap(27.h),
        Expanded(
          child: Padding(
            padding: PaddingManager.horizontalPadding20,
            child: GridView.builder(
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.87 / 1,
                crossAxisCount: 3,
                crossAxisSpacing: MediaQuery.sizeOf(context).width * 0.02,
                mainAxisSpacing: MediaQuery.sizeOf(context).width * 0.02,
              ),
              itemBuilder: (context, index) {
                return ScaleOnTap(
                  onTap: () {
                    showBottomSheet(
                      context: context,
                      builder: (context) =>
                          const ConfirmGameCardPurchaseBottomSheet(),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.r),
                      gradient: LinearGradient(colors: [
                        ColorManager.white.withOpacity(0.19),
                        const Color(0xffC8C8C8).withOpacity(0.19),
                        ColorManager.white.withOpacity(0.19),
                      ]),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          ImageManager.gameCard,
                          height: MediaQuery.sizeOf(context).width / 6,
                          width: MediaQuery.sizeOf(context).width / 6,
                        ),
                        Gap(10.h),
                        Text(
                          "اسم المنتج",
                          style: TextStyleManager.style10RegWhite,
                        ),
                        Gap(6.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              IconManager.coin,
                              width: 15.w,
                            ),
                            Gap(3.w),
                            Text(
                              "450",
                              style: TextStyleManager.style14BoldWhite,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}


