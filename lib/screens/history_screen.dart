import 'package:flutter/material.dart';
import 'package:safe_and_clean_customer/screens/booking_detail_screen.dart';


class HistoryScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HistoryScreenState();
  }

}

class _HistoryScreenState extends State<HistoryScreen>{
  /*final tab = new TabBar(tabs: <Tab>[
    new Tab(text: 'Đang làm',),
    new Tab(text: 'Chờ làm'),
    new Tab(text: 'Lịch sử'),
  ]);*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(
                    tabs: [
                      Tab(text: 'Đang làm'),
                      Tab(text: 'Chờ làm'),
                      Tab(text: 'Lịch sử'),
                    ]),
                title: Text('Hoạt động'),
              ),
              body: TabBarView(
                  children: <Widget>[
                    _dangLamView(),
                    Text('Chờ làm'),
                    Text('Lịch sử'),
                  ])
            ))
    );
  }

  ListView _dangLamView(){
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, index){
        return ListTile(
          title: Text('Tên nhân viên #$index'),
          subtitle: Text(
            "Text\n Text\n Text\n Text\n Text\n Text\n Text\n Text\n Time",
            style: TextStyle(fontSize: 12),
          ),
          trailing: TextButton(
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BookingDetailScreen()));
            }, child: Text('Xem đơn'),),
        );
      },

    );
  }
}