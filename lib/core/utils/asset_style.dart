import 'package:bookly_store/core/utils/asset_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppStyles {
  static final kTextStyle14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  );
  static final kTextStyle15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,
  );
  static final kTextStyle16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static final kTextStyle18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
  );
  static final kTextStyleSplash18 = TextStyle(
    fontSize: 18.sp,
    fontFamily: AssetFonts.kSectra,
    fontWeight: FontWeight.w700,
  );
  static final kTextStyleAuther18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  );
  static final kTextStyleSectra20 = TextStyle(
    fontSize: 20.sp,
    fontFamily: AssetFonts.kSectra,
  );
  static final kTextStyle20 = TextStyle(
    fontSize: 20.sp,
    fontFamily: AssetFonts.kMontserrat,
    fontWeight: FontWeight.bold,
  );
  static final kTextStyle30 = TextStyle(
    fontSize: 30.sp,
    fontFamily: AssetFonts.kSectra,
  );
}
