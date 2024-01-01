import 'package:esim2/Screens/Terms%20and%20Conditions/terms_page.dart';
import 'package:esim2/Screens/auth_screen/allset_screen.dart';
import 'package:esim2/Screens/auth_screen/forgot_mail_sent.dart';
import 'package:esim2/Screens/auth_screen/forgot_pass.dart';
import 'package:esim2/Screens/auth_screen/new_user.dart';
import 'package:esim2/Screens/auth_screen/signup.dart';
import 'package:esim2/Screens/checkout/checkout_page.dart';
import 'package:esim2/Screens/dashboard/bottom_bar.dart';
import 'package:esim2/Screens/packages_tab_container_page/eSim_detail_page.dart';
import 'package:esim2/Screens/packages_tab_container_page/packages_detail_page.dart';
import 'package:esim2/Screens/profile_screen/invoices_screen.dart';
import 'package:esim2/Screens/profile_screen/profile_editScreen.dart';
import 'package:esim2/Screens/profile_screen/profile_screen.dart';
import 'package:esim2/bindings/auth_binding.dart';
import 'package:get/get.dart';
import '../Screens/auth_screen/login.dart';
import '../Screens/installation_guide/view/installation_guide_screen.dart';
import '../Screens/profile_screen/profile_preferences_screen.dart';
import '../Screens/search/searching_page.dart';
import '../Screens/splash/intro_screens.dart';
import '../Screens/splash/splash.dart';
import '../Screens/checkout/card_add.dart';

class AppRoutes {
  // static const String travelerPage = '/traveler_page';
  // static const String travelerContainerScreen = '/traveler_container_screen';
  // static const String expatScreen = '/expat_screen';
  // static const String searchNumberNoResultsScreen =
  //     '/search_number_no_results_screen';
  // static const String searchNumberNoResultsOneScreen =
  //     '/search_number_no_results_one_screen';
  // static const String searchNumberNoResultsTwoScreen =
  //     '/search_number_no_results_two_screen';
  // static const String packagesPage = '/packages_page';
  // static const String packagesTabContainerPage = '/packages_tab_container_page';
  // static const String packagesDetailPage = '/packagesDetailPage';
  // static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';
  static const String home = '/home';
  static const String auth = '/auth';
  static const String signup = '/signup';
  static const String search = '/search';
  static const String introRoute = '/intro';
  static const String termsandconditions = '/termsandconditions';
  static const String forgotpassScreen = '/forgotpassScreen';
  static const String forgotMailsentScreen = '/forgotMailsentScreen';
  // static const String profileScreen = '/profileScreen';
  // static const String profileeditScreen = '/profileeditScreen';
  static const String checkoutCardAddedScreen = '/CheckoutCardAddedScreen';
  static const String newuser = '/newuser';
  static const String profilecompleted = '/profilecompleted';
  static const String profileScreen = '/profileScreen';
  static const String packagesDetailPage = '/packagesDetailPage';
  static const String profileeditScreen = '/profileeditScreen';
  static const String cardaddScreen = '/cardaddScreen';
  static const String esimdetailScreen = '/esimdetailScreen';
  static const String profilePreferencesScreen = '/ProfilePreferencesScreen';
  static const String instructionManual = '/instructionManual';
  static const String invoicesScreen = '/invoicesScreen';

  static List<GetPage> pages = [
    GetPage(
        name: signup, page: () => const SignUpScreen(), binding: AuthBinding()),
    GetPage(
      name: forgotMailsentScreen,
      page: () => const ForgotMailSentScreen(),
    ),
    GetPage(
      name: invoicesScreen,
      page: () => const InvoicesScreen(),
    ),
    GetPage(
      name: instructionManual,
      page: () => InstallationGuide(),
    ),

    // GetPage(
    //   name: checkoutCardAddedScreen,
    //   page: () => const CheckoutCardScreen(),
    // ),

    GetPage(
      name: profilePreferencesScreen,
      page: () => const ProfilePreferencesScreen(),
    ),

    GetPage(
      name: forgotpassScreen,
      page: () => const ForgotPassScreen(),
    ),
    GetPage(
      name: search,
      page: () => const SearchPage(),
    ),
    GetPage(
      name: termsandconditions,
      page: () => const TermsandConditionPage(),
    ),
    GetPage(
      name: home,
      page: () => const BottomBar(),
    ),
    GetPage(
      name: introRoute,
      page: () => const IntroScreens(),
    ),
    GetPage(
      name: packagesDetailPage,
      page: () => const PackagesDetailScreen(),
    ),
    GetPage(
      name: esimdetailScreen,
      page: () => const ESIMDetailPage(),
    ),
    GetPage(
      name: profileeditScreen,
      page: () => const ProfileEditScreen(),
    ),
    GetPage(
      name: profileScreen,
      page: () => const ProfileScreen(),
    ),
    GetPage(
        name: newuser,
        page: () => const NewUserScreen(),
        binding: AuthBinding()),
    GetPage(
      name: profilecompleted,
      page: () => const ProfileCompletedScreen(),
    ),

    // GetPage(
    //   name: travelerContainerScreen,
    //   page: () => const TravelerContainerScreen(),
    //   bindings: [
    //     TravelerContainerBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: expatScreen,
    //   page: () => ExpatScreen(),
    //   bindings: [
    //     ExpatBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: searchNumberNoResultsScreen,
    //   page: () => SearchNumberNoResultsScreen(),
    //   bindings: [
    //     SearchNumberNoResultsBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: searchNumberNoResultsOneScreen,
    //   page: () => SearchNumberNoResultsOneScreen(),
    //   bindings: [
    //     SearchNumberNoResultsOneBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: searchNumberNoResultsTwoScreen,
    //   page: () => SearchNumberNoResultsTwoScreen(),
    //   bindings: [
    //     SearchNumberNoResultsTwoBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: packagesDetailPage,
    //   page: () => const PackagesDetailScreen(),
    // ),
    GetPage(
      name: cardaddScreen,
      page: () => const CardAddScreen(),
    ),
    // GetPage(
    //   name: profileeditScreen,
    //   page: () => const ProfileEditScreen(),
    // ),
    // GetPage(
    //   name: profileScreen,
    //   page: () => ProfileScreen(),
    // ),
    // GetPage(
    //   name: home,
    //   page: () => HomeScreen(),
    //   // bindings: [
    //   //   CheckoutCardAddedBinding(),
    //   // ],
    // ),
    GetPage(
      name: initialRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: auth,
      page: () => const LoginScreen(),
    )
  ];
}
