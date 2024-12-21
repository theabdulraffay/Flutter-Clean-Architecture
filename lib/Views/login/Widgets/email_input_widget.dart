import 'package:clean_architecture/bloc/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Utils/validations.dart';

class EmailInputWidget extends StatelessWidget {
  const EmailInputWidget({super.key, required this.node});
  final FocusNode node;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (cur, prev) => false,
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.emailAddress,
          focusNode: node,
          decoration: InputDecoration(
            hintText: 'Email eh',
            prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            context.read<LoginBloc>().add(
                  EmailChange(email: value),
                );
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Email is required';
            }
            if (!value.contains('@') || !EmailValidator.validate(value)) {
              return 'Invalid email format';
            }
            return null;
          },
        );
      },
    );
  }
}
