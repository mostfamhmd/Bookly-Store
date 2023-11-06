import 'package:bookly_store/core/utils/asset_style.dart';
import 'package:flutter/material.dart';

class SlideAnimation extends StatelessWidget {
  const SlideAnimation({
    super.key,
    required this.slideAnimation,
  });

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slideAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slideAnimation,
            child: Text(
              "Read Your Book Now",
              style: AssetStyles.kTextStyleSplash18,
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
