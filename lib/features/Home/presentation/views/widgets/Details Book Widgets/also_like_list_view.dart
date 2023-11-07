import 'package:bookly_store/features/Home/presentation/views/widgets/Details%20Book%20Widgets/also_like_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlsoLikeListView extends StatelessWidget {
  const AlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: const AlsoLikeItem(),
          );
        });
  }
}
