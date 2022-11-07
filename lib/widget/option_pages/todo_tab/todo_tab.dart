import 'package:flutter/material.dart';
import 'package:so_runna/widget/tab_views/tab_views.dart';

class ToDoTab extends StatefulWidget {
  const ToDoTab({Key? key}) : super(key: key);

  @override
  State<ToDoTab> createState() => _ToDoTabState();
}

class _ToDoTabState extends State<ToDoTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          title: Center(
              child: Text('Option 1', style: TextStyle(color: Colors.black)))),
      body: Center(child: Text('TO DO', style: TextStyle(fontSize: 100))),
    );
  }
}
