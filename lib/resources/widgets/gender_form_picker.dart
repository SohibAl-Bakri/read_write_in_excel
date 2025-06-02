import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class GenderFormPicker extends StatelessWidget {
  GenderFormPicker({
    super.key,
    this.controller,
    this.label,
    this.prefixIcon,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    required this.selectedGender,
    this.onSelect,
  });

  final TextEditingController? controller;
  final String? label;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final void Function(String?)? onChanged;
  final void Function(String?)? onFieldSubmitted;

  /// 1: Male, 2: Female
  final int? selectedGender;
  final void Function(int?)? onSelect;

  final FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomTextField(
          label: localizations.gender,
          controller: controller,
          focusNode: focusNode,
          validator: validator,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          enabled: false,
          readOnly: true,
          prefixIcon: Icon(
            Icons.wc_rounded,
            color: theme.colorScheme.primary,
            size: ConstantsManager.iconSize,
          ),
        ),
        Align(
          alignment: AlignmentDirectional.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _GenderTypeButton(
                value: ConstantsManager.genderMaleValue,
                isSelect: selectedGender == null ? false : true,
                icon: Icons.male_rounded,
                color:
                    selectedGender == null
                        ? customTheme.grey
                        : selectedGender == ConstantsManager.genderMaleValue
                        ? theme.colorScheme.primary
                        : customTheme.greyIcon,
                text: localizations.male,
                onTap: (int? value) {
                  if (onSelect == null) return;
                  onSelect!(ConstantsManager.genderMaleValue);
                },
              ),
              const SizedBox(width: 8.0),
              _GenderTypeButton(
                value: ConstantsManager.genderFemaleValue,
                isSelect: selectedGender == null ? false : true,
                icon: Icons.female_rounded,
                color:
                    selectedGender == null
                        ? customTheme.grey
                        : selectedGender == ConstantsManager.genderFemaleValue
                        ? theme.colorScheme.primary
                        : customTheme.greyIcon,
                text: localizations.female,
                onTap: (int? value) {
                  if (onSelect == null) return;
                  onSelect!(ConstantsManager.genderFemaleValue);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _GenderTypeButton extends StatelessWidget {
  const _GenderTypeButton({
    required this.value,
    required this.text,
    required this.onTap,
    required this.color,
    required this.icon,
    required this.isSelect,
  });

  final int value;
  final String text;
  final void Function(int?)? onTap;
  final Color color;
  final IconData icon;
  final bool isSelect;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () {
          onTap!(value);
        },
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: color, width: isSelect ? 1.0 : 0.1),
          ),
          child: Row(
            children: [
              Text(
                text,
                style: theme.textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.normal,
                  color: color,
                ),
              ),
              const SizedBox(width: 2.0),
              Icon(icon, color: color, size: ConstantsManager.iconSize),
            ],
          ),
        ),
      ),
    );
  }
}
