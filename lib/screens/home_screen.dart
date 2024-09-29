import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/widgets/history/history_widget.dart';
import 'package:whatsapp_direct_message/widgets/home/home_floating_action_button.dart';
import 'package:whatsapp_direct_message/widgets/home/home_tabbar.dart';
import 'package:whatsapp_direct_message/widgets/home/send_widget.dart';

import '../widgets/home/generate_links_widgets.dart';
import '../widgets/home/message_widgets.dart';
import '../widgets/home/phone_number_widget.dart';

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
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(context.height * 0.04),
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
                      Text(
                        'Generate Link to Your Whatsapp'.hardCoded,
                        style: AppTextStyles.medium14.copyWith(
                          color: AppLightColors.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const GenerateLinkWidgets()
                    ],
                  ),
                ),
                const HistoryWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
