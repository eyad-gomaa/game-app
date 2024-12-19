import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:zone_game_app/core/utils/extensions/context_extension.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/gifts/recieved_gift_item.dart';

class RecievedGiftsTab extends StatelessWidget {
  const RecievedGiftsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 50,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          crossAxisCount: context.isTablet ? 5 : 4,
          childAspectRatio: 80 / 109),
      itemBuilder: (context, index) => const RecievedGiftItem()
          .animate(
            key: ValueKey(index),
          )
          .scale(delay: Duration(milliseconds: index < 50 ? index * 100 : 0))
          .fade(duration: Duration(milliseconds: index < 50 ? index * 100 : 0)),
    );
  }
}
