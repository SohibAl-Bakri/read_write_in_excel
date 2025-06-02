import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class SettingView extends StatelessWidget {
  SettingView({super.key});

  final SettingController settingsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(
      builder: (controller) {
        return Scaffold(
          appBar: MainAppBar(title: localizations.settings, canBack: true),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    physics: const ClampingScrollPhysics(),
                    children: [
                      SettingItem(
                        title: localizations.changeLanguage,
                        leading: Icon(
                          Icons.language_rounded,
                          color: customTheme.blackText,
                          size: ConstantsManager.iconSize,
                        ),
                        onTap: () {
                          Components().bottomSheet(
                            context: context,
                            child: Column(
                              children: [
                                RadioListTile.adaptive(
                                  value: ConstantsManager.arabicLangValue,
                                  groupValue: controller.currentLanguage,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  secondary: SvgPicture.asset(
                                    IconsManager.arabicLanguageSvg,
                                    width: 24.0,
                                    height: 24.0,
                                    colorFilter: ColorFilter.mode(
                                      theme.colorScheme.primary,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  title: ScaleText(
                                    localizations.arabic,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  onChanged: (String? value) {
                                    controller.changeLanguage(value!);
                                  },
                                ),
                                RadioListTile.adaptive(
                                  value: ConstantsManager.englishLangValue,
                                  groupValue: controller.currentLanguage,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  secondary: SvgPicture.asset(
                                    IconsManager.englishLanguageSvg,
                                    width: 24.0,
                                    height: 24.0,
                                    colorFilter: ColorFilter.mode(
                                      theme.colorScheme.primary,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  title: ScaleText(
                                    localizations.english,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  onChanged: (String? value) {
                                    controller.changeLanguage(value!);
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SettingDivider(),
                      SettingItem(
                        title: localizations.changeTheme,
                        leading: Icon(
                          Icons.color_lens_outlined,
                          color: customTheme.blackText,
                          size: ConstantsManager.iconSize,
                        ),
                        onTap: () {
                          Components().bottomSheet(
                            context: context,
                            child: Column(
                              children: [
                                RadioListTile.adaptive(
                                  value: ThemeMode.system,
                                  groupValue: controller.currentTheme,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  secondary: Icon(
                                    Icons.auto_mode_outlined,
                                    color: theme.colorScheme.primary,
                                    size: ConstantsManager.iconSize,
                                  ),
                                  title: ScaleText(
                                    localizations.auto,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  onChanged: (ThemeMode? value) {
                                    controller.changeTheme(value!, context);
                                  },
                                ),
                                RadioListTile.adaptive(
                                  value: ThemeMode.light,
                                  groupValue: controller.currentTheme,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  secondary: Icon(
                                    Icons.light_mode_outlined,
                                    color: theme.colorScheme.primary,
                                    size: ConstantsManager.iconSize,
                                  ),
                                  title: ScaleText(
                                    localizations.light,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  onChanged: (ThemeMode? value) {
                                    controller.changeTheme(value!, context);
                                  },
                                ),
                                RadioListTile.adaptive(
                                  value: ThemeMode.dark,
                                  groupValue: controller.currentTheme,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  secondary: Icon(
                                    Icons.dark_mode_outlined,
                                    color: theme.colorScheme.primary,
                                    size: ConstantsManager.iconSize,
                                  ),
                                  title: ScaleText(
                                    localizations.dark,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  onChanged: (ThemeMode? value) {
                                    controller.changeTheme(value!, context);
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SettingDivider(),
                      // SwitchItem(
                      //   value: settingController.isNotificationsOn,
                      //   title: localizations.notifications,
                      //   leading: Icon(
                      //     Icons.notifications_none_rounded,
                      //     color: customTheme.blackText,
                      //   ),
                      //   onChanged: (bool? value) {
                      //     settingController.changeIsNotificationsOn(value!);
                      //   },
                      // ),
                    ],
                  ),
                ),
                const SizedBox(height: 32.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                  child: MainButton(
                    onPressed: () {
                      Get.toNamed(Routes.deleteAccountRoute);
                    },
                    backgroundColor: customTheme.filled,
                    titleWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.highlight_remove_sharp,
                          color: customTheme.error,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ScaleText(
                            localizations.deleteMyAccount,
                            style: theme.textTheme.titleMedium!.copyWith(
                              color: customTheme.error,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
