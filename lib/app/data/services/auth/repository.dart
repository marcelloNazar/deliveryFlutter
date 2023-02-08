import 'package:app_delivery/app/data/moldels/user.dart';
import 'package:app_delivery/app/data/moldels/user_login_request.dart';
import 'package:app_delivery/app/data/moldels/user_login_response.dart';
import 'package:app_delivery/app/data/providers/api.dart';

class AuthRepository {
  final Api _api;

  AuthRepository(this._api);

  Future<UserLoginResponseModel> login(
          UserLoginRequestModel userLoginRequest) =>
      _api.login(userLoginRequest);

  Future<UserModel> getUser() => _api.getUser();
}
