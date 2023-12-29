import 'package:doct_omar_yt/core/routing/app_router.dart';
import 'package:doct_omar_yt/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';

class DoctApp extends StatelessWidget {
  const DoctApp({super.key, required this.appRoutes});
  final AppRoutes appRoutes;

  @override
  Widget build(BuildContext context) {
    // Used ScreenUtilInit for adaptive design
    return ScreenUtilInit(
      // The size of the device screen in the design draft, in dp
      designSize: const Size(375, 812),
      // 	Whether to adapt the text according to the minimum of width and height

      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //onGenerateRoute used for routing in the app using named routes
        onGenerateRoute: appRoutes.generateRoute,
        initialRoute: Routes.onBoardingScreen,
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            // scaffoldBackgroundColo used for background color of scaffold in the app in the design draft
            scaffoldBackgroundColor: Colors.white),
      ),
    );
  }
}
