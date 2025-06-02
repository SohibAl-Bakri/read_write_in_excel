import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class ResetPasswordController extends GetxController {
  // final AuthRepository authRepository = AuthApi();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late TextEditingController usernameController;
  late TextEditingController codeController;
  late TextEditingController newPasswordController;
  late FocusNode newPasswordNode;
  late int userId;

  @override
  void onInit() {
    // userId = Get.arguments['userId'];
    usernameController = TextEditingController();
    codeController = TextEditingController();
    newPasswordController = TextEditingController();
    newPasswordNode = FocusNode();

    super.onInit();
  }

  @override
  void onClose() {
    usernameController.dispose();
    codeController.dispose();
    newPasswordController.dispose();
    newPasswordNode.dispose();
    super.onClose();
  }

  Future<void> resetPassword(BuildContext context) async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (!formKey.currentState!.validate()) return;
    try {
      Get.back();
      Components().snackBar(
        message: localizations.passwordChangedSuccessfully,
        snackBarStatus: SnackBarStatusEnum.success,
      );
    } catch (e) {
      Components().dismissLoading();
      ExceptionManager().showException(e.toString());
    }
  }

  bool showPassword = true;
  bool showConfirmPassword = true;
  void changeShowPassword() {
    showPassword = !showPassword;
    update();
  }

  void changeConfirmShowPassword() {
    showConfirmPassword = !showConfirmPassword;
    update();
  }
}
