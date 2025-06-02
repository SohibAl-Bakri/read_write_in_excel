import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class DateFormPicker extends StatelessWidget {
  const DateFormPicker({
    super.key,
    this.controller,
    this.label,
    this.prefixIcon,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    required this.onSelected,
    this.border,
    this.enabledBorder,
  });

  final TextEditingController? controller;
  final String? label;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final void Function(String?)? onChanged;
  final void Function(String?)? onFieldSubmitted;
  final void Function(DateTime dateTime) onSelected;
  final InputBorder? border;
  final InputBorder? enabledBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        FocusManager.instance.primaryFocus?.unfocus();
        final DateTime? dateTime = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now().subtract(const Duration(days: 365 * 100)),
          lastDate: DateTime.now(),
        );
        if (dateTime == null) return;
        onSelected(dateTime);
      },
      child: CustomTextField(
        label: localizations.dateOfBirth,
        hint: 'DD/MM/YYYY',
        controller: controller,
        validator: validator,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        readOnly: true,
        enabled: false,
        prefixIcon: Icon(
          Icons.calendar_month_outlined,
          color: theme.colorScheme.primary,
          size: ConstantsManager.iconSize,
        ),
      ),
    );
  }
}
