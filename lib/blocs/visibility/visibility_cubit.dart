import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'visibility_cubit.freezed.dart';
part 'visibility_state.dart';

class VisibilityCubit extends Cubit<VisibilityState> {
  VisibilityCubit() : super(const VisibilityState.initial());
  bool showCountryPicker = true;
  toggleCountryPickerVisibility() {
    showCountryPicker = !showCountryPicker;
    emit(VisibilityState.visibilityChanged(isVisible: showCountryPicker));
  }
}
