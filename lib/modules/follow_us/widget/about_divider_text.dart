import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class AboutDividerText extends StatelessWidget {
  const AboutDividerText({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ScaleText(title, style: theme.textTheme.titleLarge),
        const SizedBox(width: 4.0),
        Expanded(
          child: Divider(
            color: theme.colorScheme.primary.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }
}
