import 'package:eschool/roles/student/models/attendance/attendance_model.dart';
import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/curves/medium_curve.dart';
import 'package:eschool/utils/curves/small_curve.dart';
import 'package:eschool/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class AttendanceCalendar extends StatelessWidget {
  AttendanceCalendar({super.key, required this.attendance});
  final MonthlyAttendance attendance;
  final AttendanceData attendanceData = AttendanceData();

  late EventList<Event> markedDateMap = attendanceData.createEvents(attendance.dailyAttendance!);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double topBarHeight = 135;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomPaint(
            size: Size(width, topBarHeight), // small 135, medium 155
            painter: SmallCurve(),
            child: appBar('Attendance', topBarHeight),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 15),
            child: Text(
              '${attendance.month} ${attendance.year}',
              style: AppTextStyle.mediumPrimary20,
            ),
          ),
          calendar(),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 36),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: AppColors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${attendance.presents}',
                          style: AppTextStyle.boldBlack16.copyWith(color: Color(0xff12B264)),
                        ),
                        Text(
                          'Present',
                          style: AppTextStyle.regularBlack14.copyWith(
                            color: Color(0xff12B264),
                          ),
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
                    height: 55,
                    decoration: BoxDecoration(
                      color: AppColors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${attendance.absents}',
                          style: AppTextStyle.boldBlack16.copyWith(color: Colors.redAccent.shade400),
                        ),
                        Text(
                          'Absent',
                          style: AppTextStyle.regularBlack14.copyWith(
                            color: Colors.redAccent.shade400,
                          ),
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
                    height: 55,
                    decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${attendance.leaves}',
                          style: AppTextStyle.boldBlack16.copyWith(color: Colors.blue),
                        ),
                        Text(
                          'Leave',
                          style: AppTextStyle.regularBlack14.copyWith(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  calendar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: CalendarCarousel<Event>(
        height: 350,
        customGridViewPhysics: const NeverScrollableScrollPhysics(),
        targetDateTime: attendance.dailyAttendance![0].date,
        isScrollable: false,
        disableDayPressed: true,
        nextDaysTextStyle: AppTextStyle.mediumGrey14,
        daysTextStyle: AppTextStyle.mediumGrey14,
        prevDaysTextStyle: AppTextStyle.mediumGrey14,
        todayButtonColor: Colors.transparent,
        todayTextStyle: AppTextStyle.mediumGrey14,
        weekdayTextStyle: AppTextStyle.regularGrey14,
        weekDayPadding: const EdgeInsets.all(0),
        weekendTextStyle: AppTextStyle.mediumGrey14,
        markedDateShowIcon: true,
        markedDateMoreShowTotal: true, // null for not showing hidden events indicator
        markedDateIconBuilder: (event) {
          return event.dot;
        },
        showHeader: false,
        markedDatesMap: markedDateMap,
        onDayPressed: (DateTime selectDay, List<Event> events) {},
      ),
    );
  }
}
