import 'package:clean_architecture/bloc/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordInputWidget extends StatelessWidget {
  const PasswordInputWidget({super.key, required this.node});
  final FocusNode node;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => false,
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.text,
          focusNode: node,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Password',
            prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            context.read<LoginBloc>().add(
                  PasswordChange(password: value),
                );
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Password is required';
            }
            return null;
          },
        );
      },
    );
  }
}
