import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/localization/localozation_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/core/utils/navigation/navigation_context_extension.dart';
import 'package:zone_game_app/core/utils/navigation/router_path.dart';
import 'package:zone_game_app/features/settings/presentation/manager/cubit/localization_cubit.dart';
import 'package:zone_game_app/features/settings/presentation/manager/cubit/localization_state.dart';

class CoinsCard extends StatelessWidget {
  const CoinsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationCubit, LocalizationState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(
              right: LocalizationManager.isArabic() ? 10.w : 0,
              left: LocalizationManager.isArabic() ? 0 : 10.w),
          child: Stack(
            alignment: LocalizationManager.isArabic()
                ? Alignment.centerLeft
                : Alignment.centerRight,
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: LocalizationManager.isArabic() ? 10.w + 9.w : 0,
                    right: LocalizationManager.isArabic()
                        ? 0
                        : 10.w + 9.w), // width: 104.w,
                height: context.responsiveHeight(24),
                width: context.responsiveWidth(97),
                decoration: BoxDecoration(
                  color: ColorManager.white.withOpacity(0.2),
                  // gradient: ColorGradientManager.orangeGradient,
                  borderRadius: BorderRadius.circular(18.r),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      right: LocalizationManager.isArabic()
                          ? (context.responsiveHeight(26))
                          : 8.w,
                      left: LocalizationManager.isArabic()
                          ? 8.w
                          : (context.responsiveHeight(26))),
                  child: Align(
                      alignment: LocalizationManager.isArabic()
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Text(
                        "4.520",
                        style: TextStyleManager.style12BoldWhite,
                      )),
                ),
              ),
              Positioned(
                right: LocalizationManager.isArabic()
                    ? -(context.responsiveHeight(26) / 3)
                    : null,
                left: LocalizationManager.isArabic()
                    ? null
                    : -(context.responsiveHeight(26) / 3),
                child: Image.asset(
                  IconManager.coin,
                  height: context.responsiveHeight(26),
                  width: context.responsiveHeight(26),
                  fit: BoxFit.fill,
                ),
              ),
              ScaleOnTap(
                onTap: () {
                  context.pushNamed(RouterPath.rechargeView);
                },
                child: SvgPicture.asset(
                  IconManager.plus,
                  width: context.responsiveHeight(26),
                  height: context.responsiveHeight(26),
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
