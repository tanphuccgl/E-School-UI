import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/curves/large_curve.dart';
import 'package:eschool/utils/curves/small_curve.dart';
import 'package:eschool/utils/functions.dart';
import 'package:eschool/utils/widgets/buttons/large_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double topBarHeight = 350;
    return Scaffold(
      body: Column(
        children: [
          CustomPaint(
            size: Size(width, topBarHeight), // small 135, medium 155
            painter: LargeCurve(),
            child: Container(
              height: topBarHeight,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background_vector.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: const Icon(
                            Icons.arrow_back,
                            color: AppColors.white,
                            size: 26,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Profile',
                          style: AppTextStyle.regularBlack18.copyWith(color: AppColors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 34,
                    ),
                    const CircleAvatar(
                      radius: 55,
                      backgroundImage: NetworkImage(
                          'https://thumbs.dreamstime.com/b/twelve-year-old-girl-park-posing-camera-cute-twelve-year-old-girl-park-posing-camera-146762856.jpg'),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Abiha Ali',
                      style: AppTextStyle.regularWhite20,
                    ),
                    Text(
                      'Class VII B',
                      style: AppTextStyle.regularWhite12,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                buildRow(width, 'Roll Number', '75', true),
                buildRow(width, 'Date of Birth', '10 Oct 2005', true),
                buildRow(width, 'Blood Group', 'A+', true),
                buildRow(width, 'Emergency Contact', '+92 300 1234567', true),
                buildRow(width, 'Position in Class', '12th', true),
                buildRow(width, 'Father Name', 'Mr. Bilal', true),
                buildRow(width, 'Mother Name', 'Mrs. Ayesha Aslam', false),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  width: width,
                  child: LargeButton(
                    text: 'Ask for Update',
                    onPress: () {},
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRow(double width, String title, String value, bool showBorder) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(color: showBorder ? AppColors.lightGrey : Colors.transparent),
      )),
      width: width,
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: AppTextStyle.mediumBlack14,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: AppTextStyle.regularPrimary14,
            ),
          ),
        ],
      ),
    );
  }
}
