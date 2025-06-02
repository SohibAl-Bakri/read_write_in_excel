import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class AuthFake extends AuthRepository {
  @override
  Future<UserModel> login() async {
    return UserModel(id: 1, fullName: 'Name', email: 'email@gmail.com');
  }
}
