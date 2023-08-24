import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? isChecked = false;
  bool? _isChecked = false;
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Textfield and CheckBox"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                // TextField
                showCursor: true,
                cursorColor: Colors.black,
                cursorWidth: 5,
                cursorHeight: 25,
                cursorRadius: Radius.circular(20),
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                textCapitalization: TextCapitalization.words,
              ),
            ),
            Checkbox(
                //CheckBox
                value: isChecked,
                activeColor: Colors.red,
                onChanged: (newBool) {
                  setState(() {
                    isChecked = newBool;
                  });
                }),
            CheckboxListTile(
                //CheckBoxTile
                title: Text(
                  'Are you Sure?',
                ),
                value: _isChecked,
                activeColor: Colors.red,
                onChanged: (bool? newValue) {
                  setState(() {
                    _isChecked = newValue;
                  });
                }),
            Column(children: [
              //RadioButton
              Row(
                children: [
                  Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Laki-Laki'),
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          }),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('Perempuan'),
                    ],
                  )
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
