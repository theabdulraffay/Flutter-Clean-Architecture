import 'package:clean_architecture/Utils/enums.dart';
import 'package:clean_architecture/bloc/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formkey;
  const LoginButton({super.key, required this.formkey});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.postApiStatus == PostApiStatus.error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message.toString()),
              backgroundColor: Colors.red,
            ),
          );
        }

        if (state.postApiStatus == PostApiStatus.success) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.message.toString(),
              ),
              backgroundColor: Colors.green,
            ),
          );
        }
        if (state.postApiStatus == PostApiStatus.loading) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Submitting...',
              ),
              backgroundColor: Colors.blue,
            ),
          );
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (curr, orev) => false,
        builder: (context, state) {
          return ElevatedButton(
            child: Text('Login'),
            onPressed: () {
              if (formkey.currentState!.validate()) {
                context.read<LoginBloc>().add(LoginButtonEvent());
              }
            },
          );
        },
      ),
    );
  }
}
