import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/dashed_seperator.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/generated/l10n.dart';

class PrivacySettingTileCard extends StatefulWidget {
  const PrivacySettingTileCard({
    super.key,
    this.ifOn,
    this.ifOff,
    required this.title,
    required this.description,
  });
  final Function()? ifOn;
  final Function()? ifOff;
  final String title;
  final String description;
  @override
  State<PrivacySettingTileCard> createState() => _PrivacySettingTileCardState();
}

class _PrivacySettingTileCardState extends State<PrivacySettingTileCard> {
  bool isOn = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: MediaQuery.sizeOf(context).width,
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.w),
      margin: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: TextStyleManager.style14RegBlack,
              ),
              Row(
                children: [
                  Text(
                    isOn ? S.of(context).active : S.of(context).inactive,
                    style: TextStyleManager.style14RegBlack,
                  ),
                  const Gap(5),
                  SizedBox(
                    height: 24.h,
                    child: Switch(
                      value: isOn,
                      activeTrackColor: ColorManager.blue,
                      activeColor: ColorManager.white,
                      inactiveTrackColor: ColorManager.lightGrey,
                      inactiveThumbColor: ColorManager.white,
                      onChanged: (v) {
                        setState(() {
                          isOn = v;
                        });
                        if (isOn) {
                          widget.ifOn;
                        } else {
                          widget.ifOff;
                        }
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
          Gap(8.h),
          Text(
            widget.description,
            style: TextStyleManager.style12RegDeepGrey,
          ),
          Gap(18.h),
          const DashedSeperator()
        ],
      ),
    );
  }
}
