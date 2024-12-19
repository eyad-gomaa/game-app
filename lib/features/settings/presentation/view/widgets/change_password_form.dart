import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/buttons/main_gradient_button.dart';
import 'package:zone_game_app/core/shared/widgets/fields/white_opacity_fields.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/core/utils/navigation/navigation_context_extension.dart';
import 'package:zone_game_app/generated/l10n.dart';

class ChangePasswordForm extends StatefulWidget {
  const ChangePasswordForm({
    super.key,
  });

  @override
  State<ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _currentPasswordController;
  late TextEditingController _newPasswordController;
  late TextEditingController _newPasswordConfirmController;
  @override
  void initState() {
    _currentPasswordController = TextEditingController();
    _newPasswordController = TextEditingController();
    _newPasswordConfirmController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ================ Current Password ================
          Text(
            names.currentPassword,
            style: TextStyleManager.style16RegWhite,
          ),
          WhiteOpacityField(
            hint: names.currentPassword,
            prefixIcon: SvgPicture.asset(
              IconManager.lock,
              fit: BoxFit.scaleDown,
            ),
            validation: true,
            controller: _currentPasswordController,
          ),
          Gap(16.h),
          // ================ Forgot Password ================
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(names.forgotPassword,
                style: TextStyleManager.style16RegWhite.copyWith(
                    decoration: TextDecoration.underline,
                    decorationColor: ColorManager.white)),
          ),
          Gap(16.h),
          // ================ New Password ================
          Text(
            names.newPassword,
            style: TextStyleManager.style16RegWhite,
          ),
          WhiteOpacityField(
            hint: names.password,
            prefixIcon: SvgPicture.asset(
              IconManager.lock,
              fit: BoxFit.scaleDown,
            ),
            validation: true,
            controller: _newPasswordController,
          ),
          Gap(16.h),
          // ================ Confirm Password ================
          Text(
            names.confirmPassword,
            style: TextStyleManager.style16RegWhite,
          ),
          WhiteOpacityField(
            hint: names.password,
            prefixIcon: SvgPicture.asset(
              IconManager.lock,
              fit: BoxFit.scaleDown,
            ),
            validation: true,
            controller: _newPasswordConfirmController,
          ),
          Gap(16.h),
          MainGradientButton(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  context.pop();
                }
              },
              text: names.save)
        ],
      ),
    );
  }
}
