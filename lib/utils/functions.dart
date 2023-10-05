import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/widgets/cards/topbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget appBar(String title, double height, {Widget? trailing}) {
  return TopBar(
    height: height,
    width: double.infinity,
    leading: GestureDetector(
      onTap: () => Get.back(),
      child: const Icon(
        Icons.arrow_back,
        color: AppColors.white,
        size: 26,
      ),
    ),
    title: Text(
      title,
      style: AppTextStyle.regularBlack18.copyWith(color: AppColors.white),
    ),
    trailing: trailing,
  );
}
