import 'package:flutter/material.dart';
import '../user_role.dart';

class RoleRadioTile extends StatelessWidget {
  final UserRole userRole, groupValue;
  final void Function(UserRole?)? onChanged;
  const RoleRadioTile(
      {super.key,
      required this.userRole,
      required this.groupValue,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(userRole.name),
      leading: Radio<UserRole>(
        value: userRole,
        groupValue: groupValue,
        onChanged: onChanged,
      ),
    );
  }
}