import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:makan/core/translation/app_translation.dart';

class MakanApp extends StatelessWidget {
  const MakanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          translations: AppTranslations(), 
          locale: const Locale('en', 'US'), 
          fallbackLocale: const Locale(
            'en',
            'US',
          ), 
          title: 'Makan',
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
