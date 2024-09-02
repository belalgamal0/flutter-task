import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/register_bloc.dart';
import '../user_role.dart';
import 'role_radio_tile.dart';

class RoleSelection extends StatelessWidget {
  const RoleSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Select Role:',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)
        ),
        RoleRadioTile(
            userRole: UserRole.viewer,
            groupValue: BlocProvider.of<RegisterBloc>(context).selectedRole,
            onChanged: (value) =>
                BlocProvider.of<RegisterBloc>(context).changeRole(value!)),
        RoleRadioTile(
            userRole: UserRole.editor,
            groupValue: BlocProvider.of<RegisterBloc>(context).selectedRole,
            onChanged: (value) =>
                BlocProvider.of<RegisterBloc>(context).changeRole(value!)),
      ],
    );
  }
}
