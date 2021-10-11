import 'package:flutter/material.dart';

class InformationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InformationScreenState();
  }
}

class _InformationScreenState extends State<InformationScreen> {
  final _usernameTextController = TextEditingController();
  final _phoneNumberTextController = TextEditingController();
  final _provinceTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _addressTextController = TextEditingController();
  final _genderTextController = TextEditingController();
  final _birthdayTextController = TextEditingController();
  final _regionTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông tin tài khoản'),
      ),
      body: Container(
          padding: EdgeInsets.only(left: 15, top: 20, right: 15),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: <Widget>[
                Text('Tên tài khoản'),
                TextField(
                  controller: _usernameTextController,
                  decoration: const InputDecoration(
                    labelText: "Lê Đức Huy",
                  ),
                ),
                Text('Sinh nhật'),
                TextField(
                  controller: _birthdayTextController,
                  decoration: const InputDecoration(
                    labelText: "10/5/1997",
                  ),
                ),
                Text('Giới tính'),
                TextField(
                  controller: _genderTextController,
                  decoration: const InputDecoration(
                    labelText: "Nam",
                  ),
                ),
                Text('Email'),
                TextField(
                  controller: _emailTextController,
                  decoration: const InputDecoration(
                    labelText: "Số điện thoại",
                  ),
                ),
                Text('Số điện thoại'),
                TextField(
                  controller: _phoneNumberTextController,
                  decoration: const InputDecoration(
                    labelText: "09xxxxxx",
                  ),
                ),
                Text('Địa chỉ'),
                TextField(
                  controller: _addressTextController,
                  decoration: const InputDecoration(
                    labelText: "ABC street",
                  ),
                ),
                Text('Tỉnh'),
                TextField(
                  controller: _provinceTextController,
                  decoration: const InputDecoration(
                    labelText: "TPHCM",
                  ),
                ),
                Text('Khu vực'),
                TextField(
                  controller: _regionTextController,
                  decoration: const InputDecoration(
                    labelText: "Phía nam",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                        onPressed: (){
                          
                        },
                        child: Text('Cancel', style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          color: Colors.black
                        ),),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                    ),
                    ElevatedButton(
                        onPressed: (){},
                        child: Text('Save', style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            color: Colors.white
                        ),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
