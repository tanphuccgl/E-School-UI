import 'package:eschool/utils/App-TextStyle.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    this.hint,
    this.controller,
    this.obsecure,
  }) : super(key: key);
  final String? hint;
  final TextEditingController? controller;
  final bool? obsecure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppTextStyle.boldBlack26,
      obscureText: obsecure ?? false,
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hint,
        hintStyle: AppTextStyle.boldLightGrey26,
      ),
    );
  }
}
