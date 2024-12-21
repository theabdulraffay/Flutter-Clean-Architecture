import 'package:clean_architecture/Utils/enums.dart';
import 'package:clean_architecture/bloc/login/bloc/login_bloc.dart';
import 'package:clean_architecture/config/routes/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Utils/flush_bar_helper.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formkey;
  const LoginButton({super.key, required this.formkey});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (curr, prev) => curr.postApiStatus != prev.postApiStatus,
      listener: (context, state) {
        if (state.postApiStatus == PostApiStatus.error) {
          FlushBarHelper.showErrorFlushBar(
            context,
            state.message.toString(),
          );
        }

        if (state.postApiStatus == PostApiStatus.success) {
          Navigator.pushNamed(context, RoutesName.homeScreen);
          FlushBarHelper.showSuccessFlushBar(
            context,
            state.message.toString(),
          );
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (curr, orev) => curr.postApiStatus != orev.postApiStatus,
        builder: (context, state) {
          return ElevatedButton(
            child: state.postApiStatus == PostApiStatus.loading
                ? CupertinoActivityIndicator()
                : Text('Login'),
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
