import 'package:courses_app/core/utlis/colors.dart';
import 'package:courses_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Pageview extends StatelessWidget {
  const Pageview(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 357.w,
          height: 340.h,
        ),
        Padding(
          padding: EdgeInsets.only(top: 4.h, right: 10.w, left: 11.w),
          child: Text(
            title,
            style: Styles.text20,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 24.h, right: 24.w, left: 24.w),
          child: Text(
            textAlign: TextAlign.center,
            subtitle,
            maxLines: 4,
            style: Styles.text16.copyWith(color: AppcColors.yellowColor),
          ),
        ),
      ],
    );
  }
}
