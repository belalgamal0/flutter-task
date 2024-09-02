import 'package:flutter/widgets.dart';
import 'package:flutter_task/core/widget/custom_text_field.dart';
import 'package:form_validator/form_validator.dart';

class EmailField extends StatelessWidget {
  final TextEditingController controller;
  const EmailField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: controller,
      hintText: "Email",
      keyboardType: TextInputType.emailAddress,
      validator: ValidationBuilder().email().maxLength(50).build(),
    );
  }
}
