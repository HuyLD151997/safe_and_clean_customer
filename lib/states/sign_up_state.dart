class SignUpState{
  final String? fullname;
  final String? password;
  final String? confirmPassword;
  final String? phoneNumber;

  const SignUpState({required this.fullname, required this.password, required this.confirmPassword, required this.phoneNumber});
}

class SignUpStateInitial extends SignUpState{
  SignUpStateInitial() : super(fullname: null, password: null, confirmPassword: null, phoneNumber: null);
}

class SignUpStateSuccess extends SignUpState{
  SignUpStateSuccess() : super(fullname: null, password: null, confirmPassword: null, phoneNumber: null);
}

class SignUpStateFailure extends SignUpState{
  final String? fullname;
  final String? password;
  final String? confirmPassword;
  final String? phoneNumber;

  const SignUpStateFailure({required this.fullname, required this.password, required this.confirmPassword, required this.phoneNumber}) :
        super(fullname: fullname, password: password, confirmPassword: confirmPassword, phoneNumber: phoneNumber);
}
