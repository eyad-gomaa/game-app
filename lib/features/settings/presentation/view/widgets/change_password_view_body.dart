import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/shared_app_bar.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/settings/presentation/view/widgets/change_password_form.dart';
import 'package:zone_game_app/generated/l10n.dart';

class ChangePasswordViewBody extends StatelessWidget {
  const ChangePasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SharedAppBar(
          title: S.of(context).password,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(20.h),
                Text(
                  "يمكنك تغيير الرقم السري الخاص بك",
                  style: TextStyleManager.style18RegWhite,
                ),
                Gap(32.h),
                const ChangePasswordForm(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
