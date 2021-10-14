import 'package:safe_and_clean_customer/blocs/sign_up_bloc.dart';
import 'package:safe_and_clean_customer/models/customer.dart';

class SignUpEvent extends SignUpBloc{
  final Customer customer;
  final String confirmPassword;
  SignUpEvent(this.customer, this.confirmPassword);
}

class SignUpFullNameOnChangedEvent extends SignUpBloc{
  final String fullName;
  SignUpFullNameOnChangedEvent({ required this.fullName});
}

class SignUpPasswordOnChangedEvent extends SignUpBloc{
  final String password;
  SignUpPasswordOnChangedEvent({ required this.password});
}

class SignUpConfirmPasswordOnChangedEvent extends SignUpBloc{
  final String password;
  final String confirmPassword;
  SignUpConfirmPasswordOnChangedEvent({ required this.password,  required this.confirmPassword });
}

class SignUpPhoneNumberOnChangedEvent extends SignUpBloc{
  final String phoneNumber;
  SignUpPhoneNumberOnChangedEvent({ required this.phoneNumber});
}
