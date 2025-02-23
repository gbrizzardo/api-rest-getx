import 'package:application/repository/i_user_repository.dart';
import 'package:get/get.dart';

class HttpController extends GetxController with StateMixin {
  final IUserRepository _httpRepository;

  HttpController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  void findUsers() async {
    change([], status: RxStatus.loading());
    try {
      final data = await _httpRepository.findAllUsers();
      change(data, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error("Error Users $e"));
    }
  }
}
