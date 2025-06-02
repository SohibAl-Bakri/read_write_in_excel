import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class ConstantsManager {
  static const String arabicLangValue = 'ar';
  static const String englishLangValue = 'en';

  static const double iconSize = 18.0;

  static const int genderMaleValue = 1;
  static const int genderFemaleValue = 2;

  static const double appbarHeight = 50.0;
  static const double maxSnackBarWidth = 600.0;

  static const String appStoreId = 'appStoreId';
  static const String googlePlayLink =
      'https://play.google.com/store/apps/details?id=com.example.royal_soft_task';
  static const String appStoreLink =
      'http://apps.apple.com/<country>/app/<app–name>/id<store-ID>';
  static const String shareText =
      'Introducing \'App Name\' app . If you or someone you care about could use support, download now from Google Play and the App Store.\nAndroid Edition: $googlePlayLink\nIOS Edition: $appStoreLink';
  static const String termsAndConditionsUrl = 'https://google.com';
  static const String contactPhoneNumber = '+962 7 0000 0000';
  static const String contactEmail = 'email@example.com';
  static const String facebookUrl = 'https://google.com';
  static const String instagramUrl = 'https://facebook.com';
  static const String whatsappUrl = 'https://whatsapp.com';
  static const String xUrl = 'https://x.com';
}

mixin DotenvManager {
  static final String languagePrefsKey = dotenv.env['LANGUAGE_PREFS_KEY']!;
  static final String themeModePrefsKey = dotenv.env['THEME_MODE_PREFS_KEY']!;
  static final String isDarkThemePrefsKey =
      dotenv.env['IS_DARK_THEME_PREFS_KEY']!;
  static final String isFirstTimePrefsKey =
      dotenv.env['IS_FIRST_TIME_PREFS_KEY']!;
  static final String userModelPrefsKey =
      dotenv.env['USER_MODEL_TIME_PREFS_KEY']!;
  static final String encryptionKey = dotenv.env['ENCRYPTION_KEY']!;
  static final String _domain = dotenv.env['DOMAIN']!;
  static final String _mainApiPath = dotenv.env['API_PATH']!;
  static final String apiPath = '$_domain/$_mainApiPath';
}
