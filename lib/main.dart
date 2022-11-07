import 'package:flutter/material.dart';
import 'package:so_runna/widget/home_page/home_page.dart';

void main() {
  runApp(const SoRunna());
}

class SoRunna extends StatelessWidget {
  const SoRunna({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'So-Runna',
      home: HomePage(),
    );
  }
}
