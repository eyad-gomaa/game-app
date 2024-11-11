import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/generated/l10n.dart';
class LightBlueField extends StatelessWidget {
  const LightBlueField({
    super.key,
    this.minLines,
    this.hint,
    required this.controller,
  });
  final int? minLines;
  final String? hint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    S names = S.of(context);
    return TextFormField(
      minLines: minLines,
      maxLines: minLines,
      decoration: InputDecoration(
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: hint,
        fillColor: ColorManager.blue.withOpacity(0.1),
        // Adjust height
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
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