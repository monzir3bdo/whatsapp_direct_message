import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/blocs/history/get_history/history_bloc.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/models/contact_model.dart';
import 'package:whatsapp_direct_message/widgets/history/history_card.dart';

class HistoryCardList extends StatelessWidget {
  const HistoryCardList({super.key, required this.contacts});
  final List<ContactModel> contacts;
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: ValueKey(contacts[index].phoneNumber),
          background: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Align(
              alignment: HiveDatabase.instance.selectedLanguage == 'en'
                  ? Alignment.centerLeft
                  : Alignment.centerLeft,
              child: const Icon(
                CupertinoIcons.delete,
                color: Colors.white,
              ),
            ),
          ),
          onDismissed: (dismissDirection) async {
            await contacts[index].delete();

            if (context.mounted) {
              context.read<HistoryBloc>().add(const HistoryEvent.getContacts());
            }
          },
          child: HistoryCard(
            contact: contacts[index],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Gap(context.height * 0.025);
      },
    );
  }
}
