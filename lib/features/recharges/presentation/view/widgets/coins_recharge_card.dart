import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zone_game_app/core/shared/widgets/buttons/main_gradient_button.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/recharges/presentation/enums/coins_recharge_options.dart';
import 'package:zone_game_app/features/recharges/presentation/view/widgets/confirm_recharge_bottom_sheet.dart';

class CoinsRechargeCard extends StatelessWidget {
  const CoinsRechargeCard({
    super.key,
    required this.type,
  });
  final CoinsRechargeTypes type;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.responsiveWidth(8)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: Container(
          height: context.responsiveHeight(153),
          width: context.responsiveWidth(96),
          decoration: BoxDecoration(
              color: Colors.yellow.withOpacity(0.5),
              image: const DecorationImage(
                image: AssetImage(
                  ImageManager.coinsRechargeCardBackground,
                ),
                fit: BoxFit.cover,
              )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: ColorManager.black.withOpacity(0.3),
                      border: Border.all(
                        color: ColorManager.black.withOpacity(0.3),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        IconManager.coin,
                        height: context.responsiveHeight(12),
                      ),
                      Text(
                        "600K",
                        style: TextStyleManager.style14BoldWhite,
                      )
                    ],
                  ),
                ),
                Image.asset(
                  IconManager.coin,
                  height: context.responsiveHeight(49),
                ),
                MainGradientButton(
                  onTap: () {
                    showBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) => ConfirmRechargeButtomSheet(
                        type: type,
                      ),
                    );
                  },
                  text: "1000",
                  height: context.responsiveHeight(33),
                  borderRadius: 10,
                  textStyle: TextStyleManager.style14BoldWhite,
                  icon: Image.asset(
                    IconManager.diamond,
                    height: 12,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
