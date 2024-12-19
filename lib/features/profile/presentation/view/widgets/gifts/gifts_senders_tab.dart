import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:zone_game_app/features/profile/presentation/view/widgets/gifts/gift_sender_item.dart';

class GiftsSendersTab extends StatelessWidget {
  const GiftsSendersTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) => GiftSenderItem(index: index)
          .animate()
          .scaleY(delay: Duration(milliseconds: index < 10 ? index * 100 : 0))
          .fade(duration: Duration(milliseconds: index < 10 ? index * 100 : 0)),
    );
  }
}
