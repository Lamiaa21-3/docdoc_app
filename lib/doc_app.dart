import 'package:doc_advanced/core/routing/app_router.dart';
import 'package:doc_advanced/core/theming/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner:false,
        title: "Doc App",
        theme: ThemeData(
          primaryColor: ColorManager.mainBlue,
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.homeScreen,
      ),

    );
  }
}
