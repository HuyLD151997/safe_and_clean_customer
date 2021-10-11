import 'package:flutter/material.dart';

class BookingDetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Thông tin nhân viên'),
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all(), color: Colors.white),
              child: const Text(
                  'Text.Text.Text.Text.Text. Text.Text.Text.Text.Text.\n '
                      'Text.Text.Text.Text.Text. Text.Text.Text.Text.Text.\n '
                      'Text.Text.Text.Text.Text. Text.Text.Text.Text.Text.\n '
                      'Text.Text.Text.Text.Text. Text.Text.Text.Text.Text.\n '
              ),
            ),
            Text('Thông tin khách hàng'),
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all(), color: Colors.white),
              child: const Text(
                  'Text.Text.Text.Text.Text. Text.Text.Text.Text.Text.\n '
                      'Text.Text.Text.Text.Text. Text.Text.Text.Text.Text.\n '
                      'Text.Text.Text.Text.Text. Text.Text.Text.Text.Text.\n '
                      'Text.Text.Text.Text.Text. Text.Text.Text.Text.Text.\n '
              ),
            ),
            Text('Thông tin công việc'),
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all(), color: Colors.white),
              child: const Text(
                  'Text.Text.Text.Text.Text. Text.Text.Text.Text.Text.\n '
                      'Text.Text.Text.Text.Text. Text.Text.Text.Text.Text.\n '
                      'Text.Text.Text.Text.Text. Text.Text.Text.Text.Text.\n '
                      'Text.Text.Text.Text.Text. Text.Text.Text.Text.Text.\n '
              ),
            ),
          ],
        ),
      ),
    );
  }

}