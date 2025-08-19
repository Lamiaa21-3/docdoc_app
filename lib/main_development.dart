import 'package:doc_advanced/core/helper/constants.dart';
import 'package:doc_advanced/core/helper/extensions.dart';
import 'package:doc_advanced/core/helper/shared_pref_helper.dart';
import 'package:doc_advanced/core/routing/app_router.dart';
import 'package:doc_advanced/doc_app.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/independency_injection.dart';




void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  // setupLocator();
  await ScreenUtil.ensureScreenSize();
  await checkedIfLoggedInUser();
  runApp(

    DocApp(
      appRouter: AppRouter(),
    ),
  );

}
checkedIfLoggedInUser()async{
  String? userToken=await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if(!userToken.isNullOrEmpty())
  {
    isLoggedInUser=true;
    print("✅ Token loaded: ${SharedPrefKeys.userToken}");
  }
  else{
    isLoggedInUser =false;
    print("failed");
  }
}
