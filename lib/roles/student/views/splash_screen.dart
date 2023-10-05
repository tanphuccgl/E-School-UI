import 'package:eschool/roles/student/views/auth/login.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  timer() async {
    await Future.delayed(const Duration(seconds: 4));
    Get.offAll(() => Login());
  }

  @override
  void initState() {
    super.initState();
    timer();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset(
              'assets/images/background_vector.png',
            ),
            Image.asset(
              'assets/images/deskbook_logo_white.png',
              height: 200,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
