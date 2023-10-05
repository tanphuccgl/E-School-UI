import 'package:eschool/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart';

class YearlyAttendance {
  YearlyAttendance({
    this.year,
    this.monthlyAttendance,
  });
  final String? year;
  final List<MonthlyAttendance>? monthlyAttendance;
}

class MonthlyAttendance {
  MonthlyAttendance({
    this.year,
    this.month,
    this.presents,
    this.absents,
    this.leaves,
    this.dailyAttendance,
  });
  final String? year;
  final String? month;
  final String? presents;
  final String? absents;
  final String? leaves;
  final List<DailyAttendance>? dailyAttendance;
}

class DailyAttendance {
  DailyAttendance({
    this.date,
    this.title,
  });
  final DateTime? date;
  final String? title;
}

class AttendanceData {
  YearlyAttendance attendance = YearlyAttendance(
    year: '2022',
    monthlyAttendance: [
      MonthlyAttendance(
        year: '2022',
        month: 'Jan',
        presents: '28',
        absents: '2',
        leaves: '1',
        dailyAttendance: [
          DailyAttendance(
            date: DateTime(2022, 01, 01),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 02),
            title: '',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 03),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 04),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 05),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 06),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 07),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 08),
            title: 'Leave',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 09),
            title: '',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 10),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 11),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 12),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 13),
            title: 'Absent',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 14),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 15),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 16),
            title: '',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 17),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 18),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 19),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 20),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 21),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 22),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 23),
            title: '',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 24),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 25),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 26),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 27),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 28),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 29),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 30),
            title: '',
          ),
          DailyAttendance(
            date: DateTime(2022, 01, 31),
            title: 'Absent',
          ),
        ],
      ),
      MonthlyAttendance(
        year: '2022',
        month: 'Feb',
        presents: '22',
        absents: '1',
        leaves: '1',
        dailyAttendance: [
          DailyAttendance(
            date: DateTime(2022, 02, 01),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 02),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 03),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 04),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 05),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 06),
            title: '',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 07),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 08),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 09),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 10),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 11),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 12),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 13),
            title: '',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 14),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 15),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 16),
            title: 'Absent',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 17),
            title: 'Leave',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 18),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 19),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 20),
            title: '',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 21),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 22),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 23),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 24),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 25),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 26),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 27),
            title: '',
          ),
          DailyAttendance(
            date: DateTime(2022, 02, 28),
            title: 'Present',
          ),
        ],
      ),
      MonthlyAttendance(
        year: '2022',
        month: 'Mar',
        presents: '23',
        absents: '1',
        leaves: '3',
        dailyAttendance: [
          DailyAttendance(
            date: DateTime(2022, 03, 01),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 02),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 03),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 04),
            title: 'Leave',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 05),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 06),
            title: '',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 07),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 08),
            title: 'Leave',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 09),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 10),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 11),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 12),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 13),
            title: '',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 14),
            title: 'Leave',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 15),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 16),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 17),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 18),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 19),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 20),
            title: '',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 21),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 22),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 23),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 24),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 25),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 26),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 27),
            title: '',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 28),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 29),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 30),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 03, 31),
            title: 'Absent',
          ),
        ],
      ),
      MonthlyAttendance(
        year: '2022',
        month: 'Apr',
        absents: '3',
        presents: '21',
        leaves: '2',
        dailyAttendance: [
          DailyAttendance(
            date: DateTime(2022, 04, 01),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 02),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 03),
            title: '',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 04),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 05),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 06),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 07),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 08),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 09),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 10),
            title: '',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 11),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 12),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 13),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 14),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 15),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 16),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 17),
            title: '',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 18),
            title: 'Leave',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 19),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 20),
            title: 'Absent',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 21),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 22),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 23),
            title: 'Leave',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 24),
            title: '',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 25),
            title: 'Absent',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 26),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 27),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 28),
            title: 'Present',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 29),
            title: 'Absent',
          ),
          DailyAttendance(
            date: DateTime(2022, 04, 30),
            title: 'Present',
          ),
        ],
      ),
      MonthlyAttendance(
        year: '2022',
        month: 'May',
        presents: '22',
        absents: '2',
        leaves: '1',
        dailyAttendance: [
          DailyAttendance(date: DateTime(2022, 05, 01), title: ''),
          DailyAttendance(date: DateTime(2022, 05, 02), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 03), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 04), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 05), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 06), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 07), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 08), title: ''),
          DailyAttendance(date: DateTime(2022, 05, 09), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 10), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 11), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 12), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 13), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 14), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 15), title: ''),
          DailyAttendance(date: DateTime(2022, 05, 16), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 17), title: 'Leave'),
          DailyAttendance(date: DateTime(2022, 05, 18), title: 'Absent'),
          DailyAttendance(date: DateTime(2022, 05, 19), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 20), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 21), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 22), title: ''),
          DailyAttendance(date: DateTime(2022, 05, 23), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 24), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 25), title: 'Absent'),
          DailyAttendance(date: DateTime(2022, 05, 26), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 27), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 28), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 05, 29), title: ''),
          DailyAttendance(date: DateTime(2022, 05, 30), title: 'Present'),
        ],
      ),
      MonthlyAttendance(
        year: '2022',
        month: 'Jun',
        presents: '21',
        absents: '3',
        leaves: '2',
        dailyAttendance: [
          DailyAttendance(date: DateTime(2022, 06, 01), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 02), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 03), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 04), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 05), title: ''),
          DailyAttendance(date: DateTime(2022, 06, 06), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 07), title: 'Absent'),
          DailyAttendance(date: DateTime(2022, 06, 08), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 09), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 10), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 11), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 12), title: ''),
          DailyAttendance(date: DateTime(2022, 06, 13), title: 'Leave'),
          DailyAttendance(date: DateTime(2022, 06, 14), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 15), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 16), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 17), title: 'Leave'),
          DailyAttendance(date: DateTime(2022, 06, 18), title: 'Absent'),
          DailyAttendance(date: DateTime(2022, 06, 19), title: ''),
          DailyAttendance(date: DateTime(2022, 06, 20), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 21), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 22), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 23), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 24), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 25), title: 'Absent'),
          DailyAttendance(date: DateTime(2022, 06, 26), title: ''),
          DailyAttendance(date: DateTime(2022, 06, 27), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 28), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 29), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 06, 30), title: 'Present'),
        ],
      ),
      MonthlyAttendance(
        year: '2022',
        month: 'Jul',
        presents: '25',
        absents: '0',
        leaves: '1',
        dailyAttendance: [
          DailyAttendance(date: DateTime(2022, 07, 01), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 02), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 03), title: ''),
          DailyAttendance(date: DateTime(2022, 07, 04), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 05), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 06), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 07), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 08), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 09), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 10), title: ''),
          DailyAttendance(date: DateTime(2022, 07, 11), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 12), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 13), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 14), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 15), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 16), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 17), title: ''),
          DailyAttendance(date: DateTime(2022, 07, 18), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 19), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 20), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 21), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 22), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 23), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 24), title: ''),
          DailyAttendance(date: DateTime(2022, 07, 25), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 26), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 27), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 28), title: 'Leave'),
          DailyAttendance(date: DateTime(2022, 07, 29), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 30), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 07, 31), title: ''),
        ],
      ),
      MonthlyAttendance(
        year: '2022',
        month: 'Aug',
        presents: '27',
        absents: '0',
        leaves: '0',
        dailyAttendance: [
          DailyAttendance(date: DateTime(2022, 08, 01), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 02), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 03), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 04), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 05), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 06), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 07), title: ''),
          DailyAttendance(date: DateTime(2022, 08, 08), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 09), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 10), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 11), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 12), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 13), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 14), title: ''),
          DailyAttendance(date: DateTime(2022, 08, 15), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 16), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 17), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 18), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 19), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 20), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 21), title: ''),
          DailyAttendance(date: DateTime(2022, 08, 22), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 23), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 24), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 25), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 26), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 27), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 28), title: ''),
          DailyAttendance(date: DateTime(2022, 08, 29), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 30), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 08, 31), title: 'Present'),
        ],
      ),
      MonthlyAttendance(
        year: '2022',
        month: 'Sep',
        presents: '20',
        absents: '6',
        leaves: '0',
        dailyAttendance: [
          DailyAttendance(date: DateTime(2022, 09, 01), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 02), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 03), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 04), title: ' '),
          DailyAttendance(date: DateTime(2022, 09, 05), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 06), title: 'Absent'),
          DailyAttendance(date: DateTime(2022, 09, 07), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 08), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 09), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 10), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 11), title: ' '),
          DailyAttendance(date: DateTime(2022, 09, 12), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 13), title: 'Absent'),
          DailyAttendance(date: DateTime(2022, 09, 14), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 15), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 16), title: 'Absent'),
          DailyAttendance(date: DateTime(2022, 09, 17), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 18), title: ' '),
          DailyAttendance(date: DateTime(2022, 09, 19), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 20), title: 'Absent'),
          DailyAttendance(date: DateTime(2022, 09, 21), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 22), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 23), title: 'Absent'),
          DailyAttendance(date: DateTime(2022, 09, 24), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 25), title: ''),
          DailyAttendance(date: DateTime(2022, 09, 26), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 27), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 28), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 09, 29), title: 'Absent'),
          DailyAttendance(date: DateTime(2022, 09, 30), title: 'Present'),
        ],
      ),
      MonthlyAttendance(
        year: '2022',
        month: 'Oct',
        presents: '25',
        absents: '0',
        leaves: '1',
        dailyAttendance: [
          DailyAttendance(date: DateTime(2022, 10, 01), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 02), title: ''),
          DailyAttendance(date: DateTime(2022, 10, 03), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 04), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 05), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 06), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 07), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 08), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 09), title: ''),
          DailyAttendance(date: DateTime(2022, 10, 10), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 11), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 12), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 13), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 14), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 15), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 16), title: ''),
          DailyAttendance(date: DateTime(2022, 10, 17), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 18), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 19), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 20), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 21), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 22), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 23), title: ''),
          DailyAttendance(date: DateTime(2022, 10, 24), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 25), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 26), title: 'Leave'),
          DailyAttendance(date: DateTime(2022, 10, 27), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 28), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 29), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 10, 30), title: ''),
          DailyAttendance(date: DateTime(2022, 10, 31), title: 'Present'),
        ],
      ),
      MonthlyAttendance(
        year: '2022',
        month: 'Nov',
        presents: '19',
        absents: '0',
        leaves: '0',
        dailyAttendance: [
          DailyAttendance(date: DateTime(2022, 11, 01), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 11, 02), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 11, 03), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 11, 04), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 11, 05), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 11, 06), title: ''),
          DailyAttendance(date: DateTime(2022, 11, 07), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 11, 08), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 11, 09), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 11, 10), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 11, 11), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 11, 12), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 11, 13), title: ''),
          DailyAttendance(date: DateTime(2022, 11, 14), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 11, 15), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 11, 16), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 11, 17), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 11, 18), title: 'Present'),
          DailyAttendance(date: DateTime(2022, 11, 19), title: 'Present'),
        ],
      )
    ],
  );

  EventList<Event> createEvents(List<DailyAttendance> dailyAttendance) {
    final EventList<Event> markedDateMap = EventList<Event>(
      events: {},
    );
    for (var day in dailyAttendance) {
      String weekDay = DateFormat('EEEE').format(day.date!);
      markedDateMap.events.putIfAbsent(
        day.date!,
        () => [
          Event(
            date: day.date!,
            title: day.title,
            dot: Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: day.title == 'Present'
                    ? AppColors.green
                    : day.title == 'Absent'
                        ? AppColors.red
                        : day.title == 'Leave'
                            ? AppColors.blue
                            : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(weekDay != 'Sunday' ? day.date!.day.toString() : ''),
            ),
          ),
        ],
      );
    }
    return markedDateMap;
  }
}
