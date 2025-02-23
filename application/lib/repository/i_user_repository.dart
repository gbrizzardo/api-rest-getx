import 'package:application/model/user_model.dart';

abstract class IUserRepository {
  // list get my users
  Future<List<UserModel>> findAllUsers();
}
