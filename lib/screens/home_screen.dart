
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_and_clean_customer/blocs/login_bloc.dart';
import 'package:safe_and_clean_customer/screens/chat_screen.dart';
import 'package:safe_and_clean_customer/screens/login_screen.dart';
import 'package:safe_and_clean_customer/screens/services_item.dart';

import 'fake_data.dart';


class HomeScreen extends StatelessWidget{
  /*Service service;
  HomeScreen({Key? key, required this.service}) : super();*/
  @override
  Widget build(BuildContext context) {
    /*LoginRepo repo = new LoginRepo();
    repo.checkLogin('admin', '123456');*/
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Logo'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.chat),
                onPressed: () => {
                  // navigetor chat_screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()))
                }
            ),
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BlocProvider(
                    create: (context) => LoginBloc(),
                    child: LoginScreen(),
                  )));

                },
                child: Text("Đăng nhập ngay"),),
              SizedBox(height: 20,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Dịch vụ')
                  ],
                ),
              ),
              Expanded(
                child:InkWell(
                  onTap: (){
                    // Navigator BookingStep
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => BookingStep(service: this.service)));
                  },
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 4/2,
                    children: FAKE_SERVICES.map((eachService) => ServiceItem(service: eachService)).toList(),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Các kiểu nhà')
                  ],
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 200,
                          height: 200,
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            border: Border.all(width: 1, color: Colors.black26),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(50),
                          child: FlutterLogo(
                            size: 50,
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            border: Border.all(width: 1, color: Colors.black26),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(50),
                          child: FlutterLogo(
                            size: 50,
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            border: Border.all(width: 1, color: Colors.black26),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(50),
                          child: FlutterLogo(
                            size: 50,
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            border: Border.all(width: 1, color: Colors.black26),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(50),
                          child: FlutterLogo(
                            size: 50,
                          ),
                        ),
                      ],
                    ),
              ) ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
GridView(
padding: EdgeInsets.all(12),
children: FAKE_SERVICES.map((eachService) => ServiceItem(service: eachService)).toList(),
gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
maxCrossAxisExtent: 150,
// tỉ lệ chiều rộng / chiều cao
childAspectRatio: 4/2,
crossAxisSpacing: 10,
mainAxisSpacing: 10,
))*/
