import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_and_clean_customer/blocs/login_bloc.dart';
import 'package:safe_and_clean_customer/events/login_event.dart';
import 'package:safe_and_clean_customer/screens/bot_navi_bar.dart';
import 'package:safe_and_clean_customer/screens/register_screen.dart';
import 'package:safe_and_clean_customer/states/login_state.dart';


class LoginScreen extends StatefulWidget {
  /*final String username ;
  final String password ;*/
  //LoginPage({required this.username, required this.password});
  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginBloc _loginBloc;
  bool isLogin = false;
  final TextEditingController _usernameTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  void initState() {
    _loginBloc = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Login Screen'),
        ),
        body: _loginForm(),
      ),
    );
  }

  Widget _loginForm() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              _usernameField(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
              _passwordField(),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: _loginButton(),
              ),
              SizedBox(
                height: 10,
              ),
              _loginGoogleButton(),
              _showSignUpButton(),
              /*Stack(
                  alignment: Alignment.bottomCenter,
                  children: [

                  ],
                ),*/
              BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  if (state is LoginStateFailure) {
                    return Text(state.errorMessage);
                  }
                  if (state is LoginStateSuccess) {
                    return Text(state.msg);
                  }
                  return SizedBox();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _usernameField() {
    return TextFormField(
      controller: _usernameTextController,
      decoration: const InputDecoration(
        labelText: "Tên tài khoản",
      ),
    );
  }

  Widget _passwordField() {
    return TextFormField(
      obscureText: true,
      controller: _passwordTextController,
      decoration: const InputDecoration(
        labelText: "Tên tài khoản",
      ),
    );
  }

  Widget _loginButton() {
    return BlocListener<LoginBloc, LoginState>(
      bloc: _loginBloc,
      listener: (context, state) {
        if (state is LoginStateSuccess) {
          if (state.isLogin) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BotNaviBar()));
          }
        }
      },
      child: ElevatedButton(
        onPressed: () {
          _loginBloc.add(LoginEvent(
              username: _usernameTextController.text,
              password: _passwordTextController.text));
          // Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
        },
        child: const Text("Đăng nhập"),
      ),
    );
  }

  Widget _loginGoogleButton() {
    return BlocListener<LoginBloc, LoginState>(
        bloc: _loginBloc,
        listener: (context, state){
          if (state is LoginStateSuccess) {
            if (state.isLogin) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BotNaviBar()));
            }
          }
        },
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.black,
              minimumSize: Size(double.infinity, 50),
            ),
            onPressed: () {
              _loginBloc.add(LoginGoogleEvent());
            },

           child: Text('Sign in with Google'))
    );
  }

  Widget _showSignUpButton() {
    return TextButton(
      child: Text('Don\'t have an account? Sign up.'),
      onPressed: () {
        // Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => RegisterScreen()));
      },
    );
  }
}
