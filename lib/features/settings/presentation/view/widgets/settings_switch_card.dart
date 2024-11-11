import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/generated/l10n.dart';

class SettingSwitchCard extends StatefulWidget {
  const SettingSwitchCard({
    super.key,
    this.ifOn,
    this.ifOff,
    required this.title,
  });
  final Function()? ifOn;
  final Function()? ifOff;
  final String title;
  @override
  State<SettingSwitchCard> createState() => _SettingSwitchCardState();
}

class _SettingSwitchCardState extends State<SettingSwitchCard> {
  bool isOn = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.w),
      margin: EdgeInsets.symmetric(vertical: 8.h),
      decoration: BoxDecoration(
        color: ColorManager.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: TextStyleManager.style16RegBlack,
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
    );
  }
}
