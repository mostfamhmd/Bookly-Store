import 'package:bookly_store/core/utils/asset_style.dart';
import 'package:bookly_store/features/Home/presentation/views/widgets/best_seller_sliver_list.dart';
import 'package:bookly_store/features/Home/presentation/views/widgets/hom_app_bar.dart';
import 'package:bookly_store/features/Home/presentation/views/widgets/list_view_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
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
                    style: AppStyles.kTextStyle18,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
            const BestSellerSliverList()
          ],
        ),
      ),
    );
  }
}
