import 'package:bookly_store/constrains.dart';
import 'package:bookly_store/core/utils/app_router.dart';
import 'package:bookly_store/core/utils/asset_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const BooklyStore());
}

class BooklyStore extends StatelessWidget {
  const BooklyStore({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(375, 812),
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: AssetFonts.kMontserrat,
          colorScheme: const ColorScheme.dark(),
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
