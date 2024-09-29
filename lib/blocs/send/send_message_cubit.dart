import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_message_state.dart';
part 'send_message_cubit.freezed.dart';

class SendMessageCubit extends Cubit<SendMessageState> {
  SendMessageCubit() : super(const SendMessageState.initial());
}
