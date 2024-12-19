import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../Utils/enums.dart';
import '../../../repository/auth/login_repository.dart';
part 'login_event.dart';
part 'login_state.dart';
// part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginRepository loginRepository = LoginRepository();
  LoginBloc() : super(LoginState()) {
    on<EmailChange>(_emailChange);
    on<PasswordChange>(_passwordChange);
    on<LoginButtonEvent>(_loginapi);
  }

  void _emailChange(EmailChange event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        email: event.email,
      ),
    );
  }

  void _passwordChange(PasswordChange event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        password: event.password,
      ),
    );
  }

  void _loginapi(LoginButtonEvent event, Emitter<LoginState> emit) async {
    Map<String, dynamic> data = {
      'email': state.email,
      'password': state.password,
    };
    emit(
      state.copyWith(
        postApiStatus: PostApiStatus.loading,
      ),
    );
    await loginRepository.loginApi(data).then((value) {
      emit(
        state.copyWith(
          postApiStatus: PostApiStatus.success,
          message: value.token,
        ),
      );
    }).onError((error, stackTrace) {
      emit(
        state.copyWith(
            message: error.toString(), postApiStatus: PostApiStatus.error),
      );
    });
  }
}
