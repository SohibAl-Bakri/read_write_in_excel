import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class ResetPasswordView extends StatelessWidget {
  final ResetPasswordController _resetPasswordController = Get.find();

  ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: MainAppBar(title: localizations.resetPassword, canBack: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _resetPasswordController.formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: height * 0.40),
                  child: Image.asset(
                    ImagesManager.forgetPassword,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8.0),
                Center(
                  child: ScaleText(
                    localizations.codeWillExpireInFiveMinutes,
                    overflow: TextOverflow.visible,
                    style: theme.textTheme.titleLarge!.copyWith(
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GetBuilder<ResetPasswordController>(
                    builder: (controller) {
                      return Column(
                        children: [
                          CodePins(
                            controller: controller.codeController,
                            onCompleted: (_) {
                              controller.newPasswordNode.requestFocus();
                            },
                          ),
                          const SizedBox(height: 16.0),
                          CustomTextField(
                            hint: localizations.newPassword,
                            focusNode: controller.newPasswordNode,
                            controller: controller.newPasswordController,
                            textInputAction: TextInputAction.next,

                            // validator: (String? value) {
                            //   return ValidatorsManager.validatePassword(value);
                            // },
                            prefixIcon: Icon(
                              Icons.lock_outline_rounded,
                              color: theme.colorScheme.primary,
                              size: ConstantsManager.iconSize,
                            ),
                            suffixIcon: IconButton(
                              onPressed: controller.changeShowPassword,
                              icon: Icon(
                                controller.showPassword
                                    ? FontAwesomeIcons.eye
                                    : FontAwesomeIcons.eyeSlash,
                                color: customTheme.greyIcon,
                                size: ConstantsManager.iconSize,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          CustomTextField(
                            hint: localizations.confirmPassword,
                            textInputAction: TextInputAction.done,

                            // validator: (String? value) {
                            //   return ValidationsManager.validateConfirmPassword(
                            //     value,
                            //     _resetPasswordController.newPasswordController.text,
                            //   );
                            // },
                            prefixIcon: Icon(
                              Icons.lock_outline_rounded,
                              color: theme.colorScheme.primary,
                              size: ConstantsManager.iconSize,
                            ),
                            suffixIcon: IconButton(
                              onPressed: controller.changeShowPassword,
                              icon: Icon(
                                controller.showConfirmPassword
                                    ? FontAwesomeIcons.eye
                                    : FontAwesomeIcons.eyeSlash,
                                color: customTheme.greyIcon,
                                size: ConstantsManager.iconSize,
                              ),
                            ),
                          ),
                          const SizedBox(height: 32.0),
                          MainButton(
                            title: localizations.send,
                            onPressed: () {
                              _resetPasswordController.resetPassword(context);
                            },
                          ),
                          const SizedBox(height: 8.0),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
