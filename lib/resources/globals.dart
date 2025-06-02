import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class Globals {
  Globals._();

  static final Globals _instance = Globals._();

  factory Globals() => _instance;

  UserModel? userModel;
  void changeUserModel(UserModel? value) {
    userModel = value;
  }
}
