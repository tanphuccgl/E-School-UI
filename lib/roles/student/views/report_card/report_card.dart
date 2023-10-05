import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utils/curves/small_curve.dart';
import '../../../../utils/functions.dart';

class ReportCardScreen extends StatelessWidget {
  const ReportCardScreen({Key? key}) : super(key: key);

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
            child: appBar('Report Card', topBarHeight),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(color: AppColors.cardColor, borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Monthly Examination (April) General\nPurpose ( Pass/Fail ) 15-16",
                        style: AppTextStyle.boldBlack16,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Subject',
                                style: AppTextStyle.regularBlack14,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'English',
                                style: AppTextStyle.regularBlack14,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Urdu',
                                style: AppTextStyle.regularBlack14,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Maths',
                                style: AppTextStyle.regularBlack14,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Science',
                                style: AppTextStyle.regularBlack14,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Min Marks',
                                style: AppTextStyle.regularBlack14,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '33',
                                style: AppTextStyle.regularBlack14,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '33',
                                style: AppTextStyle.regularBlack14,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '33',
                                style: AppTextStyle.regularBlack14,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '33',
                                style: AppTextStyle.regularBlack14,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Obt Marks',
                                style: AppTextStyle.regularBlack14,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '94/100',
                                style: AppTextStyle.regularBlack14,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '86/100',
                                style: AppTextStyle.regularBlack14,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '69/100',
                                style: AppTextStyle.regularBlack14,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '65/75',
                                style: AppTextStyle.regularBlack14,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Result',
                                style: AppTextStyle.regularBlack14,
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Text(
                                'Pass',
                                style: AppTextStyle.regularBlack14.copyWith(color: Colors.green),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Pass',
                                style: AppTextStyle.regularBlack14.copyWith(color: Colors.green),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Pass',
                                style: AppTextStyle.regularBlack14.copyWith(color: Colors.green),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Pass',
                                style: AppTextStyle.regularBlack14.copyWith(color: Colors.green),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Total',
                                    style: AppTextStyle.boldBlack14,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '314/375',
                                    style: AppTextStyle.boldGreen14,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Division',
                                    style: AppTextStyle.boldBlack14,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'First',
                                    style: AppTextStyle.boldGreen14,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Percentage',
                                    style: AppTextStyle.boldBlack14,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '83.73',
                                    style: AppTextStyle.boldGreen14,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Result',
                                    style: AppTextStyle.boldBlack14,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Pass',
                                    style: AppTextStyle.boldGreen14,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
