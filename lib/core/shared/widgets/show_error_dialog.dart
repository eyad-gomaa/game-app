import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/buttons/close_button.dart';
import 'package:zone_game_app/core/shared/widgets/buttons/main_gradient_button.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/image_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

Future<dynamic> showErrorDialog({
  required BuildContext context,
  String? body,
  String? mainButtonTitle,
  String? textButtonTitle,
  dynamic Function()? onMainButtonTap,
  dynamic Function()? onTextButtonTap,
  bool? showCloseButton,
  bool? showMainButton,
  bool? showTextButton,
}) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => Dialog(
      backgroundColor: ColorManager.lightPink,
      insetPadding:
          EdgeInsets.symmetric(horizontal: context.responsiveWidth(20)),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(context.responsiveWidth(40)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  ImageManager.error,
                  height: context.responsiveHeight(120.71),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    body ?? "تعذر إتمام العملية، الرجاء المحاولة لاحقاً.",
                    style: TextStyleManager.style16RegBlack,
                    textAlign: TextAlign.center,
                  ),
                ),
                showMainButton != false
                    ? MainGradientButton(
                        onTap: onMainButtonTap,
                        text: mainButtonTitle ?? "حسناً")
                    : const SizedBox.shrink(),
                showTextButton != false
                    ? const SizedBox.shrink()
                    : const Gap(20),
                showTextButton != false
                    ? GestureDetector(
                        onTap: onTextButtonTap,
                        child: Text(
                          textButtonTitle ?? "إعادة المحاولة",
                          style: TextStyle(
                              color: const Color(0xff4B71ED),
                              fontWeight: FontWeight.w700,
                              fontSize: TextStyleManager.adaptiveFontSize(16),
                              shadows: [
                                BoxShadow(
                                    offset: const Offset(0, 1),
                                    color: Colors.black.withOpacity(0.2))
                              ]),
                        ),
                      )
                    : const SizedBox.shrink()
              ],
            ),
          ),
          showCloseButton != false
              ? Positioned(
                  top: context.responsiveWidth(20),
                  right: context.responsiveWidth(20),
                  child: const CustomCloseButton())
              : const SizedBox.shrink()
        ],
      ),
    ),
  );
}
