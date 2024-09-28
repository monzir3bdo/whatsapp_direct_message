import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';

import '../../../core/theme/colors.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
      child: Container(
        decoration: BoxDecoration(
          color: context
              .color.greyTabBarColor, // Background color for unselected tabs
          borderRadius:
              BorderRadius.circular(50), // Stadium radius for unselected tabs
        ),
        child: TabBar(
          controller: _tabController,
          tabs: [
            'Send'.hardCoded,
            'History'.hardCoded,
          ].map((e) => Tab(text: e)).toList(),
          dividerHeight: 0,
          labelColor: Colors.white,
          unselectedLabelColor: AppLightColors.primary,
          indicatorSize:
              TabBarIndicatorSize.tab, // Full width background for selected tab
          indicator: BoxDecoration(
            color: AppLightColors.primary, // Background color for selected tab
            borderRadius:
                BorderRadius.circular(50), // Stadium shape for selected tab
          ),
          indicatorWeight: 0, // Removes the underline thickness
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
