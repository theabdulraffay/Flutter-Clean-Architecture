part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({
    this.email = '',
    this.password = '',
    this.message = '',
    this.postApiStatus = PostApiStatus.initial,
  });
  final String email;
  final String password;
  final String message;
  final PostApiStatus postApiStatus;

  @override
  List<Object?> get props => [email, password, message, postApiStatus];

  LoginState copyWith(
          {String? email,
          String? password,
          PostApiStatus? postApiStatus,
          String? message}) =>
      LoginState(
        email: email ?? this.email,
        password: password ?? this.password,
        postApiStatus: postApiStatus ?? this.postApiStatus,
        message: message ?? this.message,
      );
}
