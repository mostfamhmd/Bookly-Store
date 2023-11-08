import 'package:bookly_store/core/utils/asset_icone.dart';
import 'package:bookly_store/core/utils/asset_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AssetIcons.kClose,
              height: 25.h,
              width: 25.w,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
          hintText: "Search",
          hintStyle: AppStyles.kTextStyleAuther18.copyWith(
            color: Colors.white,
          ),
          border: buildoutlineInputBorder(),
          enabledBorder: buildoutlineInputBorder(),
          focusedBorder: buildoutlineInputBorder(),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              height: 20.h,
              width: 20.w,
              AssetIcons.kSearch,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          )),
    );
  }

  OutlineInputBorder buildoutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(
          color: Colors.deepPurple,
          width: 2.w,
        ));
  }
}
