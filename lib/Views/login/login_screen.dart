import 'Widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20,
          children: [
            EmailInputWidget(
              node: emailFocusNode,
            ),
            PasswordInputWidget(
              node: passwordFocusNode,
            ),
            LoginButton(formkey: formkey),
          ],
        ),
      ),
    );
  }
}
