import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_number_state.dart';
part 'save_number_cubit.freezed.dart';

class SaveNumberCubit extends Cubit<SaveNumberState> {
  SaveNumberCubit() : super(const SaveNumberState.initial());
}
