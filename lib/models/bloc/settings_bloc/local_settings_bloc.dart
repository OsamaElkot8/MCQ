import 'package:mcq/models/bloc/closable_bloc.dart';
import 'package:mcq/models/bloc/settings_bloc/local_settings_bloc_event.dart';
import 'package:mcq/models/bloc/settings_bloc/local_settings_bloc_state.dart';
import 'package:mcq/models/utils/settings.dart';

class LocalSettingsBloc
    extends ClosableBloc<LocalSettingsBlocEvent, LocalSettingsBlocState> {
  LocalSettingsBloc({LocalSettingsBlocState? initialState})
      : super(initialState ?? SettingsIdle()) {
    on<SettingsFetch>((event, emit) async {
      try {
        emit(SettingsLoading());
        final Settings _result =
            await Settings.getSettingsFromSharedPreferences();
        emit(SettingsLoaded(_result));
      } catch (e) {
        emit(SettingsLoadingError(reason: e.toString()));
      }
    });
  }
}
