import 'package:clean_architecture/Data/Network/network_services_api.dart';
import 'package:clean_architecture/Models/Users/user_model.dart';
import 'package:clean_architecture/config/app_urls.dart';

class LoginRepository {
  final api = NetworkServicesApi();
  Future<UserModel> loginApi(dynamic data) async {
    final response = await api.postApi(
      AppUrls.loginapi,
      data,
    );
    return UserModel.fromJson(response);
  }
}
