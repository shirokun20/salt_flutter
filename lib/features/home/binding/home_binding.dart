import 'package:get/get.dart';
import 'package:salt_test/components/util/network.dart';
import 'package:salt_test/features/home/presentation/home_controller.dart';
import 'package:salt_test/features/home/repository/home_datasource.dart';
import 'package:salt_test/features/home/repository/home_repository.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(Get.find(), Get.find()), fenix: true);
    Get.lazyPut(() => HomeDataSource(Network.dioClient()));
    Get.lazyPut(() => HomeRepository(Get.find()));
  }
}