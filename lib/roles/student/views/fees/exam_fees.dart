import 'package:eschool/roles/student/models/fees/fee_card_model.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/widgets/cards/fee_card.dart';
import 'package:flutter/material.dart';

class ExamFees extends StatelessWidget {
  ExamFees({super.key});
  final List<FeeCardModel> fees = [
    FeeCardModel(
      title: 'Final Term Exams 2022',
      date: '10 Nov',
      totalFee: '2000',
      schoolFee: '2000',
      extraFee: '0',
      discount: '0',
      totalPaid: '0',
      status: 'Un-Paid',
    ),
    FeeCardModel(
      title: 'Mid Term Exams 2022',
      date: '10 May',
      totalFee: '2000',
      schoolFee: '2000',
      extraFee: '0',
      discount: '0',
      totalPaid: '2000',
      status: 'Paid',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        itemCount: fees.length,
        itemBuilder: (context, index) {
          return FeesCard(
            width: width,
            title: fees[index].title,
            totalFee: fees[index].totalFee,
            date: fees[index].date,
            schoolFee: fees[index].schoolFee,
            extraFee: fees[index].extraFee,
            discount: fees[index].discount,
            totalPaid: fees[index].totalPaid,
            status: fees[index].status,
          );
        },
      ),
    );
  }
}
