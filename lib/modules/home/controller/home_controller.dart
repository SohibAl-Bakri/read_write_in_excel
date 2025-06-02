import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class HomeController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  late List<List<String>> rows;
  final columns = ['ID', 'Item', 'Barcode'];

  @override
  void onInit() async {
    super.onInit();
    rows = ExcelService.instance.rows;
  }

  void updateRow() {
    rows = ExcelService.instance.rows;
    update();
  }
}
