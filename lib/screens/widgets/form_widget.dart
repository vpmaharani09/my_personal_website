import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:personal_website/colors.gen.dart';
import 'package:personal_website/utils/statictextstyles.dart';
import 'package:personal_website/screens/widgets/widget.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  AutovalidateMode _autovalidateModeName = AutovalidateMode.onUserInteraction;
  AutovalidateMode _autovalidateModeEmail = AutovalidateMode.onUserInteraction;

  @override
  void initState() {
    _nameController.addListener(() {
      _autovalidateModeName = AutovalidateMode.always;
      setState(() {});
    });
    _emailController.addListener(() {
      _autovalidateModeEmail = AutovalidateMode.always;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextField(
              hintText: 'Name',
              textEditingController: _nameController,
              autoValidateMode: _autovalidateModeName,
              validator: RequiredValidator(errorText: 'Name is required'),
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              hintText: 'Email',
              textEditingController: _nameController,
              autoValidateMode: _autovalidateModeEmail,
              validator: MultiValidator([
                RequiredValidator(errorText: 'Email is required'),
                EmailValidator(errorText: 'Email is invalid')
              ]),
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              hintText: 'Message',
              textEditingController: _messageController,
              maxLines: 10,
              textInputType: TextInputType.multiline,
            ),
            SizedBox(
              height: 48.h,
            ),
            Material(
              color: ColorName.purple,
              borderRadius: BorderRadius.circular(8.r),
              child: InkWell(
                mouseCursor: SystemMouseCursors.click,
                borderRadius: BorderRadius.circular(8.r),
                customBorder: Border.all(color: ColorName.blueChalk),
                splashColor: ColorName.blueChalk,
                onTap: () {
                  if (_formKey.currentState!.validate()) {}
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: ColorName.blueChalk),
                      color: Colors.transparent),
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Text(
                    'Send Message',
                    style: StaticTextStyles.inter14Fw500(
                        color: ColorName.blueChalk),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
