import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:safe_and_clean_customer/screens/feelback_screen.dart';
import 'package:safe_and_clean_customer/screens/information_screen.dart';




class ProfileScreen extends StatelessWidget{
  // AuthenticationBloc _authenticationBloc;
  bool isLogin = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Cá nhân'),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                _avatar(),
                SizedBox(height: 10),
                _informationAccount(context),
                SizedBox(height: 10),
                _wallet(),
                SizedBox(height: 10),
                _feelback(context),
                SizedBox(height: 10),
                _help(),
                SizedBox(height: 10),
                _setting(),
                SizedBox(height: 10),
                _logoutButton(),
              ],
            ),
          ),

        )
    );
  }



  Widget _avatar(){
    return SizedBox(
        height: 115,
        width: 115,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            CircleAvatar(
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2017/06/13/12/53/profile-2398782_1280.png'
              ),
            ),
          ],
        )
    );
  }

  Widget _informationAccount(BuildContext context){
    return SizedBox(
      child: FlatButton(
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.grey,
          onPressed: (){
            // navigetor my_acc_screen
            Navigator.push(context, MaterialPageRoute(builder: (context) => InformationScreen()));
          },
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Text('Thông tin tài khoản')),
              Icon(Icons.arrow_forward)
            ],
          )
      ),
    );
  }

  Widget _wallet(){
    return SizedBox(
      child: FlatButton(
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.grey,
          onPressed: (){
            // navigetor my_acc_screen
          },
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Text('Wallet')),
              Icon(Icons.wallet_giftcard)
            ],
          )
      ),
    );
  }

  Widget _feelback(BuildContext context){
    return SizedBox(
      child: FlatButton(
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.grey,
          onPressed: (){
            // navigetor feelback_screen
            Navigator.push(context, MaterialPageRoute(builder: (context) => FeelbackScreen()));
          },
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Text('Feelback')),
              Icon(Icons.feedback)
            ],
          )
      ),
    );
  }

  Widget _help(){
    return SizedBox(
      child: FlatButton(
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.grey,
          onPressed: (){
            // navigetor my_acc_screen
          },
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Text('Help')),
              Icon(Icons.help)
            ],
          )
      ),
    );
  }

  Widget _setting(){
    return SizedBox(
      child: FlatButton(
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.grey,
          onPressed: (){
            // navigetor my_acc_screen
          },
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Text('Setting')),
              Icon(Icons.settings)
            ],
          )
      ),
    );
  }

  Widget _logoutButton(){
    return
      /*BlocListener<AuthenticationBloc, AuthenticationState>(
      bloc: _authenticationBloc,
      listener: (context, state){
        if (state is AuthenticationStateFailure) {
          if(state.isLogin){
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginScreen()));
          }
        }
      },

    );*/
      TextButton(
        child: Text('Logout'),
        onPressed: (){
          // _authenticationBloc.add(AuthenticationEventLoggedOut());
        },
      );
  }
}

