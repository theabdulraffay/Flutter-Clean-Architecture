part of 'login_bloc.dart';

abstract class LoginEvent implements Equatable {
  @override
  List<Object?> get props => [];
  @override
  bool? get stringify => throw UnimplementedError();
}

class EmailChange extends LoginEvent {
  final String email;
  EmailChange({required this.email});
  @override
  List<Object?> get props => [email];
}

class PasswordChange extends LoginEvent {
  final String password;
  PasswordChange({required this.password});
  @override
  List<Object?> get props => [password];
}

class PasswordUnfocus extends LoginEvent {}

class LoginButtonEvent extends LoginEvent {}
