import 'package:eschool/roles/student/models/notice_board/notice_model.dart';
import 'package:eschool/roles/student/views/notice_board/notice_page.dart';
import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/curves/small_curve.dart';
import 'package:eschool/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoticeBoard extends StatelessWidget {
  NoticeBoard({super.key});

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
    double topBarHeight = 135;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomPaint(
            size: Size(width, topBarHeight), // small 135, medium 155
            painter: SmallCurve(),
            child: appBar('Notice Board', topBarHeight),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisExtent: 170,
                maxCrossAxisExtent: 300,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 20),
              itemCount: notices.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Get.to(() => NoticePage(
                        notice: notices[index],
                      )),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      color: AppColors.cardColor,
                      borderRadius: BorderRadius.circular(15),
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
                              image: AssetImage(notices[index].image!),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 65,
                          child: Text(
                            '${notices[index].title}',
                            style: AppTextStyle.mediumBlack14,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          '${notices[index].date}',
                          style: AppTextStyle.regularGrey12,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
