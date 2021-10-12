

import 'package:safe_and_clean_customer/blocs/sign_up_bloc.dart';

class SignUpEvent extends SignUpBloc{
  final String fullName;
  final String password;
  final String confirmPassword;
  final String phoneNumber;
  final String dateSignUp;

  SignUpEvent({ this.fullName,  this.password,  this.confirmPassword,
     this.phoneNumber,  this.dateSignUp});
}

class SignUpFullNameOnChangedEvent extends SignUpBloc{
  final String fullName;
  SignUpFullNameOnChangedEvent({ this.fullName});
}

class SignUpPasswordOnChangedEvent extends SignUpBloc{
  final String password;
  SignUpPasswordOnChangedEvent({ this.password});
}

class SignUpConfirmPasswordOnChangedEvent extends SignUpBloc{
  final String password;
  final String confirmPassword;
  SignUpConfirmPasswordOnChangedEvent({ this.password,  this.confirmPassword });
}

class SignUpPhoneNumberOnChangedEvent extends SignUpBloc{
  final String phoneNumber;
  SignUpPhoneNumberOnChangedEvent({ this.phoneNumber});
}
