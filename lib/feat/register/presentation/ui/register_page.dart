import 'package:flutter_task/core/widget/confirm_password_field.dart';
import 'package:flutter_task/core/widget/email_field.dart';
import 'package:flutter_task/core/widget/padded_screen.dart';
import 'package:flutter_task/core/widget/password_field.dart';
import 'package:flutter_task/feat/login/data/model/sign_in_params_model.dart';
import 'package:flutter_task/feat/register/data/model/sign_up_params_model.dart';
import 'package:flutter_task/feat/register/presentation/ui/widget/role_selection.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widget/custom_elevated_button.dart';
import '../bloc/register_bloc.dart';

class RegiserPage extends StatefulWidget {
  @override
  State<RegiserPage> createState() => _RegiserPageState();
}

class _RegiserPageState extends State<RegiserPage> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confimPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Register", style: TextStyle(color: Colors.white))),
        body: BlocProvider(create: (_) => GetIt.instance.get<RegisterBloc>(),
          child: BlocBuilder<RegisterBloc, RegisterState>(buildWhen: (previous, current) => previous != current,
            builder:(context, state){
              return  PaddedScreen(
                topPadding: 50.0,
                sidePadding: 16.0,
                bottomPadding: 20.0,
                child: Form(
                  key: _form,
                  child: ListView(
                    children: [
                      Text("${state.status}"),
                      EmailField(controller: emailController),
                      PasswordField(controller: passwordController),
                      ConfirmPasswordField(passwordController: passwordController, confimPasswordController: confimPasswordController),
                      // ignore: prefer_const_constructors
                      RoleSelection(),
                      CustomElevatedButton(
                        label: "Register",
                        onPressed: () {                          
                          if (_form.currentState!.validate()) {
                            BlocProvider.of<RegisterBloc>(context).add(RegisterEvent(signUpParams: SignUpParams(signInParams: SignInParams(email: emailController.text, password: passwordController.text), role: BlocProvider.of<RegisterBloc>(context).selectedRole)));
                          }
                        },
                      )
                    ],
                  ),
                ));
            }
          ),
        ));
  }
}
