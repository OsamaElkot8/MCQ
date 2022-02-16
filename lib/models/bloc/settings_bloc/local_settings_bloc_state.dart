import 'package:mcq/models/utils/settings.dart';
import 'package:mcq/repository/network/network_constants.dart';

abstract class LocalSettingsBlocState {
  Settings? settings = Settings.defaultSettings();
}

class SettingsIdle extends LocalSettingsBlocState {}

class SettingsLoading extends LocalSettingsBlocState {}

class SettingsLoaded extends LocalSettingsBlocState {
  SettingsLoaded(settings) {
    this.settings = settings;
  }
}

class SettingsLoadingError extends LocalSettingsBlocState {
  String? reason;
  SettingsLoadingError({this.reason = NetworkConstants.keyError});
}
