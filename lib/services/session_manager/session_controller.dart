import 'dart:convert';

import 'package:clean_architecture/Models/Users/user_model.dart';
import 'package:clean_architecture/Views/login/Widgets/widgets.dart';
import 'package:clean_architecture/services/storage/local_storage.dart';

class SessionController {
  static final SessionController _instance = SessionController._internal();
  final LocalStorage _localStorage = LocalStorage();
  UserModel user = UserModel();
  bool? isLogin;
  SessionController._internal() {
    isLogin = false;
  }
  factory SessionController() {
    return _instance;
  }

  Future<void> saveUserInPreference(dynamic user) async {
    await _localStorage.setValue('token', jsonEncode(user));
    _localStorage.setValue('isLogin', 'true');
  }

  Future<void> getUserFromPreference() async {
    try {
      var userData = await _localStorage.readValue('token');
      final isLogin = await _localStorage.readValue('isLogin');
      if (userData.isNotEmpty) {
        SessionController().user = UserModel.fromJson(jsonDecode(userData));
      }
      SessionController().isLogin = isLogin == 'true' ? true : false;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> clearUserFromPreference() async {
    await _localStorage.clearValue('user');
    await _localStorage.clearValue('isLogin');
  }
}
