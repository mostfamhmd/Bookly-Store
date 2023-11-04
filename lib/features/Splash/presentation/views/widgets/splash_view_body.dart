import 'package:bookly_store/core/utils/asset_image.dart';
import 'package:bookly_store/features/Splash/presentation/views/widgets/slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slideAnimation = Tween<Offset>(begin: Offset(0, 12.h), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsImages.kPrimaryLogo),
        SizedBox(
          height: 10.h,
        ),
        SlideAnimation(slideAnimation: slideAnimation),
      ],
    );
  }
}
