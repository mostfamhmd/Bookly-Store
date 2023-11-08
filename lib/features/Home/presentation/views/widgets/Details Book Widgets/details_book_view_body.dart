import 'package:bookly_store/core/utils/asset_style.dart';
import 'package:bookly_store/features/Home/presentation/views/widgets/Details%20Book%20Widgets/also_like_list_view.dart';
import 'package:bookly_store/features/Home/presentation/views/widgets/Details%20Book%20Widgets/details_book_view_appbar.dart';
import 'package:bookly_store/features/Home/presentation/views/widgets/Details%20Book%20Widgets/info_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsBookViewBody extends StatelessWidget {
  const DetailsBookViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const DetailsViewAppBar(),
            SizedBox(
              height: 30.h,
            ),
            const InfoBook(),
            SizedBox(
              height: 30.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "You can also like",
                style: AppStyles.kTextStyle14.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            const Expanded(child: AlsoLikeListView()),
          ],
        ),
      ),
    );
  }
}
