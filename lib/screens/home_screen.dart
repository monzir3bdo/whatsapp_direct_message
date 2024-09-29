import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/widgets/history/history_widget.dart';
import 'package:whatsapp_direct_message/widgets/home/home_floating_action_button.dart';
import 'package:whatsapp_direct_message/widgets/home/home_tabbar.dart';
import '../widgets/home/main_home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const HomeFloatingActionButton(),
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          HomeTabBar(tabController: _tabController),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: const[
                HomeWidget(),
                 HistoryWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}


