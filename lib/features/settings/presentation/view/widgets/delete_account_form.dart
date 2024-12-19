import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/buttons/red_button.dart';
import 'package:zone_game_app/core/shared/widgets/fields/light_blue_field.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/core/utils/navigation/navigation_context_extension.dart';
import 'package:zone_game_app/generated/l10n.dart';

class DeleteAccountForm extends StatefulWidget {
  const DeleteAccountForm({
    super.key,
  });

  @override
  State<DeleteAccountForm> createState() => _DeleteAccountFormState();
}

class _DeleteAccountFormState extends State<DeleteAccountForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                names.whyYouDeleteAccount,
                style: TextStyleManager.style16RegLightBlack,
                textAlign: TextAlign.start,
              ),
              Gap(10.h),
              LightBlueField(
                controller: _messageController,
                hint: names.enterReasonHere,
                minLines: 4,
              ),
              Gap(16.h),
              Text(
                names.accountPassword,
                style: TextStyleManager.style16RegLightBlack,
                textAlign: TextAlign.start,
              ),
              Gap(10.h),
              LightBlueField(
                controller: _passwordController,
                hint: names.password,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 38.w, vertical: 24.w),
                child: RedButton(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {}
                    context.pop();
                  },
                  text: S.of(context).confirmDeletion,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
