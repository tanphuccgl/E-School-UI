import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/curves/small_curve.dart';
import 'package:eschool/utils/functions.dart';
import 'package:eschool/utils/widgets/buttons/large_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_html/flutter_html.dart';

class HomeworkDetails extends StatelessWidget {
  HomeworkDetails({super.key, required this.submitted});
  final bool submitted;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double topBarHeight = 135;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomPaint(
            size: Size(width, topBarHeight), // small 135, medium 155
            painter: SmallCurve(),
            child: appBar('Homework Details', topBarHeight),
          ),
          submitted
              ? Container(
                  height: 60,
                  width: width,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    // color: AppColors.cardColor,
                    border: Border.all(color: AppColors.primary, width: 1.5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Download Submitted File',
                        style: AppTextStyle.regularBlack16,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.cloud_download,
                          color: AppColors.secondary,
                        ),
                      )
                    ],
                  ),
                )
              : Container(
                  height: 200,
                  width: 200,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: AppColors.cardColor.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        CupertinoIcons.cloud_upload,
                        size: 80,
                        color: AppColors.primary,
                      ),
                      Text(
                        'Tap to Upload',
                        style: AppTextStyle.regularGrey14,
                      ),
                    ],
                  ),
                ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 60,
            width: width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              // color: AppColors.cardColor,
              border: Border.all(color: AppColors.primary, width: 1.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Download Homework Details',
                  style: AppTextStyle.regularBlack16,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.cloud_download,
                    color: AppColors.secondary,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Instructions',
                  style: AppTextStyle.boldBlack16,
                ),
                Html(
                  data: """<p style="font-size: 16">Make sure to submit your homework on time.</p>
                      <p style="font-size: 16">Homework will not be accepted in case of plagiarism or late submission.</p>
                      """,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: submitted
          ? null
          : Container(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: LargeButton(
                text: 'Submit',
                onPress: () {},
              ),
            ),
    );
  }
}
