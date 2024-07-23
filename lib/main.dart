import 'package:doc_advanced/core/routing/app_router.dart';
import 'package:doc_advanced/doc_app.dart';
import 'package:flutter/material.dart';

import 'core/di/independency_injection.dart';

void main() {
setupGetIt();
  runApp( DocApp(appRouter: AppRouter(),));
}


