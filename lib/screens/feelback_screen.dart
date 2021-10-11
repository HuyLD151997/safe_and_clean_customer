import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeelbackScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _feelbackScreenState();
  }
}

class _feelbackScreenState extends State<FeelbackScreen> {
  bool _bad = false;
  bool _good = false;
  bool _great = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feelback'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.grey,
              padding: EdgeInsets.all(15),
              child: Column(
                children: const <Widget>[
                  Text(
                    'Gửi đánh giá của bạn !',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Chúng tôi hi vọng bạn có một trải nghiệm tốt sau khi sử dụng dịch vụ của chúng tôi.'
                        'Mọi nhận xét, câu hỏi vui lòng viết ở bên dưới',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Column(
                children: <Widget>[
                  Text('Đánh giá của bạn như thế nào ?'),
                  RatingBar.builder(
                    initialRating: 0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(border: Border.all()),
              child: const TextField(
                maxLines: 40,
                minLines: 10,
                decoration: InputDecoration(hintText: 'Mô tả trải nghiệm của bạn ở đây'),
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Column(
                children: <Widget>[
                  Text('Bạn có hài lòng', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        child: new Text('Bad'),
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color:_bad ? Colors.red : Colors.black, width: 2)
                        ),
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                        // 2
                        color: _bad ? Colors.white : Colors.white,
                        // 3
                        onPressed: () => {
                          setState(() {
                            _bad = !_bad;
                          })
                        },
                      ),
                      SizedBox(width: 20,),
                      RaisedButton(
                        child: new Text('Good'),
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color:_good ? Colors.red : Colors.black, width: 2)
                        ),
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                        // 2
                        color: _good ? Colors.white : Colors.white,
                        // 3
                        onPressed: () => {
                          setState(() {
                            _good = !_good;
                          })
                        },
                      ),
                      SizedBox(width: 20,),
                      RaisedButton(
                        child: new Text('Great'),
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color:_great ? Colors.red : Colors.black, width: 2)
                        ),
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

                        // 2
                        color: _great ? Colors.white : Colors.white,
                        // 3
                        onPressed: () => {
                          setState(() {
                            _great = !_great;
                          })
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Gửi đánh giá')),
            ),
          ],
        ),
      ),
    );
  }
}
