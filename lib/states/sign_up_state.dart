class SignUpState{
  final String fullname;
  final String password;
  final String confirmPassword;
  final String phoneNumber;
  final bool status;
  final String dateSignUp;

  const SignUpState({ this.fullname,  this.password,
     this.confirmPassword,  this.phoneNumber,  this.status,  this.dateSignUp});
}

class SignUpStateInitial extends SignUpState{
  SignUpStateInitial() : super(fullname: null, password: null, confirmPassword: null,
      phoneNumber: null, status: false, dateSignUp: null);
}

class SignUpStateSuccess extends SignUpState{
  SignUpStateSuccess() : super(fullname: null, password: null, confirmPassword: null,
      phoneNumber: null, status: true, dateSignUp: null);
}

class SignUpStateFailure extends SignUpState{
  final String fullname;
  final String password;
  final String confirmPassword;
  final String phoneNumber;
  final bool status;
  final String dateSignUp;

  const SignUpStateFailure({ this.fullname,  this.password,  this.confirmPassword,  this.phoneNumber,  this.status,  this.dateSignUp}) :
        super(fullname: fullname, password: password, confirmPassword: confirmPassword, phoneNumber: phoneNumber, status: status, dateSignUp: dateSignUp);
}
