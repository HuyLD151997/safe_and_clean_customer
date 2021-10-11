import 'package:flutter/material.dart';
import 'package:safe_and_clean_customer/screens/bot_navi_bar.dart';

void main() async{

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BotNaviBar()
    );
  }
}
