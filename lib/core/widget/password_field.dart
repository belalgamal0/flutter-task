import 'package:flutter/widgets.dart';
import 'package:flutter_task/core/widget/custom_text_field.dart';
import 'package:form_validator/form_validator.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController controller;
  const PasswordField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: controller,
      hintText: "Password",
      keyboardType: TextInputType.visiblePassword,
      isPassword: true,
      validator: ValidationBuilder().maxLength(50).minLength(8).build(),
    );
  }
}