import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/scale_on_tap.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/localization/flip_widget.dart';
import 'package:zone_game_app/core/utils/localization/localozation_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_view_container.dart';

class ProfileViewContainerWithTitleCard extends StatelessWidget {
  const ProfileViewContainerWithTitleCard({
    super.key,
    required this.child,
    required this.title,
    this.onTap,
    this.svgIcon,
  });
  final Widget child;
  final String title;
  final String? svgIcon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ProfileViewContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min, // Shrink-wrap the content
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).width / 7,
                width: MediaQuery.sizeOf(context).width / 3,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      right: LocalizationManager.isArabic()
                          ? -(context.width - (context.width - 38.w))
                          : 0,
                      left: LocalizationManager.isArabic()
                          ? 0
                          : -(context.width - (context.width - 38.w)),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          FlipWidget(
                            child: Image.asset(
                              ImageManager.profileCardTitle,
                              height: MediaQuery.sizeOf(context).height / 13,
                              width: MediaQuery.sizeOf(context).width / 2.5,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            title,
                            style: TextStyleManager.style16RegLightBlack,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              onTap != null
                  ? ScaleOnTap(
                      onTap: onTap,
                      child: SvgPicture.asset(
                        svgIcon ?? IconManager.editGrey,
                      ),
                    )
                  : const SizedBox.shrink()
            ],
          ),
          const Gap(10),
          child,
          const Gap(11),
        ],
      ),
    );
  }
}
