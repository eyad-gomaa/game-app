
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/utils/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/color_manager/color_manager.dart';
class HomeBanners extends StatefulWidget {
  const HomeBanners({
    super.key,
  });

  @override
  State<HomeBanners> createState() => _HomeBannersState();
}
class _HomeBannersState extends State<HomeBanners> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [
            ImageManager.gameBanner,
            ImageManager.gameBanner,
            ImageManager.gameBanner,
          ].map((b) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Image.asset(
                  b,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            autoPlay: true,
            enlargeFactor: 0.9,
            autoPlayAnimationDuration: const Duration(seconds: 1),
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            height: 127,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        Gap(12.h),
        SizedBox(
          height: 8.w,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: 8.w,
              height: 8.w,
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              decoration: BoxDecoration(
                color: currentIndex == index
                    ? ColorManager.yellow
                    : ColorManager.darkGrey,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            itemCount: 3,
          ),
        )
      ],
    );
  }
}