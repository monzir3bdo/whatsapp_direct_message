import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

import 'widgets/home/home_tabbar.dart';

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
                      Text('Phone Number'.hardCoded,
                          style: TextStyle(
                            color: context.color.textColor,
                            fontSize: 18,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter phone number'.hardCoded,
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                              checkColor: AppLightColors.primary,
                              activeColor: context.color.containerColor,
                              value: true,
                              onChanged: (value) {}),
                          Text(
                            'show country picker'.hardCoded,
                            style: const TextStyle(
                              color: AppLightColors.primary,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text('Message'.hardCoded,
                          style: TextStyle(
                            color: context.color.textColor,
                            fontSize: 18,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        maxLines: 4,
                        minLines: 4,
                        decoration: InputDecoration(
                          hintText: 'Message (optional)'.hardCoded,
                        ),
                      ),
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
