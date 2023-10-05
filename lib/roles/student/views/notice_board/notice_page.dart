import 'package:eschool/roles/student/models/notice_board/notice_model.dart';
import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/curves/small_curve.dart';
import 'package:eschool/utils/functions.dart';
import 'package:flutter/material.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({super.key, this.notice});
  final NoticeModel? notice;

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
            child: appBar('Notice', topBarHeight),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 08),
              children: [
                Text(
                  '${notice?.title}',
                  textAlign: TextAlign.start,
                  style: AppTextStyle.boldBlack18,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '${notice?.description}',
                  textAlign: TextAlign.justify,
                  style: AppTextStyle.regularBlack14,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '${notice?.note}',
                  textAlign: TextAlign.justify,
                  style: AppTextStyle.mediumBlack14,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '${notice?.from}',
                  style: AppTextStyle.boldBlack14,
                ),
                Text(
                  '${notice?.name}',
                  style: AppTextStyle.boldBlack14,
                ),
                Text(
                  'Date: ${notice?.date}',
                  style: AppTextStyle.boldBlack14,
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
