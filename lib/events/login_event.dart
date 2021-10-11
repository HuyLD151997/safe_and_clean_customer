

import 'package:safe_and_clean_customer/blocs/login_bloc.dart';

class LoginFetchEvent extends LoginBloc {}

class LoginEvent extends LoginBloc {
  final String username;
  final String password;
  LoginEvent({required this.username, required this.password});
}

class LoginGoogleEvent extends LoginBloc{}