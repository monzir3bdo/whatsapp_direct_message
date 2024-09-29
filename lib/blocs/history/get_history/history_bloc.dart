import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';
import 'package:whatsapp_direct_message/models/contact_model.dart';

part 'history_bloc.freezed.dart';
part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(const HistoryState.initial()) {
    on<_GetContatcsEvent>(_getHisory);
  }
  _getHisory(_GetContatcsEvent event, Emitter<HistoryState> state) {
    emit(const HistoryState.loading());
    if (HiveDatabase.instance.isSaveEnabled!
            .get(saveEnabledKey, defaultValue: true) ==
        false) {
      emit(const HistoryState.historyDisable());
      return;
    }
    try {
      final contacts =
          HiveDatabase.instance.history!.get(historyKey, defaultValue: [])!;
      if (contacts.isEmpty) {
        emit(const HistoryState.empty());
        return;
      }
      emit(HistoryState.success(contacts: contacts));
    } catch (e) {
      emit(HistoryState.failure(message: e.toString()));
    }
  }
}
