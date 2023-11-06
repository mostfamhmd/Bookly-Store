import 'package:bookly_store/constrains.dart';
import 'package:bookly_store/core/utils/asset_font.dart';
import 'package:bookly_store/features/Splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

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
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: AssetFonts.kMontserrat,
          colorScheme: const ColorScheme.dark(),
          scaffoldBackgroundColor: kPrimaryColor,
        ),
        home: const SplashView(),
      ),
    );
  }
}
