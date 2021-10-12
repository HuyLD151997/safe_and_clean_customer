import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:safe_and_clean_customer/events/sign_up_event.dart';
import 'package:safe_and_clean_customer/states/sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpBloc, SignUpState> {
  SignUpBloc() : super(SignUpStateInitial());

  @override
  Stream<SignUpState> mapEventToState(SignUpBloc event) async* {
    if (event is SignUpFullNameOnChangedEvent) {
      try {
        if (event.fullName.trim().isEmpty) {
          yield const SignUpStateFailure(
              fullname: 'Name is not blank',
              password: null,
              confirmPassword: null,
              phoneNumber: null,
              status: false,
              dateSignUp: null,
          );
        }
      } catch (exception) {
        print('State error: ' + exception.toString());
        yield const SignUpStateFailure(
            fullname: null,
            password: null,
            confirmPassword: null,
            phoneNumber: null,
            status: false,
            dateSignUp: null,
        );
      }
    }
    if (event is SignUpPasswordOnChangedEvent) {
      try {
        if (event.password.isEmpty) {
          yield const SignUpStateFailure(
              fullname: null,
              password: 'Password is not blank',
              confirmPassword: null,
              phoneNumber: null,
              status: false,
              dateSignUp: null,
          );
        } else {
          yield const SignUpStateFailure(
              fullname: null,
              password: null,
              confirmPassword: null,
              phoneNumber: null,
              status: false,
              dateSignUp: null,
          );
        }
      } catch (exception) {
        print('State error: ' + exception.toString());
        yield const SignUpStateFailure(
            fullname: null,
            password: null,
            confirmPassword: null,
            phoneNumber: null,
            status: false,
            dateSignUp: null,
        );
      }
    }
    if (event is SignUpConfirmPasswordOnChangedEvent) {
      try {
        if (event.confirmPassword.isEmpty) {
          yield const SignUpStateFailure(
              fullname: null,
              password: null,
              confirmPassword: 'Password is not blank',
              phoneNumber: null,
              status: false,
              dateSignUp: null,
          );
        } else if (event.confirmPassword.compareTo(event.password) != 0) {
          yield const SignUpStateFailure(
              fullname: null,
              password: null,
              confirmPassword: 'Incorrect',
              phoneNumber: null,
              status: false,
              dateSignUp: null,
          );
        }
      } catch (exception) {
        print('State error: ' + exception.toString());
        yield const SignUpStateFailure(
            fullname: null,
            password: null,
            confirmPassword: null,
            phoneNumber: null,
            status: false,
            dateSignUp: null,
        );
      }
    }
    if (event is SignUpPhoneNumberOnChangedEvent) {
      try {
        if (event.phoneNumber
            .trim()
            .isEmpty || event.phoneNumber.length != 10) {
          yield const SignUpStateFailure(
              fullname: null,
              password: null,
              confirmPassword: null,
              phoneNumber: 'Example: XXX-XXX-XXXX',
              status: false,
              dateSignUp: null,
          );
        } else {
          yield const SignUpStateFailure(
              fullname: null,
              password: null,
              confirmPassword: null,
              phoneNumber: null,
              status: false,
              dateSignUp: null,
          );
        }
      } catch (exception) {
        print('State error: ' + exception.toString());
        yield const SignUpStateFailure(
            fullname: null,
            password: null,
            confirmPassword: null,
            phoneNumber: null,
            status: false,
            dateSignUp: null,
        );
      }
    }
      if (event is SignUpEvent) {
        try{
          if(event.fullName.trim().isEmpty){
            yield const SignUpStateFailure(
                fullname: 'Name is not blank',
                password: null,
                confirmPassword: null,
                phoneNumber: null,
                status: false,
                dateSignUp: null,
            );
          }else if(event.password.isEmpty){
            yield const SignUpStateFailure(
                fullname: null,
                password: 'Password is not blank',
                confirmPassword: null,
                phoneNumber: null,
                status: false,
                dateSignUp: null,
            );
          }else if(event.confirmPassword.isEmpty){
            yield const SignUpStateFailure(
                fullname: null,
                password: null,
                confirmPassword: 'Password is not blank',
                phoneNumber: null,
                status: false,
                dateSignUp: null,
            );
          }else if(event.confirmPassword.compareTo(event.password) != 0){
            yield const SignUpStateFailure(
                fullname: null,
                password: null,
                confirmPassword: 'Incorrect',
                phoneNumber: null,
                status: false,
                dateSignUp: null,
            );
          }else if(event.phoneNumber.trim().isEmpty || event.phoneNumber.length != 10){
            yield const SignUpStateFailure(
                fullname: null,
                password: null,
                confirmPassword: null,
                phoneNumber: 'Example: XXX-XXX-XXXX',
                status: false,
                dateSignUp: null,
            );
          }else{
            String dateSignUp = event.dateSignUp.split(' ')[0];
            DateTime date = DateTime.parse(dateSignUp);
            String formatDate = DateFormat('yyyy/MM/dd').format(date);
            print(formatDate);

          }
        }catch (exception) {
          print('State error: ' + exception.toString());
          yield const SignUpStateFailure(
              fullname: null,
              password: null,
              confirmPassword: null,
              phoneNumber: null,
              status: false,
              dateSignUp: null,
          );
        }
      }
    }
  }
