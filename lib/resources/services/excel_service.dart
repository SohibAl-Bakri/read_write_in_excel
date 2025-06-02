import 'package:excel/excel.dart';
import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class ExcelService {
  ExcelService._internal();
  static final ExcelService instance = ExcelService._internal();

  static const String _assetPath = 'assets/files/items.xlsx';
  static const String _localFileName = 'items.xlsx';

  late File _file;
  late Excel _excel;

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _file = File('${dir.path}/$_localFileName');

    // print('Excel file path: ${_file.path}');

    // Copy the asset the first time the app runs.
    if (!await _file.exists()) {
      final bytes = await rootBundle.load(_assetPath);
      await _file.writeAsBytes(bytes.buffer.asUint8List());
    }
    _excel = Excel.decodeBytes(await _file.readAsBytes());
  }

  /// Returns every row (excluding header) as a List of List.
  List<List<String>> get rows {
    final Sheet sheet = _excel.tables[_excel.tables.keys.first]!;
    final dataRows = sheet.rows.skip(1); // skip header
    return dataRows
        .map((row) => row.map((d) => d?.value.toString() ?? '').toList())
        .toList();
  }

  /// Adds a new row, saves the workbook, and reloads it in‑memory.
  Future<void> addRow(List<CellValue> values) async {
    final Sheet sheet = _excel.tables[_excel.tables.keys.first]!;
    sheet.appendRow(values);
    final bytes = _excel.encode() as List<int>;
    await _file.writeAsBytes(bytes, flush: true);

    // Reload to update in‑memory instance.
    _excel = Excel.decodeBytes(await _file.readAsBytes());
  }
}
