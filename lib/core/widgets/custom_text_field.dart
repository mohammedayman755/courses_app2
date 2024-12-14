import 'package:courses_app/core/utlis/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Icon? prefixicon;
  final TextStyle? textStyle;
  final bool isshow;

  const CustomTextField({
    this.controller,
    this.hint,
    this.keyboardType,
    this.validator,
    this.prefixicon,
    this.textStyle,
    required this.isshow,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36.h,
      child: TextFormField(
        obscureText: isshow,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            fillColor: AppcColors.colorwhite,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppcColors.colorwhite)),
            hintText: hint,
            hintStyle: textStyle,
            prefixIcon: prefixicon),
        validator: validator,
      ),
    );
  }
}
