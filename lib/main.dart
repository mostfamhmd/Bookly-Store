import 'package:bookly_store/constrains.dart';
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
      designSize: Size(
          MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: kPrimaryFont,
          colorScheme: const ColorScheme.dark(),
          scaffoldBackgroundColor: kPrimaryColor,
        ),
        home: const SplashView(),
      ),
    );
  }
}
