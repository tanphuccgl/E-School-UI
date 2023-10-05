import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeesCard extends StatelessWidget {
  FeesCard(
      {super.key,
      this.title,
      this.date,
      this.totalFee,
      this.schoolFee,
      this.extraFee,
      this.discount,
      this.totalPaid,
      this.status,
      this.width});
  final double? width;
  final String? title;
  final String? date;
  final String? totalFee;
  final String? schoolFee;
  final String? extraFee;
  final String? discount;
  final String? totalPaid;
  final String? status;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ExpansionTile(
          backgroundColor: AppColors.cardColor,
          collapsedBackgroundColor: AppColors.cardColor,
          tilePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          childrenPadding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$title',
                style: AppTextStyle.regularGrey16,
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 110,
                    child: Text(
                      'Rs. $totalFee',
                      style: AppTextStyle.mediumBlack20,
                    ),
                  ),
                  Container(
                    height: 25,
                    width: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: status == 'Paid' ? Color(0xff12B264) : Colors.red,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      '$status',
                      style: AppTextStyle.regularWhite12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$date',
                style: AppTextStyle.regularGrey14,
              ),
              const SizedBox(
                height: 10,
              ),
              const Icon(
                FontAwesomeIcons.chevronDown,
                size: 16,
                color: AppColors.black,
              ),
            ],
          ),
          children: [
            Column(
              children: [
                Container(
                  height: 1,
                  width: width,
                  color: AppColors.secondary.withOpacity(0.3),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Fee',
                      style: AppTextStyle.regularBlack16,
                    ),
                    Text(
                      'Rs. $schoolFee',
                      style: AppTextStyle.regularBlack16,
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Extra Fee',
                      style: AppTextStyle.regularBlack16,
                    ),
                    Text(
                      'Rs. $extraFee',
                      style: AppTextStyle.regularBlack16,
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Discount',
                      style: AppTextStyle.regularBlack16,
                    ),
                    Text(
                      '- Rs. $discount',
                      style: AppTextStyle.regularBlack16,
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Paid',
                      style: AppTextStyle.boldBlack16,
                    ),
                    Text(
                      'Rs. $totalPaid',
                      style: AppTextStyle.boldBlack16,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
