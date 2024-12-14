import 'package:courses_app/core/utlis/colors.dart';
import 'package:courses_app/core/utlis/routes.dart';
import 'package:courses_app/core/utlis/styles.dart';
import 'package:courses_app/core/widgets/custom_text_botton.dart';
import 'package:courses_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppcColors.colorwhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h, left: 10.w, right: 342.w),
              child: IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 24,
                    color: AppcColors.blackcolor,
                  )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Image.asset(
              "assets/images/logo.png",
              height: 215.h,
              width: 232.w,
            ),
            Padding(
              padding: EdgeInsets.only(top: 65.h, right: 24.w, left: 24.w),
              child: Container(
                height: 300.h,
                width: 342.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppcColors.grey2f),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 22.h, left: 9.w, right: 90.w),
                      child: Text("Enter Verification Code",
                          style: Styles.text20
                              .copyWith(color: AppcColors.blackcolor)),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 13.h, left: 12.w, right: 3.w),
                      child: Text(
                          "Enter code that we have sent to your number 012345678*** ",
                          style:
                              Styles.text12.copyWith(color: AppcColors.grey78)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 47.h, right: 255.w),
                      child: Text("Password",
                          style:
                              Styles.text12.copyWith(color: AppcColors.grey78)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: CustomTextField(
                        isshow: false,
                        hint: "Enter your Phone number",
                        textStyle:
                            Styles.text10.copyWith(color: AppcColors.grey96),
                        prefixicon: const Icon(
                          Icons.phone,
                          size: 24,
                          color: AppcColors.grey96,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 24.h, right: 9.w, left: 9.w),
                      child: CustomTextBotton(
                          ontap: () =>
                              GoRouter.of(context).push(AppRoutes.ksuccess),
                          text: "Verify"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
