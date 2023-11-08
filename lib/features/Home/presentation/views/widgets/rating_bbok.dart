import 'package:bookly_store/core/utils/asset_icone.dart';
import 'package:bookly_store/core/utils/asset_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          AssetIcons.kStar,
          height: 13.h,
          width: 13.w,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          "4.8",
          style: AppStyles.kTextStyle16,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          "(2390)",
          style: AppStyles.kTextStyle14,
        ),
      ],
    );
  }
}
