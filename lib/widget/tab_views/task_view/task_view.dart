import 'package:flutter/material.dart';

class TaskContent {
  final int id;
  String title;
  String? description;

  TaskContent(this.id, {required this.title, String? this.description});
}

class TaskView extends StatelessWidget {
  TaskView({Key? key, required this.index}) : super(key: key);
  int index;

  bool _descTextShowFlag = true;
  String _descText(int index) {
    return 'You can read the description of task ${index + 1} here. In the future, in order to read the full description, you will have to click on the arrow to expand the full description.';
  }

  // _openDescription() {
  //   setState(() {
  //     _descTextShowFlag = !_descTextShowFlag;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 15,
          color: Colors.black.withOpacity(0.6),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    style: ButtonStyle(),
                    onPressed: () {},
                    child: Text(
                      'Task ${index + 1}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFF3d0e69)),
                    ),
                  ),
                  Material(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            splashRadius: 20,
                            onPressed: () {},
                            icon: const Icon(Icons.edit),
                            iconSize: 20),
                        IconButton(
                            splashRadius: 20,
                            onPressed: () {},
                            icon: const Icon(Icons.event),
                            iconSize: 20),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              )
            ],
          ),
        ),
        const SizedBox(
          width: 12,
        )
      ],
    );
  }
}
