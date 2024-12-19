import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/gifts/gifts_app_bar.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/gifts/gifts_options.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/gifts/gifts_tab_decoration.dart';
import 'package:zone_game_app/generated/l10n.dart';

class GiftsViewBody extends StatefulWidget {
  const GiftsViewBody({super.key});

  @override
  State<GiftsViewBody> createState() => _GiftsViewBodyState();
}

class _GiftsViewBodyState extends State<GiftsViewBody> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    return Column(
      children: [
        GiftsAppBar(names: names), // Gifts View App Bar
        const Gap(16),
        // ================= Gifts View Body =================
        Expanded(
          child: Column(
            children: [
              // =============== Gifts View Tabs ===============
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = 0;
                        });
                      },
                      child: GiftsOptions(
                        currentIndex: currentIndex,
                        index: 0,
                        text: "المستلمة",
                      )),
                  InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = 1;
                        });
                      },
                      child: GiftsOptions(
                        currentIndex: currentIndex,
                        index: 1,
                        text: "سجل الهدايا",
                      )),
                  InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = 2;
                        });
                      },
                      child: GiftsOptions(
                        currentIndex: currentIndex,
                        index: 2,
                        text: "قائمة المرسلين",
                      )),
                ],
              ),
              // =============== Tabs Body ===============
              // this is the tabs shared decoration ,  inside it will be tabs body
              GiftsTabDecoration(
                index: currentIndex,
              )
            ],
          ),
        ),
        Gap(20.h)
      ],
    );
  }
}
