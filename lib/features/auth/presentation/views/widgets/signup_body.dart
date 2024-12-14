import 'package:courses_app/core/utlis/colors.dart';
import 'package:courses_app/core/utlis/routes.dart';
import 'package:courses_app/core/utlis/styles.dart';
import 'package:courses_app/core/widgets/custom_text_botton.dart';
import 'package:courses_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppcColors.colorwhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 65.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: 215.h,
                width: 232.w,
              ),
              Padding(
                padding: EdgeInsets.only(top: 22.h, right: 24.w, left: 24.w),
                child: Container(
                  height: 436.h,
                  width: 342.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppcColors.grey2f),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: 9.w, right: 283.w, top: 15.h),
                        child: Text(
                          'Email',
                          style: Styles.text14
                              .copyWith(color: AppcColors.blackcolor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CustomTextField(
                          hint: "Enter your Email",
                          textStyle:
                              Styles.text10.copyWith(color: AppcColors.grey96),
                          prefixicon: const Icon(
                            Icons.email_outlined,
                            size: 24,
                            color: AppcColors.grey96,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter email';
                            } else {
                              return null;
                            }
                          },
                          isshow: false,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 9.w, right: 250.w, top: 10.h),
                        child: Text(
                          'User Name',
                          style: Styles.text14
                              .copyWith(color: AppcColors.blackcolor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: CustomTextField(
                          hint: "Enter your Name",
                          textStyle:
                              Styles.text10.copyWith(color: AppcColors.grey96),
                          prefixicon: const Icon(
                            Icons.person_2_outlined,
                            size: 24,
                            color: AppcColors.grey96,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter email';
                            } else {
                              return null;
                            }
                          },
                          isshow: false,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 9.w, right: 250.w, top: 10.h),
                        child: Text(
                          'Password',
                          style: Styles.text14
                              .copyWith(color: AppcColors.blackcolor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CustomTextField(
                          hint: " enter Your Password",
                          textStyle:
                              Styles.text10.copyWith(color: AppcColors.grey96),
                          prefixicon: const Icon(
                            Icons.email_outlined,
                            size: 24,
                            color: AppcColors.grey96,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter password';
                            } else {
                              return null;
                            }
                          },
                          isshow: true,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 9.w, right: 200.w, top: 10.h),
                        child: Text(
                          'Confirm Password',
                          style: Styles.text14
                              .copyWith(color: AppcColors.blackcolor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CustomTextField(
                          hint: "Enter your Password",
                          textStyle:
                              Styles.text10.copyWith(color: AppcColors.grey96),
                          prefixicon: const Icon(
                            Icons.lock_outline_rounded,
                            size: 24,
                            color: AppcColors.grey96,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter your password';
                            } else {
                              return null;
                            }
                          },
                          isshow: true,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: 10.h, right: 10.w, left: 10.w),
                          child: const CustomTextBotton(text: "LOGIN")),
                      SizedBox(
                        height: 10.h,
                      ),
                      InkWell(
                        onTap: () => GoRouter.of(context).pop(),
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: "Already have an accout?",
                              style: Styles.text10
                                  .copyWith(color: AppcColors.blackcolor)),
                          TextSpan(
                              text: " Log in",
                              style: Styles.text10
                                  .copyWith(color: AppcColors.fayurozi)),
                        ])),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
