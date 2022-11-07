import 'package:flutter/material.dart';
import 'package:so_runna/widget/tab_views/tab_views.dart';

class DoneTab extends StatefulWidget {
  const DoneTab({Key? key}) : super(key: key);

  @override
  State<DoneTab> createState() => _DoneTabState();
}

class _DoneTabState extends State<DoneTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          title: Center(
              child: Text('Option 3', style: TextStyle(color: Colors.black)))),
      body: Center(child: Text('DONE', style: TextStyle(fontSize: 100))),
    );
  }
}
