import 'package:eschool/roles/student/views/attendance/attendance.dart';
import 'package:eschool/roles/student/views/auth/login.dart';
import 'package:eschool/roles/student/views/calendar/calendar_screen.dart';
import 'package:eschool/roles/student/views/examination/examination.dart';
import 'package:eschool/roles/student/views/fees/fees_details.dart';
import 'package:eschool/roles/student/views/homework/homework.dart';
import 'package:eschool/roles/student/views/notice_board/notice_board.dart';
import 'package:eschool/roles/student/views/profile/profile.dart';
import 'package:eschool/roles/student/views/report_card/academic_years.dart';
import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/curves/medium_curve.dart';
import 'package:eschool/utils/widgets/cards/topbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget menuItem(String image, String title, Function() onTap, {int? flex}) {
    return Expanded(
      flex: flex ?? 1,
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: 108,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 80,
                width: 80,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primary, width: 2.5),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset(
                  'assets/images/$image',
                ),
              ),
              Text(
                title,
                style: AppTextStyle.boldPrimary14,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double topBarHeight = 155;
    double appBarPad = 6.0;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          CustomPaint(
            size: Size(width, topBarHeight), // small 135, medium 155
            painter: MediumCurve(),
            child: Padding(
              padding: EdgeInsets.only(bottom: appBarPad),
              child: TopBar(
                height: topBarHeight,
                width: width,
                leading: GestureDetector(
                  onTap: () => Get.to(() => Profile()),
                  child: CircleAvatar(
                    backgroundColor: AppColors.secondary.withOpacity(0.5),
                    backgroundImage: const NetworkImage(
                        'https://thumbs.dreamstime.com/b/twelve-year-old-girl-park-posing-camera-cute-twelve-year-old-girl-park-posing-camera-146762856.jpg'),
                    radius: 24,
                  ),
                ),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Abiha Ali',
                      style: AppTextStyle.mediumBlack18.copyWith(color: AppColors.white),
                    ),
                    Text(
                      'Class VII B',
                      style: AppTextStyle.regularWhite14,
                    ),
                  ],
                ),
                trailing: GestureDetector(
                  onTap: () => Get.back(),
                  child: const Icon(
                    Icons.close,
                    color: AppColors.white,
                    size: 28,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height - topBarHeight - appBarPad,
            width: width,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(bottom: 40, left: 30, right: 30, top: 10),
              children: [
                Wrap(
                  runSpacing: 36,
                  alignment: WrapAlignment.center,
                  children: [
                    Row(
                      children: [
                        menuItem('home_icon.png', 'Dashboard', () => Get.back()),
                        menuItem('homework_icon.png', 'HomeWork', () => Get.to(() => HomeWork())),
                        menuItem('attendance_icon.png', 'Attendance', () => Get.to(() => Attendance())),
                      ],
                    ),
                    Row(
                      children: [
                        menuItem('fee_details_icon.png', 'Fee Details', () => Get.to(() => FeeDetails())),
                        menuItem('examination_icon.png', 'Examination', () => Get.to(() => Examination())),
                        menuItem('report_card_icon.png', 'Report Card', () => Get.to(() => AcademicYears())),
                      ],
                    ),
                    Row(
                      children: [
                        menuItem('calendar_icon.png', 'Calendar', () => Get.to(() => CalendarScreen())),
                        menuItem('notice_board_icon.png', 'Notice Board', () => Get.to(() => NoticeBoard())),
                        menuItem('profile_icon.png', 'Profile', () => Get.to(() => Profile())),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () => Get.offAll(() => Login()),
                    child: Text(
                      'Logout',
                      style: AppTextStyle.mediumPrimary16,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
