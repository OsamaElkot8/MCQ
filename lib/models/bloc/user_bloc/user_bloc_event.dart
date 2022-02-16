import 'package:mcq/models/entities/user/user.dart';

abstract class UserBlocEvent {}

class UserEdit extends UserBlocEvent {
  final User user;
  UserEdit(this.user);
}
