import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class FollowUsView extends GetView<FollowUsController> {
  const FollowUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: localizations.followUs,
        canBack: true,
        showBottomLine: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 64.0),
                      width: Get.width,
                      height: Get.height * 0.15,
                      decoration: const BoxDecoration(
                        // color: customTheme.grey,
                        image: DecorationImage(
                          image: AssetImage(IconsManager.appIcon),
                          fit: BoxFit.fill,
                        ),
                      ),
                      // child: Image.asset(ImagesManager.snLogo),
                    ),
                    const SizedBox(height: 16.0),
                    Center(
                      child: ScaleText(
                        'aboutText',
                        overflow: TextOverflow.visible,
                        style: theme.textTheme.titleLarge!.copyWith(
                          color: customTheme.blackText,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32.0),
                    AboutDividerText(title: localizations.contactUs),
                    ListTile(
                      title: Row(
                        children: [
                          ScaleText(
                            ConstantsManager.contactPhoneNumber,
                            textDirection: TextDirection.ltr,
                            style: theme.textTheme.titleMedium!.copyWith(
                              color: customTheme.linkText,
                            ),
                          ),
                        ],
                      ),
                      leading: Icon(
                        Icons.phone_android_rounded,
                        color:
                            Components().isDark()
                                ? customTheme.white.withValues(alpha: 0.9)
                                : customTheme.black.withValues(alpha: 0.9),
                        size: ConstantsManager.iconSize,
                      ),
                      onTap: () {
                        controller.openUrl(
                          url: ConstantsManager.contactPhoneNumber,
                          isPhone: true,
                        );
                      },
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          ScaleText(
                            ConstantsManager.contactEmail,
                            style: theme.textTheme.titleMedium!.copyWith(
                              color: customTheme.linkText,
                              decoration: TextDecoration.underline,
                              decorationColor: customTheme.linkText,
                            ),
                          ),
                        ],
                      ),
                      leading: Icon(
                        FontAwesomeIcons.envelope,
                        color:
                            Components().isDark()
                                ? customTheme.white.withValues(alpha: 0.9)
                                : customTheme.black.withValues(alpha: 0.9),
                        size: ConstantsManager.iconSize,
                      ),
                      // leading: SvgPicture.asset(
                      //   IconsManager.emailSvg,
                      //   width: 30.0,
                      //   height: 30.0,
                      //   colorFilter: ColorFilter.mode(
                      //     Components().isDark()
                      //         ? customTheme.white.withOpacity(0.9)
                      //         : customTheme.black.withOpacity(0.9),
                      //     BlendMode.srcIn,
                      //   ),
                      // ),
                      onTap: () {
                        controller.openUrl(
                          url: ConstantsManager.contactEmail,
                          isEmail: true,
                        );
                      },
                    ),
                    const SizedBox(height: 16.0),
                    AboutDividerText(title: localizations.followUs),
                    const SizedBox(height: 8.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialMediaButton(
                          icon: FontAwesomeIcons.facebook,
                          url: ConstantsManager.facebookUrl,
                        ),
                        SocialMediaButton(
                          icon: FontAwesomeIcons.instagram,
                          url: ConstantsManager.instagramUrl,
                        ),
                        SocialMediaButton(
                          icon: FontAwesomeIcons.whatsapp,
                          url: ConstantsManager.whatsappUrl,
                        ),
                        SocialMediaButton(
                          icon: FontAwesomeIcons.x,
                          url: ConstantsManager.xUrl,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ScaleText(
                  localizations.poweredBySolutionsNow,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.visible,
                  style: theme.textTheme.titleMedium,
                ),
                ScaleText(
                  '${localizations.version}: ${packageInfo.version}',
                  isFromDialog: true,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ],
        ),
      ),
      // body: CustomScrollView(
      //   physics: const ClampingScrollPhysics(),
      //   slivers: [
      //     SliverPadding(
      //       padding: const EdgeInsets.all(16.0),
      //       sliver: SliverList.list(
      //         addAutomaticKeepAlives: false,
      //         addRepaintBoundaries: false,
      //         addSemanticIndexes: false,
      //         children: [
      //           Container(
      //             padding: const EdgeInsets.symmetric(
      //               horizontal: 64.0,
      //             ),
      //             width: Get.width,
      //             // height: Get.height * 0.15,
      //             child: Image.asset(IconsManager.appIcon),
      //           ),
      //           const SizedBox(height: 16.0),
      //           Center(
      //             child: ScaleText(
      //               'aboutText',
      //               overflow: TextOverflow.visible,
      //               style: theme.textTheme.titleLarge!
      //                   .copyWith(color: customTheme.blackText),
      //             ),
      //           ),
      //           const SizedBox(height: 32.0),
      //           AboutDividerText(
      //             title: localizations.contactUs,
      //           ),
      //           ListTile(
      //             title: Row(
      //               children: [
      //                 ScaleText(
      //                   ConstantsManager.contactPhoneNumber,
      //                   textAlign: TextAlign.start,
      //                   textDirection: TextDirection.ltr,
      //                   style: theme.textTheme.titleMedium!.copyWith(
      //                     color: customTheme.linkText,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             leading: SvgPicture.asset(
      //               IconsManager.phoneSvg,
      //               width: 30.0,
      //               height: 30.0,
      //             ),
      //             onTap: () {
      //               controller.openUrl(
      //                 url: ConstantsManager.contactPhoneNumber,
      //                 isPhone: true,
      //               );
      //             },
      //           ),
      //           ListTile(
      //             title: Row(
      //               children: [
      //                 ScaleText(
      //                   ConstantsManager.contactEmail,
      //                   textAlign: TextAlign.start,
      //                   style: theme.textTheme.titleMedium!.copyWith(
      //                     color: customTheme.linkText,
      //                     decoration: TextDecoration.underline,
      //                     decorationColor: customTheme.linkText,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             leading: SvgPicture.asset(
      //               IconsManager.emailSvg,
      //               width: 30.0,
      //               height: 30.0,
      //             ),
      //             onTap: () {
      //               controller.openUrl(
      //                 url: ConstantsManager.contactEmail,
      //                 isEmail: true,
      //               );
      //             },
      //           ),
      //           const SizedBox(height: 16.0),
      //           AboutDividerText(
      //             title: localizations.followUs,
      //           ),
      //           const SizedBox(height: 8.0),
      //           const Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               SocialMediaButton(
      //                 svgIcon: IconsManager.facebookSvg,
      //                 url: ConstantsManager.facebookUrl,
      //               ),
      //               SocialMediaButton(
      //                 svgIcon: IconsManager.instagramSvg,
      //                 url: ConstantsManager.instagramUrl,
      //               ),
      //               SocialMediaButton(
      //                 svgIcon: IconsManager.whatsappSvg,
      //                 url: ConstantsManager.whatsappUrl,
      //               ),
      //               SocialMediaButton(
      //                 svgIcon: IconsManager.xSvg,
      //                 url: ConstantsManager.xUrl,
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //     SliverPadding(
      //       padding: const EdgeInsets.symmetric(horizontal: 16.0),
      //       sliver: SliverFillRemaining(
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             ScaleText(
      //               localizations.poweredBySolutionsNow,
      //               textAlign: TextAlign.center,
      //               overflow: TextOverflow.visible,
      //               style: theme.textTheme.titleMedium,
      //             ),
      //             ScaleText(
      //               '${localizations.version}: ${packageInfo.version}',
      //               isFromDialog: true,
      //               style: theme.textTheme.titleMedium,
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
