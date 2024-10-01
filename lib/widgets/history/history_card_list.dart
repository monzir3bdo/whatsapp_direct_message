import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/blocs/history/get_history/history_bloc.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/models/contact_model.dart';
import 'package:whatsapp_direct_message/widgets/history/history_add_label_widget.dart';
import 'package:whatsapp_direct_message/widgets/history/history_card.dart';

class HistoryCardList extends StatelessWidget {
  const HistoryCardList({super.key, required this.contacts});
  final List<ContactModel> contacts;
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        return Slidable(
          useTextDirection: false,
          startActionPane: ActionPane(
            motion: const BehindMotion(),
            children: [
              SlidableAction(
                onPressed: (context) async {
                  await contacts[index].delete();
                  if (context.mounted) {
                    context
                        .read<HistoryBloc>()
                        .add(const HistoryEvent.getContacts());
                  }
                },
                label: context.translate(LangKeys.delete),
                icon: CupertinoIcons.delete,
                backgroundColor: AppLightColors.red,
              ),
              SlidableAction(
                icon: Icons.edit,
                label: context.translate(LangKeys.edit),
                backgroundColor: AppLightColors.primary,
                foregroundColor: AppLightColors.backgroundColor,
                onPressed: (context) {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => HistoryAddLabelWidget(
                      contact: contacts[index],
                    ),
                  );
                },
              ),
            ],
          ),
          key: ValueKey(contacts[index].phoneNumber),
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
