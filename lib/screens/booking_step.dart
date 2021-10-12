import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:safe_and_clean_customer/models/service.dart';



class BookingStep extends StatefulWidget {
  Service service;
  BookingStep({ Key key,  this.service}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _BookingStepState();
  }
}

class _BookingStepState extends State<BookingStep> {
  bool _caSang1 = false;
  bool _caSang2 = false;
  bool _caSang3 = false;
  bool _caChieu1 = false;
  bool _caChieu2 = false;
  bool _caChieu3 = false;
  bool _caToi1 = false;
  bool _caToi2 = false;
  bool _caToi3 = false;
  bool isCompleted = false;
  int currentStep = 0;
  final _totalAreaTextController = TextEditingController();
  final _chooseServiceTextController = TextEditingController();
  final _numberRoomTextController = TextEditingController();
  final _clearSofaTextController = TextEditingController();
  final _clearCarpetTextController = TextEditingController();

  // Datepicker
  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Booking Screen'),
        ),
        body: isCompleted
            ? buildCompleted()
            : Stepper(
          type: StepperType.horizontal,
          steps: getStep(),
          currentStep: currentStep,
          onStepContinue: () {
            final isLastStep = currentStep == getStep().length - 1;
            if (isLastStep) {
              setState(() => isCompleted = true);
              //print('Comleted');
            } else {
              setState(() => currentStep += 1);
            }
          },
          onStepTapped: (step) => setState(() => currentStep = step),
          onStepCancel: currentStep == 0
              ? null
              : () => setState(() => currentStep -= 1),
          // controlsBuilder: (context, {onStepContinue, onStepCancel}) {
          //   final isLastStep = currentStep == getStep().length - 1;
          //   return Container(
          //     margin: EdgeInsets.only(bottom: 10),
          //     child: Column(
          //       children: <Widget>[
          //         SizedBox(child: Text('(Đã bao gồm phí dụng cụ)')),
          //         SizedBox(child: Text('Số tiền: ' + 'VNĐ')),
          //         Row(
          //           children: <Widget>[
          //             if (currentStep != 0)
          //               Expanded(
          //                   child: ElevatedButton(
          //                       onPressed: onStepCancel,
          //                       child: Text('BACK'))),
          //             SizedBox(width: 12),
          //             Expanded(
          //                 child: ElevatedButton(
          //                     onPressed: onStepContinue,
          //                     child:
          //                     Text(isLastStep ? 'CONFIRM' : 'NEXT'))),
          //           ],
          //         )
          //       ],
          //     ),
          //   );
          // },

        ),
      ),
    );
  }

  buildCompleted() {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'SUCCESS',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                textStyle: const TextStyle(fontSize: 24),
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () => setState(() {
                isCompleted = false;
                currentStep = 0;

                _totalAreaTextController.clear();
              }),
              child: const Text('Reset'))
        ],
      ),
    );
  }

  List<Step> getStep() => [
    Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 0,
        title: const Text('Account'),
        content: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _totalAreaTextController,
                  decoration: const InputDecoration(labelText: 'Total Area'),
                ),
                TextFormField(
                  controller: _chooseServiceTextController,
                  decoration: const InputDecoration(
                      labelText: 'Chọn tiện ích từng phòng'),
                ),
                TextFormField(
                  controller: _numberRoomTextController,
                  decoration:
                  const InputDecoration(labelText: 'Số phòng khách'),
                ),
                TextFormField(
                  controller: _clearSofaTextController,
                  decoration: const InputDecoration(labelText: 'Dọn sofa'),
                ),
                TextFormField(
                  controller: _clearCarpetTextController,
                  decoration: const InputDecoration(labelText: 'Giặt thảm'),
                ),
              ],
            ),
          ),
        )),
    Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: const Text('Address'),
        content: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _totalAreaTextController,
                  decoration: const InputDecoration(labelText: 'Address'),
                ),
                TextFormField(
                  controller: _totalAreaTextController,
                  decoration: const InputDecoration(labelText: 'Số căn hộ'),
                ),
                ElevatedButton(
                    onPressed: () => _selectDate(context),
                    child: const Text(
                      'Chọn ngày',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                Text(DateFormat('dd-MM-yyyy').format(selectedDate)),
                // Ca sáng
                SizedBox(
                    child: Column(
                      children: <Widget>[
                        const Text('Ca sáng'),
                        Row(
                          children: <Widget>[
                            RaisedButton(
                              child:  const Text('09.00 AM'),
                              textColor: Colors.white,
                              // 2
                              color: _caSang1 ? Colors.red : Colors.grey,
                              // 3
                              onPressed: () => {
                                setState(() {
                                  _caSang1 = !_caSang1;
                                })
                              },
                            ),
                            const SizedBox(height: 10),
                            RaisedButton(
                              child:  const Text('10.00 AM'),
                              textColor: Colors.white,
                              // 2
                              color: _caSang2 ? Colors.red : Colors.grey,
                              // 3
                              onPressed: () => {
                                setState(() {
                                  _caSang2 = !_caSang2;
                                })
                              },
                            ),
                            const SizedBox(height: 10),
                            RaisedButton(
                              child:  const Text('11.00 AM'),
                              textColor: Colors.white,
                              // 2
                              color: _caSang3 ? Colors.red : Colors.grey,
                              // 3
                              onPressed: () => {
                                setState(() {
                                  _caSang3 = !_caSang3;
                                })
                              },
                            ),
                          ],
                        ),
                      ],
                    )),

                // Ca CHiều
                SizedBox(
                    child: Column(
                      children: <Widget>[
                        Text('Ca chiều'),
                        Row(
                          children: <Widget>[
                            RaisedButton(
                              child: new Text('14.00 AM'),
                              textColor: Colors.white,
                              // 2
                              color: _caChieu1 ? Colors.red : Colors.grey,
                              // 3
                              onPressed: () => {
                                setState(() {
                                  _caChieu1 = !_caChieu1;
                                })
                              },
                            ),
                            SizedBox(height: 10),
                            RaisedButton(
                              child: new Text('15.00 AM'),
                              textColor: Colors.white,
                              // 2
                              color: _caChieu2 ? Colors.red : Colors.grey,
                              // 3
                              onPressed: () => {
                                setState(() {
                                  _caChieu2 = !_caChieu2;
                                })
                              },
                            ),
                            SizedBox(height: 10),
                            RaisedButton(
                              child: new Text('16.00 AM'),
                              textColor: Colors.white,
                              // 2
                              color: _caChieu3 ? Colors.red : Colors.grey,
                              // 3
                              onPressed: () => {
                                setState(() {
                                  _caChieu3 = !_caChieu3;
                                })
                              },
                            ),
                          ],
                        ),
                      ],
                    )),

                // Ca tối
                SizedBox(
                    child: Column(
                      children: <Widget>[
                        Text('Ca sáng'),
                        Row(
                          children: <Widget>[
                            RaisedButton(
                              child: new Text('09.00 AM'),
                              textColor: Colors.white,
                              // 2
                              color: _caToi1 ? Colors.red : Colors.grey,
                              // 3
                              onPressed: () => {
                                setState(() {
                                  _caToi1 = !_caToi1;
                                })
                              },
                            ),
                            SizedBox(height: 10),
                            RaisedButton(
                              child: new Text('10.00 AM'),
                              textColor: Colors.white,
                              // 2
                              color: _caToi2 ? Colors.red : Colors.grey,
                              // 3
                              onPressed: () => {
                                setState(() {
                                  _caToi2 = !_caToi2;
                                })
                              },
                            ),
                            SizedBox(height: 10),
                            RaisedButton(
                              child: new Text('11.00 AM'),
                              textColor: Colors.white,
                              // 2
                              color: _caToi3 ? Colors.red : Colors.grey,
                              // 3
                              onPressed: () => {
                                setState(() {
                                  _caToi3 = !_caToi3;
                                })
                              },
                            ),
                          ],
                        ),
                      ],
                    )),

                // Ghi chú
                SizedBox(
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: TextField(
                      maxLines: 50,
                      minLines: 10,
                      decoration: InputDecoration(hintText: 'Ghi chú'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
    Step(
        isActive: currentStep >= 2,
        title: Text('Complete'),
        content: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _totalAreaTextController,
                  decoration:
                  InputDecoration(labelText: 'Vị trí làm việc'),
                ),
                TextFormField(
                  controller: _totalAreaTextController,
                  decoration:
                  InputDecoration(labelText: 'Thông tin công việc'),
                ),
              ],
            ),
          ),
        )),
  ];
}