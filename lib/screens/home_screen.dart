import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/blocs/history/get_history/history_bloc.dart';
import 'package:whatsapp_direct_message/blocs/send/send_message_cubit.dart';
import 'package:whatsapp_direct_message/blocs/visibility/visibility_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/functions/functions.dart';
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
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    //@monzir3bdo where should we put the review app function?
    tabController.addListener(
      () {
        if (tabController.index == 1) {
          context.read<HistoryBloc>().add(const HistoryEvent.getContacts());
        }
      },
    );
    showReviewApp();
  }

  @override
  void dispose() {
    tabController.removeListener(() {});
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const HomeFloatingActionButton(),
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        child: SafeArea(
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Gap(context.height * 0.02),
                HomeTabBar(
                  tabController: tabController,
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      MultiBlocProvider(
                        providers: [
                          BlocProvider(
                            create: (context) => SendMessageCubit(),
                          ),
                          BlocProvider(
                            create: (context) => VisibilityCubit(),
                          ),
                          BlocProvider(
                            create: (context) => SendMessageCubit(),
                          ),
                        ],
                        child: const HomeMainWidget(),
                      ),
                      const HistoryWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
