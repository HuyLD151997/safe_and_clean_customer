import 'package:meta/meta.dart';

@immutable
class LoginState {
  const LoginState();
}

class LoginStateInitial extends LoginState {}
class LoginStateFailure extends LoginState {
  final String errorMessage;
  LoginStateFailure({ required this.errorMessage});
}
class LoginStateSuccess extends LoginState {
  final bool isLogin;
  final String msg;
  LoginStateSuccess({ required this.isLogin,  required this.msg});
}

class LoginEmptyState extends LoginState{}