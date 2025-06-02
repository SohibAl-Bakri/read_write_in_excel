import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class DeletaAccountView extends StatelessWidget {
  const DeletaAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeleteAccountController>(
      builder: (controller) {
        return Scaffold(
          appBar: MainAppBar(title: localizations.deleteAccount, canBack: true),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ScaleText(
                    localizations.areYouSureWantDeleteYourAccount,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleLarge!.copyWith(
                      color: customTheme.blackText,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 64.0),
                    width: Get.width,
                    // height: Get.height * 0.15,
                    child: Image.asset(ImagesManager.deleteAccount),
                  ),
                  const SizedBox(height: 32.0),
                  ScaleText(
                    localizations.deleteAccountNote1,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleLarge!.copyWith(
                      color: customTheme.blackText,
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ScaleText(
                        '* ',
                        overflow: TextOverflow.visible,
                        style: theme.textTheme.titleLarge!.copyWith(
                          color: customTheme.blackText,
                        ),
                      ),
                      Expanded(
                        child: ScaleText(
                          localizations.deleteAccountNote2(
                            localizations.appName,
                          ),
                          overflow: TextOverflow.visible,
                          style: theme.textTheme.titleLarge!.copyWith(
                            color: customTheme.blackText,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ScaleText(
                        '* ',
                        overflow: TextOverflow.visible,
                        style: theme.textTheme.titleLarge!.copyWith(
                          color: customTheme.blackText,
                        ),
                      ),
                      Expanded(
                        child: ScaleText(
                          localizations.deleteAccountNote3,
                          overflow: TextOverflow.visible,
                          style: theme.textTheme.titleLarge!.copyWith(
                            color: customTheme.blackText,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: CustomTextField(
                      controller: controller.deleteAccountPasswordController,
                      label: localizations.password,
                      textInputAction: TextInputAction.done,
                      obscureText: controller.obscureDeleteAccountPassword,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          controller.changeObscureDeleteAccountPassword();
                        },
                        child: Icon(
                          controller.obscureDeleteAccountPassword
                              ? Icons.remove_red_eye_outlined
                              : Icons.visibility_off_outlined,
                          color: customTheme.greyIcon,
                          size: ConstantsManager.iconSize,
                        ),
                      ),
                      validator: ValidatorsManager().validatePassword,
                    ),
                  ),
                  // const SizedBox(height: 32.0),
                  MainButton(
                    title: localizations.deleteMyAccount,
                    backgroundColor: customTheme.error,
                    onPressed: () {
                      controller.deActivateAccount(
                        controller.deleteAccountPasswordController.text,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
