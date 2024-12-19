import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zone_game_app/core/utils/managers/color_manager/color_manager.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';
import 'package:zone_game_app/generated/l10n.dart';

class WhiteOpacityField extends StatefulWidget {
  const WhiteOpacityField({
    super.key,
    this.hint,
    this.prefixIcon,
    this.isPassword,
    this.validation = false,
    required this.controller,
  });
  final String? hint;
  final Widget? prefixIcon;
  final bool? isPassword; // to show eye suffix icon
  final bool validation;
  final TextEditingController controller;

  @override
  State<WhiteOpacityField> createState() => _WhiteOpacityFieldState();
}

class _WhiteOpacityFieldState extends State<WhiteOpacityField> {
  bool obSecureText = true;
  @override
  Widget build(BuildContext context) {
    double borderRadius = 12.r;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: ColorManager.black.withOpacity(0.16),
              spreadRadius: 0,
              blurRadius: 1.9,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: TextFormField(
          style: TextStyleManager.style16BoldWhite,
          obscureText: obSecureText,
          decoration: InputDecoration(
            filled: true,
            fillColor: ColorManager.white.withOpacity(0.2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide.none,
            ),
            prefixIcon: widget.prefixIcon,
            hintText: widget.hint,
            hintStyle: TextStyleManager.style16RegWhite,
            suffixIcon: suffixIcon(),
          ),
          controller: widget.controller,
          validator: widget.validation
              ? (value) {
                  if (value == null || value.isEmpty) {
                    return S.of(context).emptyTextValidation;
                  }
                  return null;
                }
              : null,
        ),
      ),
    );
  }

  // to show and hide password
  Widget? suffixIcon() {
    // check if it is password
    if (widget.isPassword != null) {
      return GestureDetector(
          onTap: () {
            setState(() {
              obSecureText = !obSecureText;
            });
          },
          child: Icon(
            obSecureText
                ? Icons.remove_red_eye_outlined
                : Icons.remove_red_eye_rounded,
            color: ColorManager.white,
          ));
    } else {
      return null;
    }
  }
}
