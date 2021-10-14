class SignUpState {
  final String? fullname;
  final String? password;
  final String? confirmPassword;
  final String? phoneNumber;
  final bool? status;
  final String? dateSignUp;

  const SignUpState(
      {required this.fullname,
      required this.password,
      required this.confirmPassword,
      required this.phoneNumber,
      required this.status,
      required this.dateSignUp});
}

class SignUpStateInitial extends SignUpState {
  SignUpStateInitial()
      : super(
            fullname: null,
            password: null,
            confirmPassword: null,
            phoneNumber: null,
            status: false,
            dateSignUp: null);
}

class SignUpStateSuccess extends SignUpState {
  SignUpStateSuccess()
      : super(
            fullname: null,
            password: null,
            confirmPassword: null,
            phoneNumber: null,
            status: true,
            dateSignUp: null);
}

class SignUpStateFailure extends SignUpState {
  final String? fullname;
  final String? password;
  final String? confirmPassword;
  final String? phoneNumber;
  final bool? status;
  final String? dateSignUp;

  const SignUpStateFailure(
      {required this.fullname,
      required this.password,
      required this.confirmPassword,
      required this.phoneNumber,
      required this.status,
      required this.dateSignUp})
      : super(
            fullname: fullname,
            password: password,
            confirmPassword: confirmPassword,
            phoneNumber: phoneNumber,
            status: status,
            dateSignUp: dateSignUp);
}
