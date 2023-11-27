import 'package:salt_test/components/base/base_dio_datasource.dart';
import 'package:salt_test/components/ext/dio_ext.dart';
import 'package:salt_test/features/auth/model/login/login_request_model.dart';

class LoginDataSource extends BaseDioDataSource {
  LoginDataSource(super.client);

  Future<String> apiLogin(LoginRequestModel model) {
    String path = '/login';
    return post<String>(path, data: model.toJson()).load();
  }
}
