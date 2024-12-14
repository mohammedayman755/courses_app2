import 'package:courses_app/core/utlis/colors.dart';
import 'package:courses_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpVerificatioin extends StatelessWidget {
  const OtpVerificatioin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: const InputDecoration(fillColor: AppcColors.fayurozi),
      ),
    );
  }
}
