part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({
    this.email = '',
    this.password = '',
  });
  final String email;
  final String password;

  @override
  List<Object?> get props => [email, password];

  LoginState copyWith({String? email, String? password}) => LoginState(
        email: email ?? this.email,
        password: password ?? this.password,
      );
}
