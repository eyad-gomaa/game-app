import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/bordered_text.dart';
import 'package:zone_game_app/core/shared/widgets/buttons/main_gradient_button.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/store/presentation/view/widgets/store_purchase_bottom_sheet.dart';

class EmojieStoreCard extends StatelessWidget {
  const EmojieStoreCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 17),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  //======== Emojies Store Card Shelf ========
                  Positioned(
                    bottom: -25,
                    child: Image.asset(
                      ImageManager.shelf,
                      width: context.width,
                      fit: BoxFit.fill,
                      height: context.responsiveHeight(34),
                    ),
                  ),
                  //======== Emojies Store Card ========
                  SizedBox(
                    height: context.responsiveHeight(141),
                    width: context.width,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        //======== Emojies Store Card Image ========
                        Positioned.fill(
                          child: Image.asset(ImageManager.emojiesStoreCard,
                              width: context.width,
                              height: context.responsiveHeight(141),
                              fit: BoxFit.fill),
                        ),
                        //======== Emojies Store Card Data ========
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //======== Large Emojie Stage ========
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset(
                                          ImageManager.emojieStage,
                                          height: context.responsiveHeight(77),
                                          width:
                                              context.responsiveWidth(157.34),
                                          fit: BoxFit.fill,
                                        ),
                                        Positioned(
                                          top: -context.responsiveHeight(15),
                                          child: Image.asset(
                                            ImageManager.emojie,
                                            height:
                                                context.responsiveHeight(66),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //======== List of 6 Small Emojies ========
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              // size of GridView list
                              child: SizedBox(
                                width: context.isTablet
                                    ? context.responsiveWidth(100)
                                    : context.responsiveWidth(110),
                                child: GridView.count(
                                    mainAxisSpacing: 11.w,
                                    crossAxisSpacing: 14.w,
                                    crossAxisCount: 3,
                                    childAspectRatio: 1,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    children: List.generate(
                                      6,
                                      (index) => Image.asset(
                                        ImageManager.emojie,
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              //========= Gap with the size of the shelf ============
              Gap(context.responsiveHeight(35)),
              //========= Button to buy ============
              MainGradientButton(
                width: context.responsiveWidth(237),
                onTap: () {
                  showBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) => const StorePurchaseBottomSheet(),
                  );
                },
                text: "20",
                icon: Image.asset(
                  IconManager.diamond,
                  height: context.responsiveHeight(19),
                ),
              )
            ],
          ),
          Positioned(
            top: -context.responsiveHeight(9),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(ImageManager.emojieTitleCard,
                      width: context.responsiveWidth(137),
                      height: context.responsiveHeight(46),
                      fit: BoxFit.fill),
                  BorderedText(
                    text: "يقطين",
                    style: TextStyleManager.style16BoldWhite,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
