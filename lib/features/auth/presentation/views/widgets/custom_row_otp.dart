import 'package:courses_app/features/auth/presentation/views/widgets/otp_verificatioin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowOtp extends StatelessWidget {
  const CustomRowOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const OtpVerificatioin(),
        const OtpVerificatioin(),
        const OtpVerificatioin(),
        SizedBox(
          width: 41.w,
        ),
        const OtpVerificatioin(),
        const OtpVerificatioin(),
        const OtpVerificatioin(),
      ],
    );
  }
}
