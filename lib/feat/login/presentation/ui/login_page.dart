import 'package:flutter_task/core/widget/email_field.dart';
import 'package:flutter_task/core/widget/password_field.dart';
import 'package:flutter_task/feat/login/data/model/sign_in_params_model.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../bloc/login_bloc.dart';

class LoginPage extends StatelessWidget {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: BlocProvider(
        create: (_) => GetIt.instance.get<LoginBloc>(),
        child: BlocListener<LoginBloc, LoginState>(
          listener: (BuildContext context, state) { 
            if(state.status ==  LoginStatus.success){
            context.go('/home', extra: state.user);
          } 
          },
          child: BlocBuilder<LoginBloc, LoginState>(
            buildWhen: (previous, current) => previous != current,
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37),
                child: Form(
                  key: _form,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      EmailField(controller: emailController),
                      PasswordField(controller: passwordController),
                      ElevatedButton(
                          onPressed: () async {
                            if (BlocProvider.of<LoginBloc>(context).validate(_form)) {
                              BlocProvider.of<LoginBloc>(context).add(LoginEvent(signInParams: SignInParams(email: emailController.text, password: passwordController.text)));
                            }
                          },
                          child: const Text("Login")),
                      const SizedBox(height: 100),
                      TextButton(
                          onPressed: () {
                            context.go('/register');
                          },
                          child: const Text("Register")),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
