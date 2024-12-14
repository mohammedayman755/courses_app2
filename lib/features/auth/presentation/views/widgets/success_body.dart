import 'package:courses_app/core/utlis/colors.dart';
import 'package:courses_app/core/utlis/routes.dart';
import 'package:courses_app/core/utlis/styles.dart';
import 'package:courses_app/core/widgets/custom_text_botton.dart';
import 'package:courses_app/core/widgets/custom_text_field.dart';
import 'package:courses_app/features/auth/presentation/views/widgets/custom_row_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SuccessBody extends StatelessWidget {
  const SuccessBody({super.key});

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
                          EdgeInsets.only(top: 19.h, left: 12.w, right: 92.w),
                      child: Text("Forgot Your Password?",
                          style: Styles.text20
                              .copyWith(color: AppcColors.blackcolor)),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 13.h, left: 12.w, right: 3.w),
                      child: Text(
                          "Enter your phone number, we will send you confirmation code",
                          style:
                              Styles.text12.copyWith(color: AppcColors.grey78)),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 64.h, left: 30.w, right: 30.w),
                      child: const CustomRowOtp(),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 24.h, right: 9.w, left: 9.w),
                      child: CustomTextBotton(
                          ontap: () => showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    backgroundColor: AppcColors.colorwhite,
                                    actions: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 18.h, right: 64.w, left: 63.w),
                                        child: Image.asset(
                                          "assets/images/Celebration-amico 1.png",
                                          width: 200.w,
                                          height: 200.h,
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "Success",
                                          style: Styles.text20.copyWith(
                                              fontSize: 25,
                                              color: AppcColors.blackcolor),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          "You have successfully reset your password.",
                                          style: Styles.text16.copyWith(
                                              color: AppcColors.greya1),
                                        ),
                                      ),
                                      SizedBox(height: 24.h),
                                      CustomTextBotton(
                                          ontap: () => GoRouter.of(context)
                                              .pushReplacement(
                                                  AppRoutes.klogin),
                                          text: "Done")
                                    ],
                                  )),
                          text: "Reset Password"),
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
