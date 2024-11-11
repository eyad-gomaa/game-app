import 'package:flutter/material.dart';
import 'package:zone_game_app/core/utils/managers/style_manager/text_style_manager.dart';

class BottomSheetTitle extends StatelessWidget {
  const BottomSheetTitle({
    super.key,
    required this.title,
    this.description,
  });

  final String title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyleManager.style24BoldWhite,
          ),
          description != null
              ? SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    description!,
                    style: TextStyleManager.style16RegWhite,
                    textAlign: TextAlign.center,
                  ),
                )
              : const SizedBox.shrink(),
        ]);
  }
}
