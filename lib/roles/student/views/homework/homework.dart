import 'package:eschool/roles/student/models/homework/homework_model.dart';
import 'package:eschool/roles/student/views/homework/homework_details.dart';
import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/curves/small_curve.dart';
import 'package:eschool/utils/functions.dart';
import 'package:eschool/utils/widgets/cards/homework_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeWork extends StatelessWidget {
  HomeWork({super.key});

  final List<HomeworkDates> homework = [
    HomeworkDates(
      date: '21 Nov 2022',
      homework: [
        HomeworkModel(title: 'Chapter 5 Summary', subject: 'Urdu', submitted: true),
        HomeworkModel(title: 'My Best Friend Essay', subject: 'English', submitted: false),
        HomeworkModel(title: 'Chapter 1 (Exercise 1.1 & 1.2)', subject: 'Mathematics', submitted: false),
      ],
    ),
    HomeworkDates(
      date: '18 Nov 2022',
      homework: [
        HomeworkModel(title: 'Chapter 4 Summary', subject: 'Urdu', submitted: true),
        HomeworkModel(title: 'Chapter 2 Questions', subject: 'Pakistan Studies', submitted: true),
        HomeworkModel(title: 'What is Haredware and Software', subject: 'Computer Science', submitted: true),
      ],
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
        children: [
          CustomPaint(
            size: Size(width, topBarHeight), // small 135, medium 155
            painter: SmallCurve(),
            child: appBar('Homework', topBarHeight),
          ),
          SizedBox(
            height: height - topBarHeight,
            width: width,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              itemCount: homework.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${homework[index].date}',
                        style: AppTextStyle.mediumPrimary20,
                      ),
                      ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, itemIndex) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: HomeworkCard(
                              width: width,
                              height: 70,
                              isCompleted: homework[index].homework![itemIndex].submitted ?? false,
                              title: '${homework[index].homework![itemIndex].title}',
                              subtitle: '${homework[index].homework![itemIndex].subject}',
                              onTap: () => Get.to(() => HomeworkDetails(
                                    submitted: homework[index].homework![itemIndex].submitted ?? false,
                                  )),
                            ),
                          );
                        },
                      )
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
