import 'package:flutter/material.dart';

class DinamicTabPage extends StatefulWidget {
  const DinamicTabPage({Key? key}) : super(key: key);

  @override
  _DinamicTabPageState createState() => _DinamicTabPageState();
}

class _DinamicTabPageState extends State<DinamicTabPage>
    with TickerProviderStateMixin {
  final int _startingTabCount = 4;

  List<Tab> _tabs = [];
  final List<Widget> _generalWidgets = [];
  TabController? _tabController;

  @override
  void initState() {
    _tabs = getTabs(_startingTabCount);
    _tabController = getTabController();
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () =>
                Navigator.pushReplacementNamed(context, '/so-runna'),
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Dynamic TBV",
            style: TextStyle(color: Colors.deepPurple)),
        bottom: TabBar(
          tabs: _tabs,
          controller: _tabController,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _addAnotherTab,
          ),
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: _removeTab,
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: getWidgets(),
      ),
    );
  }

  TabController getTabController() {
    return TabController(length: _tabs.length, vsync: this);
  }

  Tab getTab(int widgetNumber) {
    return Tab(
      text: "$widgetNumber",
    );
  }

  Widget getWidget(int widgetNumber) {
    return Center(
      child: Text("Widget nr: $widgetNumber"),
    );
  }

  List<Tab> getTabs(int count) {
    _tabs.clear();
    for (int i = 0; i < count; i++) {
      _tabs.add(getTab(i));
    }
    return _tabs;
  }

  List<Widget> getWidgets() {
    _generalWidgets.clear();
    for (int i = 0; i < _tabs.length; i++) {
      _generalWidgets.add(getWidget(i));
    }
    return _generalWidgets;
  }

  void _addAnotherTab() {
    _tabs = getTabs(_tabs.length + 1);
    _tabController!.index = 0;
    _tabController = getTabController();
    _updatePage();
  }

  void _removeTab() {
    _tabs = getTabs(_tabs.length - 1);
    _tabController!.index = 0;
    _tabController = getTabController();
    _updatePage();
  }

  void _updatePage() {
    setState(() {});
  }
}
