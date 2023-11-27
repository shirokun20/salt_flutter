import 'package:salt_test/components/base/base_dio_datasource.dart';
import 'package:salt_test/components/ext/dio_ext.dart';
import 'package:salt_test/features/home/model/user_request_model.dart';

class HomeDataSource extends BaseDioDataSource {
  HomeDataSource(super.client);

  Future<String> apiGetUsers(UserRequestModel model) {
    String path = '/users';
    return get<String>(path, queryParameters: model.toJson()).load();
  }
}
