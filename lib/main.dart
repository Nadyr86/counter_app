import 'package:flutter/material.dart';
import 'package:tapshyrma_1/pages/my_first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyFirstPage(),
    );
  }
}
