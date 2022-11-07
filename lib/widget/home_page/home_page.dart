import 'package:flutter/material.dart';
import 'package:so_runna/widget/option_pages/todo_tab/todo_tab.dart';
import 'package:so_runna/widget/option_pages/doing_tab/doing_tab.dart';
import 'package:so_runna/widget/option_pages/done_tab/done_tab.dart';
import 'package:so_runna/style/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  final bottomNavigationBarItems = const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.list_alt),
      label: 'TO DO',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.check_box_outline_blank),
      label: 'DOING',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.check_box),
      label: 'DONE',
    ),
  ];

  static final List<Widget> _widgetOptions = <Widget>[
    ToDoTab(),
    DoingTab(),
    DoneTab(),
  ];

  void _onItemTipped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('So-Runna'),
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu))),
      body: IndexedStack(index: _selectedIndex, children: _widgetOptions),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        unselectedItemColor: AppColors.blackPurple.withOpacity(0.7),
        unselectedIconTheme:
            IconThemeData(color: AppColors.blackPurple.withOpacity(0.7)),
        selectedItemColor: AppColors.whitePurple,
        backgroundColor: Colors.deepPurple,
        items: bottomNavigationBarItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTipped,
      ),
    );
  }
}
