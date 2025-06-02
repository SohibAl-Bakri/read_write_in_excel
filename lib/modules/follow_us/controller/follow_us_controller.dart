import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class FollowUsController extends GetxController {
  Future<void> openUrl({
    required String url,
    bool isPhone = false,
    bool isEmail = false,
  }) async {
    try {
      if (isPhone) {
        final Uri uri = Uri.parse('tel:$url');
        await launchUrl(uri, mode: LaunchMode.externalApplication);
        return;
      }
      if (isEmail) {
        final Uri uri = Uri.parse('mailto:$url');
        await launchUrl(uri, mode: LaunchMode.externalApplication);
        return;
      }
      final Uri uri = Uri.parse(url);
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } catch (_) {
      ExceptionManager.timedOutException;
    }
  }
}
