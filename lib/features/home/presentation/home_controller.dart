import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:salt_test/components/config/app_route.dart';
import 'package:salt_test/components/util/state.dart';
import 'package:salt_test/components/util/storage_util.dart';
import 'package:salt_test/features/home/model/user_request_model.dart';
import 'package:salt_test/features/home/presentation/home_state.dart';
import 'package:salt_test/features/home/repository/home_repository.dart';

class HomeController extends GetxController {
  final StorageUtil _storageUtil;
  final HomeRepository _repository;
  final Logger _logger = Logger();
  //
  String token = "";
  HomeState state = HomeIdle();
  //
  HomeController(this._storageUtil, this._repository);

  @override
  void onInit() async {
    final data = await _storageUtil.getToken();
    token = "$data";
    update();
    onGetUsers();
    super.onInit();
  }

  void onGetUsers() {
    state = HomeLoading();
    update();
    _repository.loadUsers(
      dataReq: UserRequestModel(
        page: 2,
      ),
      response: ResponseHandler(
        onSuccess: (value) {
          state = HomeLoadSuccess(value!);
        },
        onFailed: (e, text) {
          final String errorString = e.response!.data!;
          _logger.e(errorString);
          state = HomeError();
        },
        onDone: () => update(),
      ),
    );
  }

  void onLogoutClicked() async {
    await _storageUtil.removeAll();
    Get.offNamedUntil(AppRoute.loginScreen, (route) => false);
  }
}
