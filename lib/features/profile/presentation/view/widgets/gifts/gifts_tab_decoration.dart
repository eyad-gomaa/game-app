import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/gifts/gift_history_tab.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/gifts/gifts_senders_tab.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/gifts/recieved_history_tab.dart';

class GiftsTabDecoration extends StatelessWidget {
  const GiftsTabDecoration({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    List<Widget> giftsTabs = [
      const RecievedGiftsTab(),
      const GiftsHistoryTab(),
      const GiftsSendersTab()
    ];
    return Expanded(
      child: Container(
        width: context.width,
        decoration: BoxDecoration(
          border: Border.all(color: ColorManager.lightPink),
          color: ColorManager.lightPink,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8.r),
              bottomRight: Radius.circular(8.r)),
        ),
        child: Container(
            margin: EdgeInsets.only(top: 64.h, right: 17.w, left: 17.w),
            child: giftsTabs[index]),
      ),
    );
  }
}
