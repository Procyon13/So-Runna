import 'package:flutter/material.dart';
import 'package:so_runna/widget/tab_views/tab_views.dart';
import 'package:so_runna/style/colors.dart';

class DoingTab extends StatefulWidget {
  const DoingTab({Key? key}) : super(key: key);

  @override
  State<DoingTab> createState() => _DoingTabState();
}

class _DoingTabState extends State<DoingTab> {
  final _tabOptions = List<Tab>.generate(
      3,
      (index) => Tab(
            text: 'Optin ${index + 1}',
          ));
  final _tabViews = List<Widget>.generate(3, (index) => TabViews());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabOptions.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.lavenderPurple,
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                splashRadius: 20,
                onPressed: () {},
                icon: const Icon(Icons.add),
                iconSize: 30,
              ),
              Expanded(
                child: TabBar(
                    indicatorColor: AppColors.whitePurple,
                    isScrollable: true,
                    labelColor: Colors.black,
                    tabs: _tabOptions),
              ),
            ],
          ),
        ),
        body: TabBarView(children: _tabViews),
      ),
    );
  }
}
