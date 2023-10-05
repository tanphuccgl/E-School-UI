import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomeworkCard extends StatelessWidget {
  const HomeworkCard({
    Key? key,
    required this.width,
    required this.height,
    required this.isCompleted,
    this.title,
    this.subtitle,
    this.onTap,
  }) : super(key: key);

  final double width;
  final double height;
  final bool isCompleted;
  final String? title;
  final String? subtitle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        margin: const EdgeInsets.only(top: 0),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: isCompleted ? AppColors.primary : AppColors.white,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: AppColors.primary, width: 2),
              ),
              child: isCompleted
                  ? const Icon(
                      Icons.check,
                      color: AppColors.white,
                      size: 20,
                    )
                  : Container(),
            ),
            const SizedBox(
              width: 14,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? '',
                  style: AppTextStyle.mediumBlack14,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 02,
                ),
                Text(
                  subtitle ?? '',
                  style: AppTextStyle.regularGrey12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
