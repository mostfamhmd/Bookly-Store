import 'package:bookly_store/core/utils/asset_image.dart';
import 'package:bookly_store/core/utils/asset_style.dart';
import 'package:bookly_store/features/Home/presentation/views/widgets/Details%20Book%20Widgets/price_&_preview.dart';
import 'package:bookly_store/features/Home/presentation/views/widgets/rating_best_seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoBook extends StatelessWidget {
  const InfoBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AssetImages.kTestImage,
          height: 260.h,
          width: 190.w,
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(
          "The Jungle Book",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AssetStyles.kTextStyle30,
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          "Rudyard Kipling",
          style: AssetStyles.kTextStyleAuther18,
        ),
        SizedBox(
          height: 15.h,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RatingBestSeller(),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        const PriceAndPreview(),
      ],
    );
  }
}
