import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/history/get_history/history_bloc.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';

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
        height: context.height * 0.051,
        width: context.width * 0.91,
        decoration: BoxDecoration(
          color: context
              .color.greyTabBarColor, // Background color for unselected tabs
          borderRadius:
              BorderRadius.circular(42), // Stadium radius for unselected tabs
        ),
        child: TabBar(
          controller: _tabController,
          onTap: (index) {
            if (index == 1) {
              context.read<HistoryBloc>().add(const HistoryEvent.getContacts());
            }
          },
          tabs: [
            context.translate(LangKeys.send),
            context.translate(LangKeys.history),
          ].map((e) => Tab(text: e)).toList(),
          dividerHeight: 0,
          labelColor: Colors.white,
          unselectedLabelColor: AppLightColors.primary,
          indicatorSize:
              TabBarIndicatorSize.tab, // Full width background for selected tab
          indicator: BoxDecoration(
            color: AppLightColors.primary, // Background color for selected tab
            borderRadius:
                BorderRadius.circular(42), // Stadium shape for selected tab
          ),
          indicatorWeight: 0, // Removes the underline thickness
          labelStyle: AppTextStyles.semiBold16.copyWith(fontSize: 14),
          unselectedLabelStyle: AppTextStyles.semiBold16.copyWith(fontSize: 14),
        ),
      ),
    );
  }
}
