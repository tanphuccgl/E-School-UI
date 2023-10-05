import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/curves/small_curve.dart';
import 'package:eschool/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class CalendarScreen extends StatelessWidget {
  CalendarScreen({super.key});

  final EventList<Event> markedDateMap = EventList<Event>(
    events: {
      DateTime(2022, 11, 6): [
        Event(
          date: DateTime(2022, 11, 6),
          title: 'Absent',
          dot: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.cardColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              '6',
              style: AppTextStyle.mediumGrey14,
            ),
          ),
        ),
        Event(
          date: DateTime(2022, 11, 6),
          title: 'Absent',
          dot: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.cardColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              '6',
              style: AppTextStyle.mediumGrey14,
            ),
          ),
        ),
      ],
      DateTime(2022, 11, 8): [
        Event(
          date: DateTime(2022, 11, 8),
          title: 'Leave',
          dot: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.cardColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              '8',
              style: AppTextStyle.mediumGrey14,
            ),
          ),
        ),
      ],
      DateTime(2022, 11, 9): [
        Event(
          date: DateTime(2022, 11, 9),
          title: 'Leave',
          dot: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.cardColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              '9',
              style: AppTextStyle.mediumGrey14,
            ),
          ),
        ),
      ],
    },
  );

  final List<Event> events = [
    Event(
      date: DateTime(2022, 11, 6),
      title: 'National day',
      description: 'Holiday',
      dot: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          '6',
          style: AppTextStyle.mediumGrey14,
        ),
      ),
    ),
    Event(
      date: DateTime(2022, 11, 6),
      title: 'Summer Holiday Event',
      description: 'Event',
      dot: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          '6',
          style: AppTextStyle.mediumGrey14,
        ),
      ),
    ),
    Event(
      date: DateTime(2022, 11, 8),
      title: 'School Function',
      description: 'Event',
      dot: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          '8',
          style: AppTextStyle.mediumGrey14,
        ),
      ),
    ),
    Event(
      date: DateTime(2022, 11, 9),
      title: 'Iqbal day',
      description: 'Holiday',
      dot: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          '9',
          style: AppTextStyle.mediumGrey14,
        ),
      ),
    ),
  ];

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
            child: appBar('Calendar', topBarHeight),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 15),
            child: Text(
              'Nov 2022',
              style: AppTextStyle.mediumPrimary20,
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 4),
              children: [
                calendar(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Column(
                    children: events
                        .map(
                          (event) => Padding(
                            padding: const EdgeInsets.only(bottom: 14.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: AppColors.primary,
                                  ),
                                  child: Text(
                                    event.date.day.toString(),
                                    style: AppTextStyle.regularWhite18,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: width - 100,
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: AppColors.primary,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        event.title.toString(),
                                        style: AppTextStyle.mediumBlack14.copyWith(color: AppColors.white),
                                      ),
                                      Text(
                                        event.description.toString(),
                                        style: AppTextStyle.regularWhite12
                                            .copyWith(color: AppColors.white.withOpacity(0.5)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
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
        height: 330,
        customGridViewPhysics: const NeverScrollableScrollPhysics(),
        targetDateTime: DateTime(2022, 11),
        showOnlyCurrentMonthDate: true,
        isScrollable: false,
        disableDayPressed: true,
        nextDaysTextStyle: AppTextStyle.mediumGrey14,
        daysTextStyle: AppTextStyle.mediumGrey14,
        prevDaysTextStyle: AppTextStyle.mediumGrey14,
        todayButtonColor: AppColors.primary,
        todayTextStyle: AppTextStyle.mediumBlack14.copyWith(color: AppColors.white),
        weekdayTextStyle: AppTextStyle.regularGrey14,
        weekDayPadding: const EdgeInsets.all(0),
        weekendTextStyle: AppTextStyle.mediumGrey14,
        markedDateShowIcon: true,
        markedDateIconMaxShown: 1,
        markedDateMoreShowTotal: true, // null for not showing hidden events indicator
        markedDateIconBuilder: (event) {
          return event.dot;
        },
        showHeader: false,
        markedDatesMap: markedDateMap,
        onDayPressed: (DateTime selectDay, List<Event> events) {
          if (events.isNotEmpty) {}
        },
      ),
    );
  }
}
