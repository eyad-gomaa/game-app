import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/animations/repeating_scale_animation.dart';
import 'package:zone_game_app/core/shared/widgets/bottom_sheet_heading.dart';
import 'package:zone_game_app/core/shared/widgets/bottom_sheet_title.dart';
import 'package:zone_game_app/core/shared/widgets/icons/close_icon.dart';
import 'package:zone_game_app/core/shared/widgets/buttons/main_gradient_button.dart';
import 'package:zone_game_app/core/shared/widgets/inner_shadow.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/core/utils/navigation/navigation_context_extension.dart';
import 'package:zone_game_app/features/settings/presentation/manager/cubit/localization_cubit.dart';
import 'package:zone_game_app/generated/l10n.dart';

class ChangeLanguageButtomSheet extends StatefulWidget {
  const ChangeLanguageButtomSheet({
    super.key,
  });

  @override
  State<ChangeLanguageButtomSheet> createState() =>
      _ChangeLanguageButtomSheetState();
}

class _ChangeLanguageButtomSheetState extends State<ChangeLanguageButtomSheet> {
  String value = "ar";
  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    double screenHeight = MediaQuery.sizeOf(context).height;
    double titleContainerHeight = screenHeight * 0.15;
    double iconHeight = titleContainerHeight * 0.4;
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32.r),
        topRight: Radius.circular(32.r),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          color: ColorManager.lightPink,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ============== Title and description Stack ==============
            BottomSheetHeading(
              title: names.changeLanguage,
              description: names.changeLanguageDescription,
            ),

            Gap(8.h),
            // ============== card Image ==============
            Image.asset(
              ImageManager.changeLanguage,
              height: MediaQuery.sizeOf(context).width * 0.3,
            ).animate().scale(duration: const Duration(milliseconds: 300)),
            Gap(8.h),
            // ============== Radio Buttons ==============
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // arabic radio
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio(
                      value: "ar",
                      groupValue: value,
                      onChanged: (v) {
                        setState(() {
                          value = v!;
                        });
                      },
                      activeColor: ColorManager.blue,
                    ),
                    Text(
                      "(AR) العربية",
                      style: TextStyleManager.style16RegWhite.copyWith(
                        color: value == "ar"
                            ? ColorManager.blue
                            : ColorManager.grey,
                      ),
                    ),
                  ],
                ),
                // english radio
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio(
                      value: "en",
                      groupValue: value,
                      onChanged: (v) {
                        setState(() {
                          value = v!;
                        });
                      },
                      activeColor: ColorManager.blue,
                    ),
                    Text(
                      "(EN) English",
                      style: TextStyleManager.style16RegWhite.copyWith(
                        color: value == "en"
                            ? ColorManager.blue
                            : ColorManager.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 38.w, vertical: 24.w),
              child: MainGradientButton(
                onTap: () {
                  BlocProvider.of<LocalizationCubit>(context)
                      .changeLanguage(value);
                  context.pop();
                },
                text: S.of(context).save,
              ),
            )
          ],
        ),
      ),
    );
  }
}
