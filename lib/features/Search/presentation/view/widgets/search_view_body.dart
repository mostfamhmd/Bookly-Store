import 'package:bookly_store/core/utils/asset_style.dart';
import 'package:bookly_store/features/Search/presentation/view/widgets/search_view_bar.dart';
import 'package:bookly_store/features/Search/presentation/view/widgets/search_results_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: 15.w,
              ),
              child: const SearchViewBar(),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 30.w,
                left: 30.w,
              ),
              child: Text(
                "Search Results",
                style: AppStyles.kTextStyle18,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            const Expanded(
              child: SearchResultsListView(),
            ),
          ],
        ),
      ),
    );
  }
}
