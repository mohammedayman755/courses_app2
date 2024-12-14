import 'package:courses_app/core/utlis/colors.dart';
import 'package:courses_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextBotton extends StatelessWidget {
  const CustomTextBotton({super.key, required this.text, this.ontap});
  final String text;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 40.h,
        width: 323.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppcColors.backgroundColor,
        ),
        child: Center(child: Text(text, style: Styles.text14)),
      ),
    );
  }
}
