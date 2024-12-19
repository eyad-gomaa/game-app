import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zone_game_app/core/shared/widgets/scafold_background.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/gifts_view_body.dart';

class GiftsView extends StatelessWidget {
  const GiftsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldBackground(
          child: SafeArea(
              child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: const GiftsViewBody(),
      ))),
    );
  }
}
