import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterScreenState();
  }
}

class _RegisterScreenState extends State<RegisterScreen>{
  final _fullnameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _confirmPasswordTextController = TextEditingController();
  final _phoneNumberTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Register Screen'),),
        body: _signUp()
      ),
    );
  }

  Widget _signUp(){
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
              _fullnameField(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
              _passwordField(),
              _confirmPasswordField(),
              _phoneNumberField(),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: Row(
                  children: <Widget>[
                    _cancelButton(),
                    _signUpButton()
                  ],
                )
              ),
              /*Stack(
                  alignment: Alignment.bottomCenter,
                  children: [

                  ],
                ),*/
              /*BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  if (state is LoginStateFailure) {
                    return Text(state.errorMessage);
                  }
                  if (state is LoginStateSuccess) {
                    return Text(state.msg);
                  }
                  return SizedBox();
                },
              ),*/
            ],
          ),
        ),
      ),
    );
  }

  Widget _fullnameField(){
    return TextFormField(
      controller: _fullnameTextController,
      decoration: const InputDecoration(
        labelText: "Tên tài khoản",
      ),
    );
  }

  Widget _passwordField(){
    return TextFormField(
      controller: _fullnameTextController,
      decoration: const InputDecoration(
        labelText: "Tên tài khoản",
      ),
    );
  }

  Widget _confirmPasswordField(){
    return TextFormField(
      controller: _fullnameTextController,
      decoration: const InputDecoration(
        labelText: "Tên tài khoản",
      ),
    );
  }

  Widget _phoneNumberField(){
    return TextFormField(
      controller: _fullnameTextController,
      decoration: const InputDecoration(
        labelText: "Tên tài khoản",
      ),
    );
  }

  Widget _cancelButton(){
    return ElevatedButton(
      onPressed: () {

      },
      child: const Text("Cancel"),
    );
  }

  Widget _signUpButton(){
    return ElevatedButton(
      onPressed: () {

      },
      child: const Text("Sign Up"),
    );
  }

}

