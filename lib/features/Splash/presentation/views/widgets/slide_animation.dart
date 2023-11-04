import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              style: TextStyle(fontSize: 18.sp),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
