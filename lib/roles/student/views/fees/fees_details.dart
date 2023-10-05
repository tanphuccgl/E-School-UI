import 'package:eschool/roles/student/views/fees/exam_fees.dart';
import 'package:eschool/roles/student/views/fees/other_fees.dart';
import 'package:eschool/roles/student/views/fees/school_fees.dart';
import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/curves/small_curve.dart';
import 'package:eschool/utils/functions.dart';
import 'package:flutter/material.dart';

class FeeDetails extends StatefulWidget {
  const FeeDetails({super.key});

  @override
  State<FeeDetails> createState() => _FeeDetailsState();
}

class _FeeDetailsState extends State<FeeDetails> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

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
            child: appBar('Fee Details', topBarHeight),
          ),
          TabBar(
            isScrollable: false,
            controller: tabController,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 3,
            labelPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            labelColor: AppColors.secondary,
            unselectedLabelColor: AppColors.grey,
            labelStyle: AppTextStyle.mediumBlack16.copyWith(color: AppColors.secondary),
            unselectedLabelStyle: AppTextStyle.regularGrey16,
            tabs: const [
              Tab(
                child: Text('School Fee'),
              ),
              Tab(
                child: Text('Exam Fee'),
              ),
              Tab(
                child: Text('Other Fee'),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                SchoolFees(),
                ExamFees(),
                OtherFees(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
