import 'package:eschool/roles/student/views/splash_screen.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deskbook App',
      theme: ThemeData(
        primarySwatch: AppColors.primarySwatch,
      ),
      home: SplashScreen(),
    );
  }
}
