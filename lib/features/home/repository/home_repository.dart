// import 'package:logger/logger.dart';
import 'package:salt_test/components/base/base_repository.dart';
import 'package:salt_test/components/util/state.dart';
import 'package:salt_test/features/home/model/user_model.dart';
import 'package:salt_test/features/home/model/user_request_model.dart';
import 'package:salt_test/features/home/model/user_response_model.dart';
import 'package:salt_test/features/home/repository/home_datasource.dart';

class HomeRepository extends BaseRepository {
  final HomeDataSource _dataSource;
  // final _logger = Logger();
  HomeRepository(this._dataSource);

  void loadUsers({
    required UserRequestModel? dataReq,
    required ResponseHandler<List<UserModel>?> response,
  }) async {
    try {
      final data =
          await _dataSource.apiGetUsers(dataReq!).then(mapToData).then((value) {
        final response = UserResponseModel.fromJson(value);
        return response.data;
      });
      response.onSuccess.call(data);
      response.onDone.call();
    } catch (e, _) {
      response.onFailed(e, e.toString());
      response.onDone.call();
    }
  }
}
