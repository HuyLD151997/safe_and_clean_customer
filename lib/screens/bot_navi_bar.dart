import 'package:flutter/material.dart';
import 'package:safe_and_clean_customer/models/service.dart';
import 'package:safe_and_clean_customer/screens/profile_screen.dart';

import 'history_screen.dart';
import 'home_screen.dart';


class BotNaviBar extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BotNaviBarState();
  }
  
}

class _BotNaviBarState extends State<BotNaviBar>{
  Service? service;
  int selectedIndex = 1;
  Widget _homeScreen = HomeScreen();
  Widget _historyScreen = HistoryScreen();
  Widget _profile = ProfileScreen();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: getBody(),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                title: Text("History"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded),
                title: Text("Profile"),
              ),
            ],
          onTap: (int index) {
            onTapHandler(index);
          },
        ),
      )
    );
  }
  Widget getBody( )  {
    if(selectedIndex == 0) {
      return _historyScreen;
    } else if(selectedIndex == 1) {
      return _homeScreen;
    } else {
      return _profile;
    }
  }

  /*Widget getAppBar( )  {
    if(this.selectedIndex == 0) {
      print('đã vao 0');
      return AppBar;
    } else if(this.selectedIndex==1) {
      print('đã vao 1');
      return _homeScreen;
    } else {
      print('đã vao 2');
      return _profile;
    }
  }*/

  void onTapHandler(int index)  {
    setState(() {
      selectedIndex = index;
    });
  }
}


