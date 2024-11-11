import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:flutterdemosidebar/utils/routes/pages.dart';


Future<void> main() async {
  usePathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();

  runApp( MyApp(),);
}


class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = AppRouter().router;

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (BuildContext context, Widget? child) =>
         MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Sidebar app',
            routerConfig: router,
          ),

    );
  }
}