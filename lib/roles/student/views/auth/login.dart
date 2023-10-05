import 'package:eschool/roles/student/views/dashboard/dashboard.dart';
import 'package:eschool/roles/student/views/on_boarding/on_boarding.dart';
import 'package:eschool/utils/App-TextStyle.dart';
import 'package:eschool/utils/app_colors.dart';
import 'package:eschool/utils/widgets/buttons/large_button.dart';
import 'package:eschool/utils/widgets/text_fields/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  Login({super.key});
  TextEditingController userNameC = TextEditingController(text: 'abc123');
  TextEditingController passwordC = TextEditingController(text: '123456');
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.5,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width,
                    child: Image.asset('assets/images/background_vector.png', fit: BoxFit.fitWidth),
                  ),
                  Image.asset(
                    'assets/images/deskbook_logo_white.png',
                    height: 150,
                    width: 150,
                  ),
                  Positioned(
                    bottom: 35,
                    child: Text(
                      'Sign In',
                      style: AppTextStyle.regularWhite30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.5,
              child: Container(
                width: width,
                decoration: const BoxDecoration(color: AppColors.primary),
                child: Container(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'User Name',
                        style: AppTextStyle.regularBlack16,
                      ),
                      SizedBox(
                        width: width,
                        child: AppTextField(
                          hint: 'abc-123',
                          controller: userNameC,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        'Password',
                        style: AppTextStyle.regularBlack16,
                      ),
                      SizedBox(
                        width: width,
                        child: AppTextField(
                          hint: '******',
                          obsecure: true,
                          controller: passwordC,
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 50,
                        width: width,
                        child: LargeButton(
                          text: 'Sign In',
                          onPress: () => Get.offAll(() => OnBoarding()),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
