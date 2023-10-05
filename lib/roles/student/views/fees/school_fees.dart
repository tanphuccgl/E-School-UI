import 'package:eschool/roles/student/models/fees/fee_card_model.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/widgets/cards/fee_card.dart';
import 'package:flutter/material.dart';

class SchoolFees extends StatelessWidget {
  SchoolFees({super.key});

  final List<FeeCardModel> fees = [
    FeeCardModel(
      title: 'Fee for May 2022',
      date: '10 May',
      totalFee: '8500',
      schoolFee: '8000',
      extraFee: '1000',
      discount: '500',
      totalPaid: '0',
      status: 'Un-Paid',
    ),
    FeeCardModel(
      title: 'Fee for April 2022',
      date: '10 Apr',
      totalFee: '10000',
      schoolFee: '10000',
      extraFee: '0',
      discount: '0',
      totalPaid: '0',
      status: 'Un-Paid',
    ),
    FeeCardModel(
      title: 'Fee for March 2022',
      date: '10 Mar',
      totalFee: '10000',
      schoolFee: '10000',
      extraFee: '0',
      discount: '0',
      totalPaid: '10000',
      status: 'Paid',
    ),
    FeeCardModel(
      title: 'Fee for February 2022',
      date: '10 Feb',
      totalFee: '11000',
      schoolFee: '10000',
      extraFee: '1000',
      discount: '0',
      totalPaid: '11000',
      status: 'Paid',
    ),
    FeeCardModel(
      title: 'Fee for January 2022',
      date: '10 Jan',
      totalFee: '10000',
      schoolFee: '10000',
      extraFee: '0',
      discount: '0',
      totalPaid: '10000',
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
