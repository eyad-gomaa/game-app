import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/avatar_with_frame.dart';
import 'package:zone_game_app/core/shared/widgets/dashed_seperator.dart';
import 'package:zone_game_app/core/shared/widgets/icons/back_button.dart';
import 'package:zone_game_app/core/shared/widgets/icons/notification_icon.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/localization/localozation_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_achivemetnts.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_bio_card.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_game_card.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_level_card.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_wallet_card.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/user_profile_data.dart';
import 'package:zone_game_app/generated/l10n.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    Widget sectionSeperator = SliverGap(16.h);
    return CustomScrollView(slivers: [
      // ================= App Bar =================
      SliverAppBar(
        backgroundColor: Colors.black.withOpacity(0.2),
        leading: const BackIcon(),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: NotificationsIcon(),
          )
        ],
        pinned: false,
        title: Text(names.myAccount, style: TextStyleManager.style16BoldBlack),
        centerTitle: true,
        elevation: 0,
      ),
      // ================= Profile Data =================
      const SliverToBoxAdapter(
        child: UserProfileData(),
      ),
      // ================= Profile Cards =================
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Row(
            mainAxisAlignment: LocalizationManager.isArabic()
                ? MainAxisAlignment.start
                : MainAxisAlignment.end,
            children: [
              ScaleOnTap(child: SvgPicture.asset(IconManager.magic)),
              const Gap(10),
              ScaleOnTap(child: SvgPicture.asset(IconManager.coloredUser)),
            ],
          ),
        ),
      ),
      SliverGap(MediaQuery.sizeOf(context).width / 5),
      // ================= Level Cards =================
      const SliverToBoxAdapter(
        child: ProfielLevelCard(),
      ),
      sectionSeperator,
      // ================= Bio Card =================
      const SliverToBoxAdapter(
        child: ProfileBioCard(),
      ),
      sectionSeperator,
      // ================= Wallet Card =================
      const SliverToBoxAdapter(
        child: ProfileWalletCard(),
      ),
      // ================= Game Card =================
      sectionSeperator,
      const SliverToBoxAdapter(
        child: ProfileGameCard(),
      ),
      sectionSeperator,
      // ================= Achivements =================
      const SliverToBoxAdapter(
        child: ProfileAchivements(),
      ),
      sectionSeperator,
    ]);
  }
}
