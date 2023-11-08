import 'package:bookly_store/core/utils/asset_style.dart';
import 'package:bookly_store/features/Search/presentation/view/widgets/search_field.dart';
import 'package:bookly_store/features/Search/presentation/view/widgets/search_results_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchField(),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Search Results",
              style: AppStyles.kTextStyle18,
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
