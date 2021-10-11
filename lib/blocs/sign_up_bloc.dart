import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_and_clean_customer/events/sign_up_event.dart';
import 'package:safe_and_clean_customer/states/sign_up_state.dart';


class SignUpBloc extends Bloc<SignUpBloc, SignUpState>{
  SignUpBloc() : super(SignUpStateInitial());

  @override
  Stream<SignUpState> mapEventToState(SignUpBloc event) async* {
    if(event is SignUpFullNameOnChangedEvent){
      try{
        if(event.fullName.trim().isEmpty){

        }
      }catch (exception){
        print('State error: ' + exception.toString());
        yield SignUpStateFailure(fullname: null, password: null, confirmPassword: null, phoneNumber: null);
      }
    }
    if(event is SignUpPasswordOnChangedEvent){

    }
    if(event is SignUpConfirmPasswordOnChangedEvent){

    }
    if(event is SignUpPhoneNumberOnChangedEvent){

    }
    if(event is SignUpEvent){

    }
  }
}