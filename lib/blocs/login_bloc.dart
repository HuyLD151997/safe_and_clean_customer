import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_and_clean_customer/events/login_event.dart';
import 'package:safe_and_clean_customer/repositories/login_repository.dart';
import 'package:safe_and_clean_customer/states/login_state.dart';

class LoginBloc extends Bloc<LoginBloc, LoginState>{
  LoginBloc() : super(LoginStateInitial());

  @override
  Stream<LoginState> mapEventToState(LoginBloc event) async* {
    // Username changed
    if(event is LoginFetchEvent){
      yield LoginStateInitial();
    }

    if(event is LoginEvent) {
      if (event.account.username.trim().isEmpty || event.account.password.trim().isEmpty) {
        yield LoginEmptyState();
      } else {
        try {
          bool isLogin = await checkLogin(event.account);
          if (isLogin == true) {
            yield LoginStateSuccess(isLogin: true, msg: '');
          } else {
            yield LoginStateSuccess(
                isLogin: false, msg: 'Incorrect username or password');
          }
        } catch (exception) {
          print(exception);
          yield LoginStateFailure(
              errorMessage: 'Incorrect username or password');
        }
      }
    }else if(event is LoginGoogleEvent){
      // try {
      //   await _userRepository.signInWithGoogle();
      //   yield LoginStateSuccess();
      // }catch(exception) {
      //   yield LoginStateFailure();
      // }
    }
  }
}