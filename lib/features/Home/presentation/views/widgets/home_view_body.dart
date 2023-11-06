import 'package:bookly_store/core/utils/asset_font.dart';
import 'package:bookly_store/core/utils/asset_icone.dart';
import 'package:bookly_store/core/utils/asset_image.dart';
import 'package:bookly_store/core/utils/asset_style.dart';
import 'package:bookly_store/features/Home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_store/features/Home/presentation/views/widgets/hom_app_bar.dart';
import 'package:bookly_store/features/Home/presentation/views/widgets/list_view_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeAppBar(),
            SizedBox(
              height: 50.h,
            ),
            const ListViewBook(),
            SizedBox(
              height: 50.h,
            ),
            Text(
              "Best Seller",
              style: AssetStyles.kTitleMedium,
            ),
            SizedBox(
              height: 20.h,
            ),
            const BestSellerItem()
          ],
        ),
      ),
    );
  }
}
