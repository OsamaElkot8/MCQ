import 'package:mcq/models/entities/user/user.dart';
import 'package:mcq/repository/network/network_constants.dart';

abstract class UserBlocState {}

class UserIdle extends UserBlocState {}

class UserLoaded extends UserBlocState {
  final User user;
  UserLoaded(this.user);
}

class UserLoadingError extends UserBlocState {
  String? reason;
  UserLoadingError({this.reason = NetworkConstants.keyError});
}
