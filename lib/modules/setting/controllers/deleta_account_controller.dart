import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class DeleteAccountController extends GetxController {
  late GlobalKey<FormState> deActivateAccountKey;
  late TextEditingController deleteAccountPasswordController;

  @override
  void onInit() {
    deActivateAccountKey = GlobalKey<FormState>();
    deleteAccountPasswordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    deleteAccountPasswordController.dispose();
    super.onClose();
  }

  bool obscureDeleteAccountPassword = true;
  void changeObscureDeleteAccountPassword() {
    obscureDeleteAccountPassword = !obscureDeleteAccountPassword;
    update();
  }

  Future<void> deActivateAccount(String password) async {
    // if (!deActivateAccountKey.currentState!.validate()) return;
    FocusManager.instance.primaryFocus?.unfocus();
    try {
      // Components().showLoading();
      // await userRepository.deActivateAccount(password);
      // Components().dismissLoading();
      // Get.toNamed(
      //   Routes.splashRoute,
      // );
      Get.back();
      Components().snackBar(
        message: localizations.accountDeletedSuccessfully,
        snackBarStatus: SnackBarStatusEnum.success,
      );
    } catch (_) {
      Components().dismissLoading();
      ExceptionManager().showException();
    }
  }
}
