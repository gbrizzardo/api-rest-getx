import 'package:application/home/http/http_controller.dart';
import 'package:application/home/http/repository/user_http_repository.dart';
import 'package:application/repository/i_user_repository.dart';
import 'package:get/get.dart';

class HttpBindings implements Bindings {
  @override
  //populate dependencies
  void dependencies() {
    // add instances
    Get.put<IUserRepository>(UserHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
