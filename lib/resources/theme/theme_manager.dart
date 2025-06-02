import 'package:royal_soft_task/resources/helpers/all_imports.dart';

mixin ThemeManager {
  static ThemeData getLightTheme() {
    const TextStyle titleLarge = TextStyle(
      fontSize: 16.0,
      color: ColorsManager.blackText,
      fontWeight: FontWeight.w700,
    );
    // const TextStyle displaySmall = TextStyle(
    //   fontSize: 17.0,
    //   color: ColorsManager.blackText,
    //   fontWeight: FontWeight.w500,
    // );
    const TextStyle titleMedium = TextStyle(
      fontSize: 14.0,
      color: ColorsManager.blackText,
      fontWeight: FontWeight.w600,
    );
    const TextStyle titleSmall = TextStyle(
      fontSize: 14.0,
      color: ColorsManager.blackText,
      fontWeight: FontWeight.w400,
    );
    const TextStyle bodyLarge = TextStyle(
      fontSize: 12.0,
      color: ColorsManager.blackText,
      fontWeight: FontWeight.w400,
    );
    const TextStyle bodyMedium = TextStyle(
      fontSize: 10.0,
      color: ColorsManager.blackText,
      fontWeight: FontWeight.w400,
    );

    const TextStyle bodySmall = TextStyle(
      fontSize: 8.0,
      color: ColorsManager.blackText,
      fontWeight: FontWeight.w400,
    );
    return ThemeData(
      useMaterial3: true,
      fontFamily: FontsManager.fontFamily,
      fontFamilyFallback: FontsManager.fontFamilyFallback,
      scaffoldBackgroundColor: ColorsManager.background,
      primaryColor: ColorsManager.primary,
      brightness: Brightness.light,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: ColorsManager.primary,
        selectionColor: ColorsManager.primary.withValues(alpha: 0.5),
        selectionHandleColor: ColorsManager.primary,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: ColorsManager.primary,
        secondary: ColorsManager.secondary,
        surface: ColorsManager.background,
        onSurface: ColorsManager.blackText,
        brightness: Brightness.light,
        error: ColorsManager.error,
      ),
      canvasColor: ColorsManager.background,
      cardTheme: const CardThemeData(
        color: ColorsManager.cardOnBackground,
        surfaceTintColor: Colors.transparent,
        elevation: 4.0,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeManager.smallRadius),
          ),
          backgroundColor: ColorsManager.primary,
          textStyle: titleMedium.copyWith(color: ColorsManager.whiteText),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeManager.smallRadius),
          ),
          backgroundColor: ColorsManager.whiteText,
          textStyle: titleMedium,
        ),
      ),
      hintColor: ColorsManager.onFilledText,
      searchBarTheme: SearchBarThemeData(
        backgroundColor: const WidgetStatePropertyAll(ColorsManager.filled),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            side: const BorderSide(
              color: ColorsManager.greyBorder,
              width: SizeManager.smallRadius,
            ),
            borderRadius: BorderRadius.circular(SizeManager.smallRadius),
          ),
        ),
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
        inputDecorationTheme: InputDecorationTheme(
          fillColor: ColorsManager.filled,
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorsManager.greyBorder,
              width: SizeManager.thinBorder,
            ),
            borderRadius: BorderRadius.circular(SizeManager.smallRadius),
          ),
        ),
      ),
      cardColor: ColorsManager.cardOnBackground,
      dividerColor: ColorsManager.divider,
      appBarTheme: const AppBarTheme(
        color: ColorsManager.background,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: ColorsManager.background,
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
          fontFamily: FontsManager.fontFamily,
          fontFamilyFallback: FontsManager.fontFamilyFallback,
        ),
        elevation: 0.0,
        scrolledUnderElevation: 0.0,
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith<Color>((
          Set<WidgetState> states,
        ) {
          if (states.isNotEmpty && states.first == WidgetState.selected) {
            return ColorsManager.primary;
          }
          return ColorsManager.grey;
        }),
      ),
      checkboxTheme: const CheckboxThemeData(
        side: BorderSide(color: ColorsManager.grey),
      ),
      textTheme: const TextTheme(
        // displaySmall: displaySmall,
        titleLarge: titleLarge,
        titleMedium: titleMedium,
        titleSmall: titleSmall,
        bodyLarge: bodyLarge,
        bodyMedium: bodyMedium,
        bodySmall: bodySmall,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          textStyle: bodyMedium,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: const BorderSide(color: ColorsManager.grey),
          textStyle: bodyMedium,
        ),
      ),
      dialogTheme: const DialogThemeData(
        backgroundColor: ColorsManager.background,
        titleTextStyle: titleSmall,
        contentTextStyle: bodyMedium,
        surfaceTintColor: Colors.transparent,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        surfaceTintColor: Colors.transparent,
        backgroundColor: ColorsManager.background,
      ),
      datePickerTheme: DatePickerThemeData(
        headerBackgroundColor: ColorsManager.primary,
        headerForegroundColor: ColorsManager.blackText,
        backgroundColor: ColorsManager.background,
        yearForegroundColor: WidgetStateProperty.all<Color>(
          ColorsManager.blackText,
        ),
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: ColorsManager.background,
        elevation: 0.0,
        surfaceTintColor: Colors.transparent,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          foregroundColor: ColorsManager.primary,
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: ColorsManager.divider,
        thickness: SizeManager.mediumBorder,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        shape: CircleBorder(),
        backgroundColor: ColorsManager.primary,
        elevation: 2.0,
        foregroundColor: ColorsManager.background,
      ),
      listTileTheme: ListTileThemeData(
        tileColor: Colors.transparent,
        titleTextStyle: bodyLarge,
        subtitleTextStyle: bodyMedium.copyWith(color: ColorsManager.greyText),
      ),
    ).copyWith(
      extensions: <ThemeExtension<CustomThemeData>>[
        CustomThemeData(
          secondaryBackground: ColorsManager.secondaryBackground,
          redeem: ColorsManager.redeem,
          open: ColorsManager.open,
          close: ColorsManager.close,
          favorite: ColorsManager.favorite,
          rate: ColorsManager.rate,
          grey: ColorsManager.grey,
          black: ColorsManager.black,
          white: ColorsManager.white,
          success: ColorsManager.success,
          error: ColorsManager.error,
          warning: ColorsManager.warning,
          blackText: ColorsManager.blackText,
          whiteText: ColorsManager.whiteText,
          greyText: ColorsManager.greyText,
          linkText: ColorsManager.linkText,
          onFilledText: ColorsManager.onFilledText,
          greyIcon: ColorsManager.greyIcon,
          primaryIcon: ColorsManager.primaryIcon,
          blackIcon: ColorsManager.blackIcon,
          whiteIcon: ColorsManager.whiteIcon,
          onFilledIcon: ColorsManager.onFilledIcon,
          greyBorder: ColorsManager.greyBorder,
          focusBorder: ColorsManager.focusBorder,
          filled: ColorsManager.filled,
          onFilled: ColorsManager.onFilled,
          cardOnBackground: ColorsManager.cardOnBackground,
          cardOnSecondaryBackground: ColorsManager.cardOnSecondaryBackground,
          divider: ColorsManager.divider,
          lightGrey: ColorsManager.lightGrey,
        ),
      ],
    );
  }

  // static ThemeData getDarkTheme() {
  //   return ThemeData(
  //     useMaterial3: true,
  //     fontFamily: FontsManager.fontFamily,
  //     fontFamilyFallback: FontsManager.fontFamilyFallback,
  //     colorScheme: ColorScheme.fromSwatch().copyWith(
  //       surface: ColorsManager.darkBackground,
  //       primary: ColorsManager.primary,
  //       secondary: ColorsManager.secondary,
  //       brightness: Brightness.light,
  //       tertiary: ColorsManager.accent,
  //     ),
  //     canvasColor: ColorsManager.darkBackground,
  //     dividerColor: ColorsManager.darkDivider,
  //     dividerTheme: const DividerThemeData(color: ColorsManager.darkDivider),
  //     scaffoldBackgroundColor: ColorsManager.darkBackground,
  //     appBarTheme: const AppBarTheme(
  //       backgroundColor: ColorsManager.darkBackground,
  //       centerTitle: true,
  //       elevation: 0.0,
  //       surfaceTintColor: Colors.transparent,
  //       scrolledUnderElevation: 0.0,
  //       titleTextStyle: TextStyle(fontSize: 16.0, color: ColorsManager.primary),
  //       iconTheme: IconThemeData(color: ColorsManager.primary),
  //     ),
  //     disabledColor: ColorsManager.darkDivider,
  //     dialogTheme: const DialogThemeData(
  //       backgroundColor: ColorsManager.darkBackground,
  //     ),
  //     cardColor: ColorsManager.darkBackground,
  //     iconTheme: const IconThemeData(color: ColorsManager.primary, size: 24.0),
  //     cardTheme: const CardTheme(
  //       color: ColorsManager.darkBackground,
  //       surfaceTintColor: Colors.transparent,
  //     ),
  //     bottomSheetTheme: const BottomSheetThemeData(
  //       backgroundColor: ColorsManager.darkBackground,
  //       surfaceTintColor: Colors.transparent,
  //       modalBackgroundColor: Colors.transparent,
  //     ),
  //     textButtonTheme: TextButtonThemeData(
  //       style: TextButton.styleFrom(
  //         surfaceTintColor: Colors.transparent,
  //         textStyle: const TextStyle(
  //           color: ColorsManager.primary,
  //           fontSize: 12.0,
  //         ),
  //       ),
  //     ),
  //     filledButtonTheme: FilledButtonThemeData(
  //       style: FilledButton.styleFrom(
  //         backgroundColor: ColorsManager.primary,
  //         textStyle: const TextStyle(
  //           color: ColorsManager.black,
  //           fontSize: 12.0,
  //         ),
  //       ),
  //     ),
  //     checkboxTheme: CheckboxThemeData(
  //       fillColor: WidgetStateProperty.all<Color>(ColorsManager.primary),
  //       checkColor: WidgetStateProperty.all<Color>(ColorsManager.darkLightGrey),
  //       side: const BorderSide(color: ColorsManager.darkLightGrey),
  //     ),
  //     navigationBarTheme: NavigationBarThemeData(
  //       surfaceTintColor: Colors.transparent,
  //       backgroundColor: ColorsManager.darkTextFieldBackground,
  //       labelTextStyle: WidgetStateProperty.all<TextStyle>(
  //         const TextStyle(fontSize: 10.0),
  //       ),
  //     ),
  //     switchTheme: SwitchThemeData(
  //       trackColor: WidgetStateProperty.resolveWith((
  //           Set<WidgetState> widgetState,
  //           ) {
  //         if (widgetState.isEmpty) return customTheme.grey;
  //         return null;
  //       }),
  //     ),
  //     timePickerTheme: const TimePickerThemeData(
  //       backgroundColor: ColorsManager.darkTextFieldBackground,
  //       dialBackgroundColor: ColorsManager.darkLightGrey,
  //       entryModeIconColor: ColorsManager.darkGrey,
  //     ),
  //     datePickerTheme: const DatePickerThemeData(
  //       backgroundColor: ColorsManager.darkTextFieldBackground,
  //       headerBackgroundColor: ColorsManager.primary,
  //     ),
  //     textTheme: const TextTheme(
  //       displayLarge: TextStyle(
  //         fontSize: 30.0,
  //         color: ColorsManager.primary,
  //         fontWeight: FontWeight.w400,
  //       ),
  //       displayMedium: TextStyle(fontSize: 28.0, color: ColorsManager.primary),
  //       displaySmall: TextStyle(
  //         fontSize: 16.0,
  //         color: ColorsManager.darkTextColor,
  //       ),
  //       titleLarge: TextStyle(
  //         fontSize: 14.0,
  //         color: ColorsManager.darkTextColor,
  //       ),
  //       titleMedium: TextStyle(
  //         fontSize: 12.0,
  //         color: ColorsManager.darkTextColor,
  //         fontWeight: FontWeight.w500,
  //       ),
  //       titleSmall: TextStyle(
  //         fontSize: 10.0,
  //         color: ColorsManager.darkTextColor,
  //         fontWeight: FontWeight.w400,
  //       ),
  //     ),
  //   ).copyWith(
  //     extensions: <ThemeExtension<CustomThemeData>>[
  //       CustomThemeData(
  //         white: ColorsManager.black,
  //         black: ColorsManager.white,
  //         success: ColorsManager.success,
  //         error: ColorsManager.error,
  //         warning: ColorsManager.warning,
  //         snackBarBackground: ColorsManager.snackBarBackground,
  //         grey: ColorsManager.darkGrey,
  //         lightGrey: ColorsManager.darkLightGrey,
  //         textFieldBackground: ColorsManager.darkTextFieldBackground,
  //         textColor: ColorsManager.darkTextColor,
  //         amber: ColorsManager.amber,
  //         greyIcon: ColorsManager.darkGreyIcon,
  //         pink: ColorsManager.pink,
  //         blue: ColorsManager.blue,
  //         blackText: ColorsManager.whiteText,
  //         blueText: ColorsManager.blueText,
  //       ),
  //     ],
  //   );
  // }
}
