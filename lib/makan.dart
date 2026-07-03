import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makan/core/app_router/router.dart';
class MakanApp extends StatelessWidget {
  const MakanApp({super.key});

  @override
  Widget build(BuildContext context) {

      return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp.router(
      title: 'Makan',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      
    );
      },
    );
   
  }

}
