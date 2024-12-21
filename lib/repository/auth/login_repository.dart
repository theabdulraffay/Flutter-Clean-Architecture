import 'package:clean_architecture/Models/Users/user_model.dart';

abstract class LoginRepository {
  Future<UserModel> loginApi(dynamic data);
}
