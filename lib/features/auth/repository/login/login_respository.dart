// import 'package:logger/logger.dart';
import 'package:salt_test/components/base/base_repository.dart';
import 'package:salt_test/components/util/state.dart';
import 'package:salt_test/features/auth/model/login/login_request_model.dart';
import 'package:salt_test/features/auth/model/login/login_response_model.dart';
import 'package:salt_test/features/auth/repository/login/login_datasource.dart';

class LoginRepository extends BaseRepository {
  final LoginDataSource _dataSource;
  // final _logger = Logger();
  LoginRepository(this._dataSource);

  void loadLogin({
    required LoginRequestModel? dataReq,
    required ResponseHandler<LoginResponseModel?> response,
  }) async {
    try {
      final data =
          await _dataSource.apiLogin(dataReq!).then(mapToData).then((value) {
        final response = LoginResponseModel.fromJson(value);
        return response;
      });
      response.onSuccess.call(data);
      response.onDone.call();
    } catch (e, _) {
      // _logger.e(e);
      // _logger.i(trace);
      response.onFailed(e, e.toString());
      response.onDone.call();
    }
  }
}
