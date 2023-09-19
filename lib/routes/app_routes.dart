import 'package:raj_singh_s_application3/presentation/splash_screen/splash_screen.dart';
import 'package:raj_singh_s_application3/presentation/splash_screen/binding/splash_binding.dart';
import 'package:raj_singh_s_application3/presentation/login_screen/login_screen.dart';
import 'package:raj_singh_s_application3/presentation/login_screen/binding/login_binding.dart';
import 'package:raj_singh_s_application3/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:raj_singh_s_application3/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:raj_singh_s_application3/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:raj_singh_s_application3/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:raj_singh_s_application3/presentation/otp_verification_screen/otp_verification_screen.dart';
import 'package:raj_singh_s_application3/presentation/otp_verification_screen/binding/otp_verification_binding.dart';
import 'package:raj_singh_s_application3/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:raj_singh_s_application3/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:raj_singh_s_application3/presentation/reset_password_success_screen/reset_password_success_screen.dart';
import 'package:raj_singh_s_application3/presentation/reset_password_success_screen/binding/reset_password_success_binding.dart';
import 'package:raj_singh_s_application3/presentation/home_container_screen/home_container_screen.dart';
import 'package:raj_singh_s_application3/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:raj_singh_s_application3/presentation/category_comedy_screen/category_comedy_screen.dart';
import 'package:raj_singh_s_application3/presentation/category_comedy_screen/binding/category_comedy_binding.dart';
import 'package:raj_singh_s_application3/presentation/episode_tab_container_screen/episode_tab_container_screen.dart';
import 'package:raj_singh_s_application3/presentation/episode_tab_container_screen/binding/episode_tab_container_binding.dart';
import 'package:raj_singh_s_application3/presentation/choose_plan_screen/choose_plan_screen.dart';
import 'package:raj_singh_s_application3/presentation/choose_plan_screen/binding/choose_plan_binding.dart';
import 'package:raj_singh_s_application3/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:raj_singh_s_application3/presentation/payment_method_screen/binding/payment_method_binding.dart';
import 'package:raj_singh_s_application3/presentation/home_recently_watched_screen/home_recently_watched_screen.dart';
import 'package:raj_singh_s_application3/presentation/home_recently_watched_screen/binding/home_recently_watched_binding.dart';
import 'package:raj_singh_s_application3/presentation/search_result_screen/search_result_screen.dart';
import 'package:raj_singh_s_application3/presentation/search_result_screen/binding/search_result_binding.dart';
import 'package:raj_singh_s_application3/presentation/not_found_screen/not_found_screen.dart';
import 'package:raj_singh_s_application3/presentation/not_found_screen/binding/not_found_binding.dart';
import 'package:raj_singh_s_application3/presentation/empty_state_downloaded_tab_container_screen/empty_state_downloaded_tab_container_screen.dart';
import 'package:raj_singh_s_application3/presentation/empty_state_downloaded_tab_container_screen/binding/empty_state_downloaded_tab_container_binding.dart';
import 'package:raj_singh_s_application3/presentation/select_saved_screen/select_saved_screen.dart';
import 'package:raj_singh_s_application3/presentation/select_saved_screen/binding/select_saved_binding.dart';
import 'package:raj_singh_s_application3/presentation/saved_empty_screen/saved_empty_screen.dart';
import 'package:raj_singh_s_application3/presentation/saved_empty_screen/binding/saved_empty_binding.dart';
import 'package:raj_singh_s_application3/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:raj_singh_s_application3/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:raj_singh_s_application3/presentation/notification_screen/notification_screen.dart';
import 'package:raj_singh_s_application3/presentation/notification_screen/binding/notification_binding.dart';
import 'package:raj_singh_s_application3/presentation/no_notification_screen/no_notification_screen.dart';
import 'package:raj_singh_s_application3/presentation/no_notification_screen/binding/no_notification_binding.dart';
import 'package:raj_singh_s_application3/presentation/history_screen/history_screen.dart';
import 'package:raj_singh_s_application3/presentation/history_screen/binding/history_binding.dart';
import 'package:raj_singh_s_application3/presentation/no_history_screen/no_history_screen.dart';
import 'package:raj_singh_s_application3/presentation/no_history_screen/binding/no_history_binding.dart';
import 'package:raj_singh_s_application3/presentation/setting_screen/setting_screen.dart';
import 'package:raj_singh_s_application3/presentation/setting_screen/binding/setting_binding.dart';
import 'package:raj_singh_s_application3/presentation/language_screen/language_screen.dart';
import 'package:raj_singh_s_application3/presentation/language_screen/binding/language_binding.dart';
import 'package:raj_singh_s_application3/presentation/help_screen/help_screen.dart';
import 'package:raj_singh_s_application3/presentation/help_screen/binding/help_binding.dart';
import 'package:raj_singh_s_application3/presentation/search_help_screen/search_help_screen.dart';
import 'package:raj_singh_s_application3/presentation/search_help_screen/binding/search_help_binding.dart';
import 'package:raj_singh_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:raj_singh_s_application3/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String otpVerificationScreen = '/otp_verification_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordSuccessScreen =
      '/reset_password_success_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String categoryComedyScreen = '/category_comedy_screen';

  static const String episodePage = '/episode_page';

  static const String episodeTabContainerScreen =
      '/episode_tab_container_screen';

  static const String similiarPage = '/similiar_page';

  static const String aboutPage = '/about_page';

  static const String choosePlanScreen = '/choose_plan_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String homeRecentlyWatchedScreen =
      '/home_recently_watched_screen';

  static const String searchPage = '/search_page';

  static const String searchResultScreen = '/search_result_screen';

  static const String notFoundScreen = '/not_found_screen';

  static const String downloadedPage = '/downloaded_page';

  static const String downloadedTabContainerPage =
      '/downloaded_tab_container_page';

  static const String downloadingPage = '/downloading_page';

  static const String emptyStateDownloadedPage = '/empty_state_downloaded_page';

  static const String emptyStateDownloadedTabContainerScreen =
      '/empty_state_downloaded_tab_container_screen';

  static const String emptyStateDownloadingPage =
      '/empty_state_downloading_page';

  static const String savedPage = '/saved_page';

  static const String selectSavedScreen = '/select_saved_screen';

  static const String savedEmptyScreen = '/saved_empty_screen';

  static const String profilePage = '/profile_page';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String notificationScreen = '/notification_screen';

  static const String noNotificationScreen = '/no_notification_screen';

  static const String historyScreen = '/history_screen';

  static const String noHistoryScreen = '/no_history_screen';

  static const String settingScreen = '/setting_screen';

  static const String languageScreen = '/language_screen';

  static const String helpScreen = '/help_screen';

  static const String searchHelpScreen = '/search_help_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: otpVerificationScreen,
      page: () => OtpVerificationScreen(),
      bindings: [
        OtpVerificationBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordSuccessScreen,
      page: () => ResetPasswordSuccessScreen(),
      bindings: [
        ResetPasswordSuccessBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: categoryComedyScreen,
      page: () => CategoryComedyScreen(),
      bindings: [
        CategoryComedyBinding(),
      ],
    ),
    GetPage(
      name: episodeTabContainerScreen,
      page: () => EpisodeTabContainerScreen(),
      bindings: [
        EpisodeTabContainerBinding(),
      ],
    ),
    GetPage(
      name: choosePlanScreen,
      page: () => ChoosePlanScreen(),
      bindings: [
        ChoosePlanBinding(),
      ],
    ),
    GetPage(
      name: paymentMethodScreen,
      page: () => PaymentMethodScreen(),
      bindings: [
        PaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: homeRecentlyWatchedScreen,
      page: () => HomeRecentlyWatchedScreen(),
      bindings: [
        HomeRecentlyWatchedBinding(),
      ],
    ),
    GetPage(
      name: searchResultScreen,
      page: () => SearchResultScreen(),
      bindings: [
        SearchResultBinding(),
      ],
    ),
    GetPage(
      name: notFoundScreen,
      page: () => NotFoundScreen(),
      bindings: [
        NotFoundBinding(),
      ],
    ),
    GetPage(
      name: emptyStateDownloadedTabContainerScreen,
      page: () => EmptyStateDownloadedTabContainerScreen(),
      bindings: [
        EmptyStateDownloadedTabContainerBinding(),
      ],
    ),
    GetPage(
      name: selectSavedScreen,
      page: () => SelectSavedScreen(),
      bindings: [
        SelectSavedBinding(),
      ],
    ),
    GetPage(
      name: savedEmptyScreen,
      page: () => SavedEmptyScreen(),
      bindings: [
        SavedEmptyBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: noNotificationScreen,
      page: () => NoNotificationScreen(),
      bindings: [
        NoNotificationBinding(),
      ],
    ),
    GetPage(
      name: historyScreen,
      page: () => HistoryScreen(),
      bindings: [
        HistoryBinding(),
      ],
    ),
    GetPage(
      name: noHistoryScreen,
      page: () => NoHistoryScreen(),
      bindings: [
        NoHistoryBinding(),
      ],
    ),
    GetPage(
      name: settingScreen,
      page: () => SettingScreen(),
      bindings: [
        SettingBinding(),
      ],
    ),
    GetPage(
      name: languageScreen,
      page: () => LanguageScreen(),
      bindings: [
        LanguageBinding(),
      ],
    ),
    GetPage(
      name: helpScreen,
      page: () => HelpScreen(),
      bindings: [
        HelpBinding(),
      ],
    ),
    GetPage(
      name: searchHelpScreen,
      page: () => SearchHelpScreen(),
      bindings: [
        SearchHelpBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
