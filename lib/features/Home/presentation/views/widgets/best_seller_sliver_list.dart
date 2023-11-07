import 'package:bookly_store/features/Home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: 20.h,
            ),
            child: const BestSellerItem(),
          );
        },
        childCount: 10,
      ),
    );
  }
}
