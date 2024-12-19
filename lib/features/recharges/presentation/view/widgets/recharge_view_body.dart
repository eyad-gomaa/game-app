import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/missions_view_body.dart';
import 'package:zone_game_app/features/recharges/presentation/enums/coins_recharge_options.dart';
import 'package:zone_game_app/features/recharges/presentation/view/widgets/recharge_button.dart';
import 'package:zone_game_app/features/recharges/presentation/view/widgets/recharge_list_view.dart';

class RechargeViewBody extends StatefulWidget {
  const RechargeViewBody({super.key});

  @override
  State<RechargeViewBody> createState() => _RechargeViewBodyState();
}

class _RechargeViewBodyState extends State<RechargeViewBody> {
  int currentOption = 0;
  List<CoinsRechargeTypes> types = [
    CoinsRechargeTypes.gold,
    CoinsRechargeTypes.diamonds,
    CoinsRechargeTypes.vip,
  ];

  @override
  Widget build(BuildContext context) {
    CoinsRechargeTypes currentType = types[currentOption];
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: const MissionsAppBar(),
        ),
        Container(
          height: context.responsiveHeight(48),
          decoration: BoxDecoration(
            border: Border.all(color: ColorManager.grey),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Row(
              children: [
                CoinsShopButton(
                  currentOption: types[currentOption],
                  option: types[0],
                  title: 'الذهب',
                  onTap: () {
                    setState(() {
                      currentOption = 0;
                    });
                  },
                ),
                Container(
                  color: ColorManager.grey,
                  width: 2,
                ),
                CoinsShopButton(
                  currentOption: types[currentOption],
                  option: types[1],
                  title: 'الماس',
                  onTap: () {
                    setState(() {
                      currentOption = 1;
                    });
                  },
                ),
                Container(
                  color: ColorManager.grey,
                  width: 2,
                ),
                CoinsShopButton(
                  currentOption: types[currentOption],
                  option: types[2],
                  title: 'VIP',
                  onTap: () {
                    setState(() {
                      currentOption = 2;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
          child: Text(
            "الجوائز عند المرة الأولى من الشراء",
            style: TextStyleManager.style18BoldWhite,
          ),
        ),
        const SingleBanner(),
        Expanded(
          child: RechargeListView(
            type: currentType,
          ),
        ),
      ],
    );
  }
}

class SingleBanner extends StatelessWidget {
  const SingleBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: Image.asset(
        ImageManager.gameBanner,
        width: context.width,
        fit: BoxFit.fill,
      ),
    );
  }
}
