import 'package:mcq/models/bloc/closable_bloc.dart';
import 'package:mcq/models/bloc/user_bloc/user_bloc_event.dart';
import 'package:mcq/models/bloc/user_bloc/user_bloc_state.dart';

class UserBloc extends ClosableBloc<UserBlocEvent, UserBlocState> {
  UserBloc({UserBlocState? initialState}) : super(initialState ?? UserIdle()) {
    on<UserEdit>((event, emit) async {
      try {
        emit(UserLoaded(event.user));
      } catch (e) {
        emit(UserLoadingError(reason: e.toString()));
      }
    });
  }
}
