import 'package:eschool/roles/student/models/examination/exam_schedule_model.dart';
import 'package:eschool/roles/student/views/examination/exam_schedule.dart';
import 'package:eschool/roles/student/views/report_card/report_card.dart';
import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/curves/small_curve.dart';
import 'package:eschool/utils/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Examination extends StatelessWidget {
  Examination({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double topBarHeight = 135;
    List titles = [
      'Monthly Exams for Student Evaluation (Octuber) 2022 ',
      'Monthly Exams for Student Evaluation (November) 2022',
      'Mid Term Exams (Fall-2022)',
      'Final Term Exams (Fall-2022)',
    ];
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomPaint(
            size: Size(width, topBarHeight), // small 135, medium 155
            painter: SmallCurve(),
            child: appBar('Examination', topBarHeight),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 15),
            child: Text(
              'Examination List',
              style: AppTextStyle.mediumPrimary18,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: titles.length,
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  margin: const EdgeInsets.only(top: 12),
                  height: 120,
                  decoration: BoxDecoration(
                    color: AppColors.cardColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        titles[index],
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.regularBlack16,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () => Get.to(() => ExamSchedule()),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primary,
                              elevation: 0,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.calendar_month_outlined,
                                  size: 16,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Schedule',
                                  style: AppTextStyle.regularWhite12,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          ElevatedButton(
                            onPressed: () => Get.to(
                              ReportCardScreen(),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primary,
                              elevation: 0,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  FontAwesomeIcons.fileLines,
                                  size: 14,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Results',
                                  style: AppTextStyle.regularWhite12,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
