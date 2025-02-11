import 'package:action_panel/api/api_service.dart';
import 'package:action_panel/bloc/login_event.dart';
import 'package:action_panel/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  apiService? service;

  LoginBloc() : super(LoginInitial()) {
    on<LoginPerform>((event, emit) async {
      emit(LoginLoading());

      try {
        await service?.login(event.cid, event.userId, event.password);
        emit(LoginSuccess());
      } catch (e) {
        emit(LoginFailure());
      }
    });
  }
}

// import 'package:action_panel/api/api_service.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import 'login_event.dart';
// import 'login_state.dart';
//
// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   final apiService service;
//
//   LoginBloc(this.service) : super(LoginInitial()) {
//     on<LoginPerform>((event, emit) async {
//       emit(LoginLoading());
//
//       try {
//         await service.login(event.cid,event.userId, event.password);
//         emit(LoginSuccess());
//       } catch (e) {
//         emit(LoginFailure());
//       }
//     });
//   }
// }
