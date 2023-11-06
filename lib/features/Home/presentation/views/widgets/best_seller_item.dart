import 'package:bookly_store/core/utils/asset_icone.dart';
import 'package:bookly_store/core/utils/asset_image.dart';
import 'package:bookly_store/core/utils/asset_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Harry Potter \nand the Goblet of Fire",
              style: AssetStyles.kTextStyleSectra20,
            ),
            Text(
              "J.K. Rowling",
              style: AssetStyles.kTextStyle14,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Text(
                  "19.99",
                  style: AssetStyles.kTextStyle20,
                ),
                Text(
                  " €",
                  style: AssetStyles.kTextStyle15,
                ),
                SizedBox(
                  width: 45.w,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      AssetIcons.kStar,
                      height: 13.h,
                      width: 13.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "4.8",
                      style: AssetStyles.kTextStyle16,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "(2390)",
                      style: AssetStyles.kTextStyle14,
                    ),
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
