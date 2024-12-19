import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/icons/double_arrow.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_view_container_with_title_card.dart';
import 'package:zone_game_app/generated/l10n.dart';
import 'package:zone_game_app/core/shared/animations/slide_in_animation.dart';
import 'package:zone_game_app/core/shared/widgets/bordered_text.dart';

class ProfileWalletCard extends StatelessWidget {
  const ProfileWalletCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    return SlideInAnimation(
      delay: 3,
      child: ProfileViewContainerWithTitleCard(
          title: names.wallet,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(names.balance),
                Row(children: [
                  Text(
                    names.totalBalance,
                    style: TextStyleManager.style14RegLightBlack,
                  ),
                  Gap(10.w),
                  BorderedText(
                    text: '0.0',
                    style: TextStyleManager.style16BoldWhite,
                  ),
                  Gap(10.w),
                  DoubleArrow(
                    onTap: () {},
                  )
                ])
              ],
            )
          ])),
    );
  }
}
