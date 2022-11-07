import 'package:flutter/material.dart';
import 'package:so_runna/widget/tab_views/task_view/task_view.dart';

class TasksList extends StatefulWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  final _tasksListController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(top: 15, left: 10, right: 10),
        controller: _tasksListController,
        // itemExtent: 100,
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 0.1,
                  color: Colors.black,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple.withOpacity(1),
                    blurRadius: 5,
                    offset: const Offset(3, 3),
                  )
                ],
              ),
              clipBehavior: Clip.hardEdge,
              child: TaskView(index: index),
            ),
          );
        });
  }
}
