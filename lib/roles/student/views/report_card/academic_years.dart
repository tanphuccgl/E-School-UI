import 'package:eschool/roles/student/views/report_card/report_card.dart';
import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/curves/small_curve.dart';
import 'package:eschool/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AcademicYears extends StatelessWidget {
  const AcademicYears({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double topBarHeight = 135;
    return Scaffold(
      body: Column(
        children: [
          CustomPaint(
            size: Size(width, topBarHeight), // small 135, medium 155
            painter: SmallCurve(),
            child: appBar('Yearly Report', topBarHeight),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: AppColors.lightGrey),
                    ),
                  ),
                  child: ListTile(
                    onTap: () {
                      Get.to(
                        ReportCardScreen(),
                      );
                    },
                    minVerticalPadding: 18,
                    title: Text(
                      'Class 7th (2015-16)',
                      style: AppTextStyle.mediumBlack18,
                    ),
                    trailing: const Icon(
                      Icons.chevron_right_rounded,
                      size: 28,
                      color: AppColors.primary,
                    ),
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
