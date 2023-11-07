import 'package:bookly_store/core/utils/asset_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlsoLikeItem extends StatelessWidget {
  const AlsoLikeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetImages.kTestImage,
      height: 125.h,
      width: 80.w,
    );
  }
}
