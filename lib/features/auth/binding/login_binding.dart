
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:salt_test/components/util/network.dart';
import 'package:salt_test/features/auth/presentation/login/login_controller.dart';
import 'package:salt_test/features/auth/repository/login/login_datasource.dart';
import 'package:salt_test/features/auth/repository/login/login_respository.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(Get.find(), Get.find()), fenix: true);
    Get.lazyPut(() => LoginDataSource(Network.dioClient()));
    Get.lazyPut(() => LoginRepository(Get.find()));
  }
}