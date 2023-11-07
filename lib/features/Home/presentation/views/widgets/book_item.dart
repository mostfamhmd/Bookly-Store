import 'package:bookly_store/core/utils/asset_image.dart';
import 'package:bookly_store/features/Home/presentation/views/details_book_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const DetailsBookView(),
          ),
        );
      },
      child: Container(
        width: 160.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetImages.kTestImage),
          ),
        ),
      ),
    );
  }
}
