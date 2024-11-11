import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/avatar_with_frame.dart';
import 'package:zone_game_app/core/shared/widgets/fields/white_opacity_fields.dart';
import 'package:zone_game_app/core/shared/widgets/inner_shadow.dart';
import 'package:zone_game_app/core/shared/widgets/shared_app_bar.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/settings/presentation/view/widgets/change_picture_button.dart';
import 'package:zone_game_app/features/settings/presentation/view/widgets/select_avatar_list.dart';
import 'package:zone_game_app/generated/l10n.dart';

class EditMyDataViewBody extends StatelessWidget {
  const EditMyDataViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SharedAppBar(title: S.of(context).editMyData,),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Gap(18),
                const AvatarWithFrame(
                  size: 126,
                ),
                const Gap(8),
                ChangePictureButton(
                  onTap: () {},
                ),
                const Gap(32),
                SizedBox(
                  width: 240.w,
                  child: Column(
                    children: [
                      Text(
                        "اختر آفاتار يعبر عن شحصيتك",
                        style: TextStyleManager.style14BoldWhite,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "عند اختيار الآفاتار يتم وضعه بدلا من الصورة الشخصية",
                        style: TextStyleManager.style12RegWhite,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const Gap(8),
                const SelectAvatarList(),
                 WhiteOpacityField(controller: TextEditingController(),),
                 WhiteOpacityField(controller: TextEditingController(),),
                 WhiteOpacityField(controller: TextEditingController(),),
                const Gap(8),
                InnerShadow(
                  shadows: [
                    Shadow(
                      color: ColorManager.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: const Offset(-2, -2),
                    ),
                    Shadow(
                      color: ColorManager.white.withOpacity(0.32),
                      blurRadius: 4,
                      offset: const Offset(2, 2),
                    ),
                    Shadow(
                      color: ColorManager.black.withOpacity(0.24),
                      blurRadius: 4,
                      offset: const Offset(0, 1),
                    ),
                  ],
                  child: Container(
                    height: 56.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.r),
                        gradient: const LinearGradient(colors: [
                          ColorManager.darkPink,
                          ColorManager.darkPurple,
                          ColorManager.lightBlue
                        ])),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}


