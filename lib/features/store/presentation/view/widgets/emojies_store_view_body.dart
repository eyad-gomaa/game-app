import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/missions_view_body.dart';
import 'package:zone_game_app/features/store/presentation/view/widgets/emojies/emojies_store_card.dart';
import 'package:zone_game_app/features/store/presentation/view/widgets/store_section_title.dart';

class EmojiesStoreViewBody extends StatelessWidget {
  const EmojiesStoreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MissionsAppBar(),
        Gap(27.h),
        const StoreSectionTitle(
          title: "الملصقات",
        ),
        Gap(24.h),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => const EmojieStoreCard(),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
