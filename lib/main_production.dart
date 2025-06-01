import 'package:doc_advanced/core/routing/app_router.dart';
import 'package:doc_advanced/doc_app.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/di/independency_injection.dart';

void main() {
  setupGetIt();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.amber,
      statusBarColor: Colors.red,
    )
  );
  // setupLocator();
  
  runApp(

    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
