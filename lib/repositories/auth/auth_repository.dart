import 'package:royal_soft_task/resources/helpers/all_imports.dart';

abstract class AuthRepository {
  Future<UserModel> login();
}
