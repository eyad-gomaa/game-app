import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';

class SelectAvatarList extends StatefulWidget {
  const SelectAvatarList({
    super.key,
  });

  @override
  State<SelectAvatarList> createState() => _SelectAvatarListState();
}

class _SelectAvatarListState extends State<SelectAvatarList> {
  int selectedIndex = 2;

  bool isSelected(int index) {
    return index == selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double avatarSize = (screenWidth - 80.w) / 4;
    double dotSize = 10.h;
    double dotGap = 6.h;
    double transitionHeight = 10.h;
    double listHeight = avatarSize + transitionHeight + dotSize + dotGap;
    return Center(
      child: SizedBox(
        height: listHeight,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              selectedIndex = index;
              setState(() {});
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              transform: Matrix4.translationValues(
                  0, isSelected(index) ? -transitionHeight : 0, 0),
              padding: EdgeInsets.only(top: transitionHeight),
              child: Opacity(
                opacity: selectedIndex == index ? 1 : 0.5,
                child: Column(
                  children: [
                    Container(
                      width: avatarSize,
                      height: avatarSize,
                      margin: EdgeInsets.symmetric(horizontal: 5.w),
                      padding: EdgeInsets.all(6.h),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorManager.white,
                          width: isSelected(index) ? 2 : 1,
                        ),
                        borderRadius: BorderRadius.circular(500),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(500),
                          child: Image.asset(
                            ImageManager.avatar,
                          )),
                    ),
                    Gap(dotGap),
                    isSelected(index)
                        ? Container(
                            width: dotSize,
                            height: dotSize,
                            decoration: BoxDecoration(
                                color: ColorManager.blue,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: ColorManager.white,
                                )),
                          )
                        : const SizedBox.shrink()
                  ],
                ),
              ),
            ),
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
