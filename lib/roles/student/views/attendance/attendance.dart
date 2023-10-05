import 'package:eschool/roles/student/models/attendance/attendance_model.dart';
import 'package:eschool/roles/student/views/attendance/attendance_calendar.dart';
import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/curves/small_curve.dart';
import 'package:eschool/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Attendance extends StatelessWidget {
  Attendance({super.key});
  final AttendanceData attendanceData = AttendanceData();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double topBarHeight = 135;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          CustomPaint(
            size: Size(width, topBarHeight), // small 135, medium 155
            painter: SmallCurve(),
            child: appBar(
              'Attendance',
              topBarHeight,
              trailing: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: '2022',
                  dropdownColor: AppColors.primary,
                  elevation: 8,
                  style: AppTextStyle.regularWhite16,
                  icon: const Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Icon(
                      FontAwesomeIcons.chevronDown,
                      color: AppColors.white,
                      size: 14,
                    ),
                  ),
                  items: <String>['2018', '2019', '2020', '2021', '2022'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
            ),
          ),
          SizedBox(
            height: height - topBarHeight,
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 5),
                  child: Text(
                    'Year ${attendanceData.attendance.year}',
                    style: AppTextStyle.mediumPrimary20,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: attendanceData.attendance.monthlyAttendance!.length,
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: GestureDetector(
                          onTap: () => Get.to(() => AttendanceCalendar(
                                attendance: attendanceData.attendance.monthlyAttendance![index],
                              )),
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppColors.secondary.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Text(
                                  '${attendanceData.attendance.monthlyAttendance![index].month}',
                                  style: AppTextStyle.mediumPrimary16,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height: 60,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: AppColors.green,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '${attendanceData.attendance.monthlyAttendance![index].presents}',
                                        style: AppTextStyle.boldBlack16.copyWith(color: Color(0xff12B264)),
                                      ),
                                      Text(
                                        'Present',
                                        style: AppTextStyle.regularBlack14.copyWith(color: Color(0xff12B264)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height: 60,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: AppColors.red,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '${attendanceData.attendance.monthlyAttendance![index].absents}',
                                        style: AppTextStyle.boldBlack16.copyWith(color: Color(0xffFD3667)),
                                      ),
                                      Text(
                                        'Absent',
                                        style: AppTextStyle.regularBlack14.copyWith(color: Color(0xffFD3667)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height: 60,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: AppColors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '${attendanceData.attendance.monthlyAttendance![index].leaves}',
                                        style: AppTextStyle.boldBlack16.copyWith(color: Color(0xff607EA6)),
                                      ),
                                      Text(
                                        'Leave',
                                        style: AppTextStyle.regularBlack14.copyWith(color: Color(0xff607EA6)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
