import 'package:eschool/roles/student/views/dashboard/dashboard.dart';
import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: controller,
              children: [
                buildView(height, AppColors.lightOrange, 'Mark Homework as Completed', 'on_boarding_01.png'),
                buildView(height, AppColors.blue, 'Rectify your Attendance', 'on_boarding_02.png'),
                buildView(height, AppColors.red, 'Student Exam & Report Cards', 'on_boarding_03.png'),
              ],
            ),
            Positioned(
              bottom: height * 0.06,
              child: GestureDetector(
                onTap: () {
                  if (index == 2) {
                    Get.offAll(() => Dashboard());
                  } else {
                    setState(() {
                      index = controller.page!.toInt() + 1;
                    });
                    controller.animateToPage(controller.page!.toInt() + 1,
                        duration: const Duration(milliseconds: 400), curve: Curves.easeOut);
                  }
                },
                child: Container(
                  height: height * 0.09,
                  width: height * 0.09,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    index == 2 ? Icons.check : Icons.chevron_right_rounded,
                    color: AppColors.white,
                    size: 28,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildView(double height, Color color, String title, String image) {
    return Container(
      color: color,
      child: Column(
        children: [
          SizedBox(
            height: height * 0.13,
          ),
          SizedBox(
            width: 250,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyle.mediumBlack30,
            ),
          ),
          SizedBox(
            height: height * 0.08,
          ),
          SizedBox(
            height: height * 0.42,
            child: Image.asset(
              'assets/images/$image',
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
