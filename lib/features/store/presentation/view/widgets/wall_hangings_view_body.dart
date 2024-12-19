import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/missions_view_body.dart';
import 'package:zone_game_app/features/store/presentation/view/widgets/store_section_title.dart';
import 'package:zone_game_app/features/store/presentation/view/widgets/wall_hangings/wall_hanging_store_card.dart';

class WallHangingsViewBody extends StatelessWidget {
  const WallHangingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: const MissionsAppBar(),
        ),
        const StoreSectionTitle(
          title: "المعلقات الجدارية",
        ),
        Gap(27.h),
        Expanded(
          child: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 187 / 152,
              crossAxisCount: 2,
              mainAxisSpacing: context.responsiveWidth(16),
              crossAxisSpacing: context.responsiveWidth(16),
            ),
            itemBuilder: (context, index) => const WallHangingStoreCard(),
          ),
        )
      ],
    );
  }
}
