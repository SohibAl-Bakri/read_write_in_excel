import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class ConnectionErrorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConnectionErrorController());
  }
}
