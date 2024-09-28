import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';

import 'widgets/home/generate_links_widgets.dart';
import 'widgets/home/home_tabbar.dart';
import 'widgets/home/message_widgets.dart';
import 'widgets/home/phone_number_widget.dart';
import 'widgets/home/send_widget.dart';

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
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const PhoneNumberWidgets(),
                      const SizedBox(
                        height: 20,
                      ),
                      const MessageWidgets(),
                      const SizedBox(
                        height: 20,
                      ),
                      const SendWidgets(),
                      const SizedBox(
                        height: 20,
                      ),
                      Text('Generate Link to Your Whatsapp'.hardCoded,
                          style: TextStyle(
                            color: context.color.textColor,
                            fontSize: 18,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      const GenerateLinkWidgets()
                    ],
                  ),
                ),
                const Placeholder()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
