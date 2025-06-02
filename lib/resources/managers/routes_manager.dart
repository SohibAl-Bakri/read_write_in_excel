import 'package:royal_soft_task/resources/helpers/all_imports.dart';

class Routes {
  static const String unDefinedRoute = '/NotFoundView';
  static const String splashRoute = '/SplashView';
  static const String authRoute = '/AuthView';
  // static const String navigationRoute = '/NavigationView';
  static const String homeRoute = '/HomeView';
  static const String connectionErrorRoute = '/ConnectionErrorView';
  static const String settingsRoute = '/SettingView';
  static const String profileRoute = '/ProfileView';
  static const String deleteAccountRoute = '/DeleteAccountView';
  static const String followUsRoute = '/FollowUsView';
  static const String resetPasswordRoute = '/ResetPasswordView';
  static const String addItemRoute = '/AddItemView';
}

mixin RouteGenerator {
  static List<GetPage> getPages() {
    return <GetPage>[
      GetPage(
        name: Routes.splashRoute,
        page: () => SplashView(),
        binding: SplashBinding(),
      ),
      GetPage(
        name: Routes.authRoute,
        page: () => const AuthView(),
        binding: AuthBinding(),
      ),
      GetPage(name: Routes.homeRoute, page: () => HomeView()),
      GetPage(
        name: Routes.connectionErrorRoute,
        page: () => ConnectionErrorView(),
        binding: ConnectionErrorBinding(),
      ),
      GetPage(
        name: Routes.settingsRoute,
        page: () => SettingView(),
        binding: SettingBinding(),
      ),
      GetPage(
        name: Routes.profileRoute,
        page: () => const ProfileView(),
        binding: ProfileBinding(),
      ),
      GetPage(
        name: Routes.deleteAccountRoute,
        page: () => const DeletaAccountView(),
        binding: DeleteAccountBinding(),
      ),
      GetPage(
        name: Routes.followUsRoute,
        page: () => const FollowUsView(),
        binding: FollowUsBinding(),
      ),
      GetPage(
        name: Routes.resetPasswordRoute,
        page: () => ResetPasswordView(),
        binding: ResetPasswordBinding(),
      ),
      GetPage(
        name: Routes.addItemRoute,
        page: () => const AddItemView(),
        binding: AddItemBinding(),
      ),
    ];
  }

  static Scaffold unDefinedRoute() {
    return Scaffold(
      appBar: AppBar(title: Text(localizations.noRouteFound)),
      body: Center(child: Text(localizations.noRouteFound)),
    );
  }
}
