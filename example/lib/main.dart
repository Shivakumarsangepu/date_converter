import 'package:flutter/material.dart';
import 'package:date_converter/date_converter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Date Converter Example'),
        ),
        body: Center(
          child: Text(
            DateConverter.getConvertedTime(
              "2024-11-19T13:45:30.123456Z",
              "dd MMM yyyy",
            ),
          ),
        ),
      ),
    );
  }
}
