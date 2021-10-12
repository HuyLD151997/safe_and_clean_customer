import 'package:flutter/material.dart';
import 'package:safe_and_clean_customer/models/service.dart';



class ServiceItem extends StatelessWidget {
  Service service;
  ServiceItem({this.service});
  @override
  Widget build(BuildContext context) {
    Color _color = this.service.color;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(service.content)
        ],
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            _color.withOpacity(0.6),
            _color
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft
        ),

      ),
    );
  }
}