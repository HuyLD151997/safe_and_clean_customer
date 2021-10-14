

import 'package:safe_and_clean_customer/blocs/login_bloc.dart';
import 'package:safe_and_clean_customer/models/account.dart';

class LoginFetchEvent extends LoginBloc {}

class LoginEvent extends LoginBloc {
  final Account account;

  LoginEvent(this.account);
}

class LoginGoogleEvent extends LoginBloc{}
