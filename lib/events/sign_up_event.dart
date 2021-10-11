

import 'package:safe_and_clean_customer/blocs/sign_up_bloc.dart';

class SignUpEvent extends SignUpBloc{
  final String fullName;
  final String password;
  final String confirmPassword;
  final String phoneNumber;

  SignUpEvent({required this.fullName, required this.password, required this.confirmPassword, required this.phoneNumber});
}

class SignUpFullNameOnChangedEvent extends SignUpBloc{
  final String fullName;
  SignUpFullNameOnChangedEvent({required this.fullName});
}

class SignUpPasswordOnChangedEvent extends SignUpBloc{
  final String password;
  SignUpPasswordOnChangedEvent({required this.password});
}

class SignUpConfirmPasswordOnChangedEvent extends SignUpBloc{
  final String password;
  final String confirmPassword;
  SignUpConfirmPasswordOnChangedEvent({required this.password, required this.confirmPassword });
}

class SignUpPhoneNumberOnChangedEvent extends SignUpBloc{
  final String phoneNumber;
  SignUpPhoneNumberOnChangedEvent({required this.phoneNumber});
}
