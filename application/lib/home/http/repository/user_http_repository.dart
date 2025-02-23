import 'dart:convert';

import 'package:application/model/user_model.dart';
import 'package:application/repository/i_user_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    final response = await http
        // using mockapi to generate API
        .get(Uri.parse('https://67a91c276e9548e44fc2e5d9.mockapi.io/users'));

    // convert json to dart object -> List<Map<String, dynamic>>
    final List<dynamic> responseMap = jsonDecode(response.body);

    // convert Map to User Model list
    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .toList();
  }
}
