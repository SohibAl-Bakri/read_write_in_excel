import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
