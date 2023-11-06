import 'package:bookly_store/core/utils/asset_font.dart';
import 'package:bookly_store/core/utils/asset_icone.dart';
import 'package:bookly_store/core/utils/asset_image.dart';
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
              style: TextStyle(
                fontSize: 20.sp,
                fontFamily: AssetFonts.kSectra,
              ),
            ),
            Text(
              "J.K. Rowling",
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey,
                fontFamily: AssetFonts.kMontserrat,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Text(
                  "19.99",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
                ),
                Text(
                  " €",
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
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
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "(2390)",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.sp,
                      ),
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
