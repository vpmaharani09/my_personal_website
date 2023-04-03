import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_website/colors.gen.dart';
import 'package:personal_website/utils/statictextstyles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.textEditingController,
    this.autoValidateMode,
    this.validator,
    this.maxLines,
    this.textInputType,
  }) : super(key: key);

  final String hintText;
  final TextEditingController textEditingController;
  final AutovalidateMode? autoValidateMode;
  final String? Function(String?)? validator;
  final int? maxLines;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    final normalBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r), borderSide: BorderSide.none);
    final errorBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(color: Colors.red));

    return TextFormField(
      keyboardType: textInputType,
      maxLines: maxLines,
      validator: validator,
      autovalidateMode: autoValidateMode,
      style: StaticTextStyles.inter14Fw400(color: ColorName.ebonyClay),
      decoration: InputDecoration(
        border: normalBorder,
        enabledBorder: normalBorder,
        focusedBorder: normalBorder,
        errorBorder: errorBorder,
        focusedErrorBorder: errorBorder,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: StaticTextStyles.inter14Fw400(
          color: ColorName.nevada,
        ),
      ),
    );
  }
}
