import 'package:flutter/widgets.dart';
import 'package:flutter_task/core/widget/custom_text_field.dart';
import 'package:form_validator/form_validator.dart';

class ConfirmPasswordField extends StatelessWidget {
  final TextEditingController confimPasswordController, passwordController;
  const ConfirmPasswordField({super.key, required this.passwordController, required this.confimPasswordController});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: confimPasswordController,
      hintText: "Confirm Password",
      keyboardType: TextInputType.visiblePassword,
      isPassword: true,
      validator: ValidationBuilder().minLength(8).maxLength(50).add((value) {
        if (value != passwordController.text) {
          return 'Passwords do not match';
        }
        return null;
      }).build(),
    );
  }
}
