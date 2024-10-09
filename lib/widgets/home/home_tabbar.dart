import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';

import '../../core/theme/colors.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({
    super.key,
    required this.tabController,
  });
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 12, left: 12),
      child: Container(
        height: context.height * 0.051,
        decoration: BoxDecoration(
            color: context.color.greyTabBarColor,
            borderRadius: BorderRadius.circular(42)),
        child: TabBar(
          controller: tabController,
          tabs: [
            context.translate(LangKeys.send),
            context.translate(LangKeys.history),
          ].map((e) => Tab(text: e)).toList(),
          indicatorWeight: 0,
          indicator: BoxDecoration(
            color: AppLightColors.primary, // Background color for selected tab
            borderRadius:
                BorderRadius.circular(42), // Stadium shape for selected tab
          ),
        ),
      ),
    );
  }
}
