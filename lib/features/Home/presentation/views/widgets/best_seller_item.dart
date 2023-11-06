import 'package:bookly_store/core/utils/asset_image.dart';
import 'package:bookly_store/core/utils/asset_style.dart';
import 'package:bookly_store/features/Home/presentation/views/widgets/price_&_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AssetImages.kTestImage,
          width: 70.w,
          height: 110.h,
        ),
        SizedBox(
          width: 30.w,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 185.w,
                child: Text(
                  "Harry Potter and the Goblet of Fire",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AssetStyles.kTextStyleSectra20,
                ),
              ),
              Text(
                "J.K. Rowling",
                style: AssetStyles.kTextStyle14,
              ),
              SizedBox(
                height: 20.h,
              ),
              const PriceAndRating()
            ],
          ),
        )
      ],
    );
  }
}
