import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OtherFees extends StatelessWidget {
  const OtherFees({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/no_data.png',
              color: AppColors.primary,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'No Other Fees',
              style: AppTextStyle.mediumBlack14,
            )
          ],
        ),
      ),
    );
  }
}
