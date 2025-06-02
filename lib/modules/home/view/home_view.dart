import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          key: controller.scaffoldKey,
          appBar: MainAppBar(
            title: localizations.home,
            leading: IconButton(
              onPressed: () {
                controller.scaffoldKey.currentState!.openDrawer();
              },
              icon: Skeleton.shade(
                child: SvgPicture.asset(
                  IconsManager.menuSvg,
                  width: 24.0,
                  height: 24.0,
                  colorFilter: ColorFilter.mode(
                    Components().isDark()
                        ? customTheme.white.withValues(alpha: 0.9)
                        : customTheme.black.withValues(alpha: 0.9),
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Get.toNamed(Routes.profileRoute);
                },
                icon: Skeleton.shade(
                  child: SvgPicture.asset(
                    IconsManager.profileSvg,
                    width: 30.0,
                    height: 30.0,
                    colorFilter: ColorFilter.mode(
                      Components().isDark()
                          ? customTheme.white.withValues(alpha: 0.9)
                          : customTheme.black.withValues(alpha: 0.9),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ],
          ),

          drawer: const DrawerHome(),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: customTheme.lightGrey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: DataTable(
                              showBottomBorder: true,
                              checkboxHorizontalMargin: 0,
                              dividerThickness: 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              columns: controller.columns
                                  .map(
                                    (c) => DataColumn(
                                      label: ScaleText(
                                        c,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.titleMedium,
                                        isFromDialog: true,
                                      ),
                                    ),
                                  )
                                  .toList(),
                              rows: controller.rows
                                  .map(
                                    (row) => DataRow(
                                      cells: row
                                          .map(
                                            (cell) => DataCell(
                                              ScaleText(
                                                cell,
                                                textAlign: TextAlign.center,
                                                style:
                                                    theme.textTheme.bodyLarge,
                                                isFromDialog: true,
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ScaleText(
                      '${localizations.totalItems}: ${controller.rows.length}',
                      style: theme.textTheme.bodyLarge,
                    ),
                  ],
                ),
                Positioned(
                  top: Get.height * 0.81,
                  right: Components().isRTL() ? null : 25,
                  left: !Components().isRTL() ? null : 25,
                  child: FloatingActionButton(
                    onPressed: () {
                      Get.toNamed(
                        Routes.addItemRoute,
                        arguments: {
                          'columns': controller.columns,
                          'itemId': controller.rows.length + 1,
                        },
                      )!.then((value) {
                        controller.updateRow();
                      });
                    },
                    child: const Icon(Icons.add),
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
