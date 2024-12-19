import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/profile_view_container_with_title_card.dart';
import 'package:zone_game_app/generated/l10n.dart';
import 'package:zone_game_app/core/shared/animations/slide_in_animation.dart';

class ProfileBioCard extends StatelessWidget {
  const ProfileBioCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    return SlideInAnimation(
      delay: 2,
      child: ProfileViewContainerWithTitleCard(
        onTap: () {},
        title: names.definition,
        child: Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            "أحب الجو الحماسي في اللعب، وجاهز دايماً للسوالف والضحك مع الشباب ",
            style: TextStyleManager.style14RegLightBlack,
          ),
        ),
      ),
    );
  }
}
