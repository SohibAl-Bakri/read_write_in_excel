import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class UpgradeDialog extends StatelessWidget {
  const UpgradeDialog({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return UpgradeAlert(
      upgrader: Upgrader(
        messages: UpgraderMessages(code: Get.locale!.languageCode),
        durationUntilAlertAgain: const Duration(minutes: 1),
      ),
      shouldPopScope: () => false,
      showIgnore: false,
      showLater: false,
      dialogStyle:
          Platform.isIOS
              ? UpgradeDialogStyle.cupertino
              : UpgradeDialogStyle.material,
      child: child,
    );
  }
}
