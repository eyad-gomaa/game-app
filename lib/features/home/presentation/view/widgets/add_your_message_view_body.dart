import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:zone_game_app/core/shared/widgets/buttons/main_gradient_button.dart';
import 'package:zone_game_app/core/shared/widgets/shared_app_bar.dart';
import 'package:zone_game_app/core/utils/managers/assets_manager/icon_manager.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/navigation/navigation_context_extension.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/generated/l10n.dart';

class AddYourMessageViewBody extends StatelessWidget {
  const AddYourMessageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SharedAppBar(
        title: S.of(context).addYourMessageTitle,
      ),
      Expanded(
        child: ListView(
          children: [
            const AddMessageIntro(),
            Gap(32.h),
            const AddMessageForm(),
          ],
        ),
      ),
    ]);
  }
}

class AddMessageIntro extends StatelessWidget {
  const AddMessageIntro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    double width = MediaQuery.of(context).size.width;
    double textPadding = width * 0.1;
    double imageSize = width / 3;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: textPadding, vertical: 18.h),
          child: Text(
            names.addYourMessageDescription,
            style: TextStyleManager.style18RegWhite,
            textAlign: TextAlign.center,
          ),
        ),
        Stack(
          children: [
            Positioned(
              top: 4, // Adjust to position shadow
              left: 4, // Adjust to position shadow
              child: SvgPicture.asset(
                IconManager.addMessage,
                width: 100, // Set same width as main SVG
                height: 100, // Set same height as main SVG
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), // Shadow color and opacity
                  BlendMode.srcIn,
                ),
              ),
            ),
            SvgPicture.asset(
              IconManager.addMessage,
              width: imageSize,
            ),
          ],
        ),
        Gap(14.h),
        Text(
          names.messageCost,
          style: TextStyleManager.style16LightWhite,
        ),
        Text(
          "1 ${names.oneRyal}",
          style: TextStyleManager.style18BoldOrange,
        ),
      ],
    );
  }
}

class AddMessageForm extends StatefulWidget {
  const AddMessageForm({
    super.key,
  });

  @override
  State<AddMessageForm> createState() => _AddMessageFormState();
}

class _AddMessageFormState extends State<AddMessageForm> {
  late GlobalKey<FormState> _formKey;
  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AddMessageTextField(
            controller: TextEditingController(),
          ),
          Gap(24.h),
          MainGradientButton(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                context.pop();
              }
            },
            text: names.send,
          ),
        ],
      ),
    );
  }
}

class AddMessageTextField extends StatelessWidget {
  const AddMessageTextField({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    return TextFormField(
      minLines: 4,
      maxLines: 4,
      maxLength: 24,
      decoration: InputDecoration(
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: names.writeYourMessage,
        fillColor: ColorManager.white.withOpacity(0.6),
        // Adjust height
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.r),
          borderSide: BorderSide.none,
        ),
        alignLabelWithHint: false,
        hintStyle: TextStyleManager.style14RegBlack,

        suffixStyle: TextStyleManager.style18BoldOrange,
        suffixIconConstraints: const BoxConstraints(
          minHeight: 0,
        ),
        counter: const SizedBox.shrink(),

        isDense: true,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return names.emptyTextValidation;
        }
        return null;
      },
      controller: controller,
    );
  }
}
