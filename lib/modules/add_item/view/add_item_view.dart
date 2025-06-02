import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class AddItemView extends GetView<AddItemController> {
  const AddItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: localizations.addItem),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GetBuilder<AddItemController>(
          builder: (controller) {
            return Form(
              key: controller.formKey,
              child: Column(
                spacing: 16,
                children: [
                  ...List.generate(controller.columns.length, (i) {
                    if (i == 0) {
                      controller.controllersList[i].text =
                          controller.itemId.toString();
                    }
                    controller.update();
                    return CustomTextField(
                      controller: controller.controllersList[i],
                      label: controller.columns[i],

                      readOnly: i == 0,
                      textInputType:
                          i == 1 ? TextInputType.name : TextInputType.number,
                      textInputAction:
                          i == controller.columns.length - 1
                              ? TextInputAction.next
                              : TextInputAction.done,

                      validator:
                          (v) =>
                              v == null || v.isEmpty
                                  ? 'Enter ${controller.columns[i]}'
                                  : null,
                    );
                  }),
                  const SizedBox(height: 20),
                  MainButton(
                    onPressed: controller.saveItem,
                    title: localizations.saveItem,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
