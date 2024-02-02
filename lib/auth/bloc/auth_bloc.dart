import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      on<AuthInitialEvent>(authInitial);
    });
  }

  FutureOr<void> authInitial(AuthInitialEvent event, Emitter<AuthState> emit) {
    emit(AuthInitial());
  }
}
