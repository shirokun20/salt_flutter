import 'package:get/get.dart';
import 'package:salt_test/features/auth/presentation/register/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
  }
}