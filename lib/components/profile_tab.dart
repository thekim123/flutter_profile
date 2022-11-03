import 'package:flutter/material.dart';


// Stateful 상태가 있는 위젯 => 상태에 따라 위젯이 변경된다.
class ProfileTab extends StatefulWidget {

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> with SingleTickerProviderStateMixin {

  TabController? _tabController;

  // ProfileTab 그림이 그려질 때 단 한번만 실행되는 함수
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  Widget _buildTabBar(){
    return TabBar(

      controller: _tabController,
      tabs: [
      Tab(icon: Icon(Icons.directions_car)),
      Tab(icon: Icon(Icons.directions_transit)),
    ],);
  }

  Widget _buildTabBarView(){
    return TabBarView(
    controller: _tabController,
    children: [
      Container(color: Colors.green),
      Container(color: Colors.red),

    ]);
  }
}
