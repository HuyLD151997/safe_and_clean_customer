import 'package:meta/meta.dart';

@immutable
class LoginState {
  const LoginState();
}

class LoginStateInitial extends LoginState {}
class LoginStateFailure extends LoginState {
  final String errorMessage;
  LoginStateFailure({ this.errorMessage});
}
class LoginStateSuccess extends LoginState {
  final bool isLogin;
  final String msg;
  LoginStateSuccess({ this.isLogin,  this.msg});
}

class LoginEmptyState extends LoginState{}