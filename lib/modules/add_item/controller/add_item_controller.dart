import 'package:excel/excel.dart';
import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class AddItemController extends GetxController {
  late final List<String> columns;
  late final int itemId;

  final formKey = GlobalKey<FormState>();
  late List<TextEditingController> controllersList;

  @override
  void onInit() {
    super.onInit();
    columns = Get.arguments['columns'];
    itemId = Get.arguments['itemId'] ?? 1;
    controllersList = List.generate(
      columns.length,
      (_) => TextEditingController(),
    );
  }

  @override
  void dispose() {
    for (final controller in controllersList) {
      controller.dispose();
    }
    super.dispose();
  }

  Future<void> saveItem() async {
    if (formKey.currentState!.validate()) {
      await ExcelService.instance.addRow(
        controllersList.map((c) => TextCellValue(c.text)).toList(),
      );
      Get.back();
      Components().snackBar(
        message: localizations.itemAdedSuccessfully,
        snackBarStatus: SnackBarStatusEnum.success,
        // snackBarPosition: SnackBarPositionEnum.top,
      );
    }
  }
}
