import 'package:eschool/roles/student/models/homework/homework_model.dart';
import 'package:eschool/roles/student/models/notice_board/notice_model.dart';
import 'package:eschool/roles/student/views/dashboard/home.dart';
import 'package:eschool/roles/student/views/homework/homework_details.dart';
import 'package:eschool/roles/student/views/notice_board/notice_page.dart';
import 'package:eschool/roles/student/views/profile/profile.dart';
import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/curves/medium_curve.dart';
import 'package:eschool/utils/widgets/cards/homework_card.dart';
import 'package:eschool/utils/widgets/cards/topbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  final List<HomeworkDates> homework = [
    HomeworkDates(date: '21 Nov 2022', homework: [
      HomeworkModel(title: 'Chapter 5 Summary', subject: 'Urdu', submitted: true),
      HomeworkModel(title: 'My Best Friend Essay', subject: 'English', submitted: true),
      HomeworkModel(title: 'Chapter 1 (Exercise 1.1 & 1.2)', subject: 'Mathematics', submitted: false),
      HomeworkModel(title: 'Chapter 2 MCQs', subject: 'Computer', submitted: false),
      HomeworkModel(title: 'Types of Matter', subject: 'Physics', submitted: false),
    ]),
  ];

  final List<NoticeModel> notices = [
    NoticeModel(
      image: 'assets/images/notice.png',
      title: 'School is going for vecation in next month',
      description:
          """Dear Children,\nSummer Vacation is synonymous with fun and frolic, going for picnics, playing for long hours, exploring new places and much more... But, dear children, there is a lot more you can do to make your vacation more interesting and meaningful. We have planned some interesting activities for you. So get ready to enjoy your summer vacation! Here is an “ACTIVITY TREASURE BOX” for you. All the best and have FUN! When the school reopens bring back your TREASURE, To go through it will be our PLEASURE!""",
      note:
          """Note: - To keep your minds active over the holiday we would like you to complete the following Home work. These are due in, on 29-June-2022 (Friday). 5 marks will be added on every subject in the 1st term Exam.',""",
      from: 'Principal',
      name: 'Dr. Muhammad Ijaz',
      date: '26 Nov 2022',
    ),
    NoticeModel(
      image: 'assets/images/notice.png',
      title: 'Sports day for 9th and 10th class',
      description:
          """Dear Children,\nSports are synonymous with fun and frolic, We are arranging different sports competitions between 9th and 10th class. All interested students are advised to register themselves before 16 Nov 2022.""",
      note: """Note: - Make sure to be in school on time.""",
      from: 'Principal',
      name: 'Dr. Muhammad Ijaz',
      date: '12 Nov 2022',
    ),
    NoticeModel(
      image: 'assets/images/notice.png',
      title: 'School orientation for new students',
      description:
          """The purpose of New Student Orientation is to both help our incoming 9th Grade class acclimate to their new school culture and have positive effects on change in existing culture relating to stress and academic achievement.  Gunn High School hopes to continue positive growth in their students and help students develop positive images in how they see themselves at Gunn High School.""",
      note: "",
      from: 'Principal',
      name: 'Dr. Muhammad Ijaz',
      date: '04 Nov 2022',
    ),
    NoticeModel(
      image: 'assets/images/notice.png',
      title: 'Monthly color day for all students',
      description:
          """School colors are more than just accessories when it comes to universities. They are an extension of a school’s identity and for many people to their own identity or symbol of pride. Many schools choose their colors with a significant amount of care. Whether you were in the creative arts, sports, or financing, it’s likely you have a special connection to your school’s colors.""",
      note: "",
      from: 'Principal',
      name: 'Dr. Muhammad Ijaz',
      date: '20 Oct 2022',
    ),
  ];

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
                  onTap: () {
                    Get.to(() => Home());
                  },
                  child: Image.asset(
                    'assets/images/menu_icon.png',
                    width: 26,
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
                  onTap: () => Get.to(() => Profile()),
                  child: CircleAvatar(
                    backgroundColor: AppColors.secondary.withOpacity(0.5),
                    backgroundImage: const AssetImage('assets/images/girl_image.jpg'),
                    radius: 24,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: height - topBarHeight - appBarPad,
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
                  child: Text(
                    'Notice Board',
                    style: AppTextStyle.mediumPrimary20,
                  ),
                ),
                SizedBox(
                  height: 170,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: notices.length,
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => Get.to(() => NoticePage(notice: notices[index])),
                        child: Container(
                          height: 170,
                          width: 155,
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: AppColors.green,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(notices[index].image.toString()),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 55,
                                child: Text(
                                  notices[index].title.toString(),
                                  style: AppTextStyle.mediumBlack14.copyWith(height: 1.3),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                ),
                              ),
                              Text(
                                notices[index].date.toString(),
                                style: AppTextStyle.regularGrey14,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: Text(
                    'HomeWork',
                    style: AppTextStyle.mediumPrimary20,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: homework[0].homework!.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
                        child: HomeworkCard(
                          width: width,
                          height: 70,
                          isCompleted: homework[0].homework![index].submitted ?? false,
                          title: homework[0].homework![index].title,
                          subtitle: '${homework[0].homework![index].subject} / ${homework[0].date}',
                          onTap: () => Get.to(
                            () => HomeworkDetails(
                              submitted: homework[0].homework![index].submitted ?? false,
                            ),
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
