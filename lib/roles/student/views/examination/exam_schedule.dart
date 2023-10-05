import 'package:eschool/roles/student/models/examination/exam_schedule_model.dart';
import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/curves/small_curve.dart';
import 'package:eschool/utils/functions.dart';
import 'package:flutter/material.dart';

class ExamSchedule extends StatelessWidget {
  ExamSchedule({super.key});
  final List<ExamScheduleModel> exams = [
    ExamScheduleModel(
      subject: 'English',
      date: '04-11-2022',
      start: '01:00',
      end: '03:00',
      duration: '2',
      room: '105',
    ),
    ExamScheduleModel(
      subject: 'Urdu',
      date: '05-11-2022',
      start: '01:00',
      end: '03:00',
      duration: '2',
      room: '105',
    ),
    ExamScheduleModel(
      subject: 'Mathematics',
      date: '06-11-2022',
      start: '01:00',
      end: '03:00',
      duration: '2',
      room: '105',
    ),
    ExamScheduleModel(
      subject: 'Physics',
      date: '07-11-2022',
      start: '01:00',
      end: '03:00',
      duration: '2',
      room: '105',
    ),
    ExamScheduleModel(
      subject: 'Checmistry',
      date: '08-11-2022',
      start: '01:00',
      end: '03:00',
      duration: '2',
      room: '105',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double topBarHeight = 135;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomPaint(
            size: Size(width, topBarHeight), // small 135, medium 155
            painter: SmallCurve(),
            child: appBar('Exam Schedule', topBarHeight),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 8),
              itemCount: exams.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${exams[index].subject}',
                      style: AppTextStyle.boldPrimary18.copyWith(color: AppColors.primary),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 14),
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: AppColors.cardColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Date',
                                      style: AppTextStyle.boldBlack14,
                                    ),
                                    Text(
                                      '${exams[index].date}',
                                      style: AppTextStyle.regularBlack14,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Start',
                                      style: AppTextStyle.boldBlack14,
                                    ),
                                    Text(
                                      '${exams[index].start}',
                                      style: AppTextStyle.regularBlack14,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'End',
                                      style: AppTextStyle.boldBlack14,
                                    ),
                                    Text(
                                      '${exams[index].end}',
                                      style: AppTextStyle.regularBlack14,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Duration',
                                      style: AppTextStyle.boldBlack14,
                                    ),
                                    Text(
                                      '${exams[index].duration}',
                                      style: AppTextStyle.regularBlack14,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Room No',
                                      style: AppTextStyle.boldBlack14,
                                    ),
                                    Text(
                                      '${exams[index].room}',
                                      style: AppTextStyle.regularBlack14,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: Container()),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
