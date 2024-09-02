class SignInParams {
  final String _email;
  final String _password;

  SignInParams({required String email, required String password})
      : _email = email,
        _password = password;

  String get email => _email;
  String get password => _password;
}
