import 'package:clean_architecture/Models/Users/user_model.dart';
import 'package:clean_architecture/repository/auth/login_repository.dart';

class LoginMockApiRepository implements LoginRepository {
  @override
  Future<UserModel> loginApi(dynamic data) async {
    await Future.delayed(const Duration(seconds: 2));
    final response = {'token': '1232313'};
    return UserModel.fromJson(response);
  }
}
