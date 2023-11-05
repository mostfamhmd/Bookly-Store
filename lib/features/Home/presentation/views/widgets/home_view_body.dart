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
        padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 40.h),
        child: Column(
          children: [
            const HomeAppBar(),
            SizedBox(
              height: 50.h,
            ),
            SizedBox(
              height: 290.h,
              child: const Expanded(
                child: ListViewBook(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
