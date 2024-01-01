// GENERATED CODE
//
// After the template files .arb have been changed,
// generate this class by the command in the terminal:
// flutter pub run lokalise_flutter_sdk:gen-lok-l10n
//
// Please see https://pub.dev/packages/lokalise_flutter_sdk

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes
// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:lokalise_flutter_sdk/lokalise_flutter_sdk.dart';
import 'intl/messages_all.dart';

class Lt {
  Lt._internal();

  static const LocalizationsDelegate<Lt> delegate = _AppLocalizationDelegate();

  static const List<Locale> supportedLocales = [
    Locale.fromSubtags(languageCode: 'en'),
    Locale.fromSubtags(languageCode: 'ar')
  ];

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static final Map<String, List<String>> _metadata = {
    'scr_login01_action_google': [],
    'scr_login03_header': [],
    'scr_onboarding1_header': [],
    'scr_signup04_lbl_last_name': [],
    'scr_onboarding2_subtitle': [],
    'scr_signup04_lbl_first_name': [],
    'scr_signup05_subtitle': [],
    'scr_home1_search_body': [],
    'scr_onboarding3_action': [],
    'scr_signup05_header_all_set': [],
    'scr_signup_linkresent5times_subtitle': [],
    'scr_signup_emailinvalid_labl_invalid_email_error': [],
    'scr_error_no_internet_connection_title': [],
    'scr_onboarding3_subtitle': [],
    'scr_signup_linkresent_subtitle_tryagain': [],
    'scr_onboarding2_header': [],
    'scr_error_no_internet_connection_body': [],
    'scr_onboarding1_subtitle': [],
    'scr_onboarding3_header': [],
    'scr_package_esim_name_cta': [],
    'scr_coverage_page_list': [],
    'scr_package_regional_data_package': [],
    'scr_search_all_countries': [],
    'scr_search_results_postfix': [],
    'scr_search_no_results_title': [],
    'scr_package_esim_body': ['app_name'],
    'scr_search_no_results_body': [],
    'scr_package_esim_name': [],
    'scr_package_plan_type_description_cta': [],
    'scr_package_esim_name_title': [],
    'scr_package_esim_name_text_placeholder': [],
    'scr_share_title': [],
    'scr_share_subtitle': [
      'package_data',
      'package_validity',
      'destination_name',
      'app_name'
    ],
    'scr_coverage_page_covered_countries': [],
    'scr_package_plan_type_description': [],
    'scr_package_esim_selector_title': [],
    'scr_checkout_success_title': [],
    'scr_checkout_card_prefix': [],
    'scr_checkout_error_max_cards_reached': ['max_cards_number'],
    'scr_checkout_success_how_to_install_title': [],
    'scr_checkout_success_traveling_dates_body': [],
    'scr_checkout_auto_renew_data_usage_title': [],
    'scr_checkout_success_traveling_dates_title': [],
    'scr_checkout_card_delete': [],
    'scr_checkout_term_conditions_alert': [],
    'scr_add_card_expiry_date': [],
    'scr_checkout_success_payment_method': [],
    'scr_checkout_success_cta': [],
    'scr_checkout_auto_renew_options_title': [],
    'scr_checkout_card_dismiss': [],
    'scr_checkout_card_confirm': [],
    'scr_checkout_card_confirm_deleting': [],
    'scr_checkout_auto_renew_period_expiry_body': [],
    'scr_checkout_card_manage_card': [],
    'scr_checkout_credit_card': [],
    'scr_checkout_auto_renew_data_usage_description': [],
    'scr_checkout_promo_code_invalid_message': [],
    'scr_add_card_invalid_card_message': [],
    'scr_packages_empty_subtitle_no_packages_note': [],
    'scr_packages_subtitle_expires_on': [],
    'scr_packages_subtitle_expired': [],
    'scr_packages_subtitle_remaining_percent': [],
    'scr_packages_subtitle_remaining_out_of_expired': [],
    'scr_packages_empty_header_no_data_packages': [],
    'scr_packages_lbl_active_tab': [],
    'scr_packages_notloggedin_subtitle_not_logged_in_note': [],
    'scr_packages_notloggedin_header_not_logged_in': [],
    'scr_packages_subtitle_remaining_percent_expired': [],
    'scr_packages_lbl_active_packages': [],
    'scr_packages_lbl_active_attention': [],
    'scr_packages_lbl_activated_on_arrival_queued': [],
    'scr_packages_subtitle_expired_on': [],
    'scr_packages_subtitle_expired_on62': [],
    'scr_packages_notloggedin_header_hello': [],
    'scr_packagedetails_lbl_history': [],
    'scr_card_cantremove_subtitle': [],
    'scr_renewalsheet_header_renew_upon': [],
    'scr_card_cantremove_header': [],
    'scr_card_confirm_action_confirm': [],
    'scr_paymentmethod_header_change_payment': [],
    'scr_renewalsheet_lbl_monthly_limit': [],
    'scr_renewalsheet_action_save': [],
    'scr_esim_details_rename_esim_esim_name': [],
    'scr_esim_details_active_packages': [],
    'scr_esim_details_show_qr_code': [],
    'scr_esim_details_esim_puk': [],
    'scr_esim_details_rename_esim_title': [],
    'scr_esim_details_esim_pin': [],
    'scr_esim_details_profile_status': [],
    'scr_esim_details_activation_date': [],
    'scr_esim_details_esim_id': [],
    'scr_esim_details_info_title': [],
    'scr_profile_user_faqs': [],
    'scr_profile_user_support': [],
    'scr_profile_user_change_language': [],
    'scr_edit_profile_last_name': [],
    'scr_edit_profile_first_name': [],
    'scr_terms_conditions_title': [],
    'scr_edit_profile_title': [],
    'scr_profile_user_edit_profile': [],
    'scr_profile_user_preferences': [],
    'scr_profile_user_logout': [],
    'scr_edit_profile_email': [],
    'scr_edit_profile_upload_picture': []
  };

  static Future<Lt> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    Lokalise.instance.metadata = _metadata;

    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Lt._internal();
      return instance;
    });
  }

  static Lt of(BuildContext context) {
    final instance = Localizations.of<Lt>(context, Lt);
    assert(instance != null,
        'No instance of Lt present in the widget tree. Did you add Lt.delegate in localizationsDelegates?');
    return instance!;
  }

  /// `Continue with Google`
  String get scr_login01_action_google {
    return Intl.message(
      'Continue with Google',
      name: 'scr_login01_action_google',
      desc: '',
      args: [],
    );
  }

  /// `Check your email`
  String get scr_login03_header {
    return Intl.message(
      'Check your email',
      name: 'scr_login03_header',
      desc: '',
      args: [],
    );
  }

  /// `Stay connected abroad`
  String get scr_onboarding1_header {
    return Intl.message(
      'Stay connected abroad',
      name: 'scr_onboarding1_header',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get scr_signup04_lbl_last_name {
    return Intl.message(
      'Last name',
      name: 'scr_signup04_lbl_last_name',
      desc: '',
      args: [],
    );
  }

  /// `Get internet speeds up to 5G at affordable prices, no surprises here!`
  String get scr_onboarding2_subtitle {
    return Intl.message(
      'Get internet speeds up to 5G at affordable prices, no surprises here!',
      name: 'scr_onboarding2_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get scr_signup04_lbl_first_name {
    return Intl.message(
      'First name',
      name: 'scr_signup04_lbl_first_name',
      desc: '',
      args: [],
    );
  }

  /// `Let's get you started!`
  String get scr_signup05_subtitle {
    return Intl.message(
      'Let\'s get you started!',
      name: 'scr_signup05_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Destination`
  String get scr_home1_search_body {
    return Intl.message(
      'Destination',
      name: 'scr_home1_search_body',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get scr_onboarding3_action {
    return Intl.message(
      'Skip',
      name: 'scr_onboarding3_action',
      desc: '',
      args: [],
    );
  }

  /// `All set`
  String get scr_signup05_header_all_set {
    return Intl.message(
      'All set',
      name: 'scr_signup05_header_all_set',
      desc: '',
      args: [],
    );
  }

  /// `You've exceeded your email verification trial limit, please try again after 1 hour`
  String get scr_signup_linkresent5times_subtitle {
    return Intl.message(
      'You\'ve exceeded your email verification trial limit, please try again after 1 hour',
      name: 'scr_signup_linkresent5times_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email. Please type a correct email address.`
  String get scr_signup_emailinvalid_labl_invalid_email_error {
    return Intl.message(
      'Invalid email. Please type a correct email address.',
      name: 'scr_signup_emailinvalid_labl_invalid_email_error',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get scr_error_no_internet_connection_title {
    return Intl.message(
      'No internet connection',
      name: 'scr_error_no_internet_connection_title',
      desc: '',
      args: [],
    );
  }

  /// `We'll require some permissions to provide you with the best app experience.`
  String get scr_onboarding3_subtitle {
    return Intl.message(
      'We\'ll require some permissions to provide you with the best app experience.',
      name: 'scr_onboarding3_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Didn't get the email? try again in 30 seconds.`
  String get scr_signup_linkresent_subtitle_tryagain {
    return Intl.message(
      'Didn\'t get the email? try again in 30 seconds.',
      name: 'scr_signup_linkresent_subtitle_tryagain',
      desc: '',
      args: [],
    );
  }

  /// `Fast and affordable`
  String get scr_onboarding2_header {
    return Intl.message(
      'Fast and affordable',
      name: 'scr_onboarding2_header',
      desc: '',
      args: [],
    );
  }

  /// `Please make sure you have an active internet connection and try again.`
  String get scr_error_no_internet_connection_body {
    return Intl.message(
      'Please make sure you have an active internet connection and try again.',
      name: 'scr_error_no_internet_connection_body',
      desc: '',
      args: [],
    );
  }

  /// `Get eSIMs with generous data packages to use while traveling.`
  String get scr_onboarding1_subtitle {
    return Intl.message(
      'Get eSIMs with generous data packages to use while traveling.',
      name: 'scr_onboarding1_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `You're in control`
  String get scr_onboarding3_header {
    return Intl.message(
      'You\'re in control',
      name: 'scr_onboarding3_header',
      desc: '',
      args: [],
    );
  }

  /// `Save & Continue`
  String get scr_package_esim_name_cta {
    return Intl.message(
      'Save & Continue',
      name: 'scr_package_esim_name_cta',
      desc: '',
      args: [],
    );
  }

  /// `List`
  String get scr_coverage_page_list {
    return Intl.message(
      'List',
      name: 'scr_coverage_page_list',
      desc: '',
      args: [],
    );
  }

  /// `Africa regional data package`
  String get scr_package_regional_data_package {
    return Intl.message(
      'Africa regional data package',
      name: 'scr_package_regional_data_package',
      desc: '',
      args: [],
    );
  }

  /// `All countries`
  String get scr_search_all_countries {
    return Intl.message(
      'All countries',
      name: 'scr_search_all_countries',
      desc: '',
      args: [],
    );
  }

  /// `3 matches`
  String get scr_search_results_postfix {
    return Intl.message(
      '3 matches',
      name: 'scr_search_results_postfix',
      desc: '',
      args: [],
    );
  }

  /// `No matches`
  String get scr_search_no_results_title {
    return Intl.message(
      'No matches',
      name: 'scr_search_no_results_title',
      desc: '',
      args: [],
    );
  }

  /// `Get a free eSIM with this package, or add it to your existing {app_name} eSIM.`
  String scr_package_esim_body(Object app_name) {
    return Intl.message(
      'Get a free eSIM with this package, or add it to your existing $app_name eSIM.',
      name: 'scr_package_esim_body',
      desc: '',
      args: [app_name],
    );
  }

  /// `Please enter a valid country name.`
  String get scr_search_no_results_body {
    return Intl.message(
      'Please enter a valid country name.',
      name: 'scr_search_no_results_body',
      desc: '',
      args: [],
    );
  }

  /// `eSIM name`
  String get scr_package_esim_name {
    return Intl.message(
      'eSIM name',
      name: 'scr_package_esim_name',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get scr_package_plan_type_description_cta {
    return Intl.message(
      'Continue',
      name: 'scr_package_plan_type_description_cta',
      desc: '',
      args: [],
    );
  }

  /// `Name your eSIM`
  String get scr_package_esim_name_title {
    return Intl.message(
      'Name your eSIM',
      name: 'scr_package_esim_name_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter your eSIM name`
  String get scr_package_esim_name_text_placeholder {
    return Intl.message(
      'Enter your eSIM name',
      name: 'scr_package_esim_name_text_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `QR Code`
  String get scr_share_title {
    return Intl.message(
      'QR Code',
      name: 'scr_share_title',
      desc: '',
      args: [],
    );
  }

  /// `{package_data} / {package_validity} travel eSIM for {destination_name} by {app_name}`
  String scr_share_subtitle(Object package_data, Object package_validity,
      Object destination_name, Object app_name) {
    return Intl.message(
      '$package_data / $package_validity travel eSIM for $destination_name by $app_name',
      name: 'scr_share_subtitle',
      desc: '',
      args: [package_data, package_validity, destination_name, app_name],
    );
  }

  /// `Coverage countries`
  String get scr_coverage_page_covered_countries {
    return Intl.message(
      'Coverage countries',
      name: 'scr_coverage_page_covered_countries',
      desc: '',
      args: [],
    );
  }

  /// `This is a data only package, meaning you can’t do phone calls or SMS messages with it. However you can do online calls normally like on these platforms and more:`
  String get scr_package_plan_type_description {
    return Intl.message(
      'This is a data only package, meaning you can’t do phone calls or SMS messages with it. However you can do online calls normally like on these platforms and more:',
      name: 'scr_package_plan_type_description',
      desc: '',
      args: [],
    );
  }

  /// `Choose an eSIM account`
  String get scr_package_esim_selector_title {
    return Intl.message(
      'Choose an eSIM account',
      name: 'scr_package_esim_selector_title',
      desc: '',
      args: [],
    );
  }

  /// `Successful purchase`
  String get scr_checkout_success_title {
    return Intl.message(
      'Successful purchase',
      name: 'scr_checkout_success_title',
      desc: '',
      args: [],
    );
  }

  /// `Card ending in #6029`
  String get scr_checkout_card_prefix {
    return Intl.message(
      'Card ending in #6029',
      name: 'scr_checkout_card_prefix',
      desc: '',
      args: [],
    );
  }

  /// `You reached your max allowed cards {max_cards_number}. Please remove one so you can add a new card.`
  String scr_checkout_error_max_cards_reached(Object max_cards_number) {
    return Intl.message(
      'You reached your max allowed cards $max_cards_number. Please remove one so you can add a new card.',
      name: 'scr_checkout_error_max_cards_reached',
      desc: '',
      args: [max_cards_number],
    );
  }

  /// `How to install your eSIM`
  String get scr_checkout_success_how_to_install_title {
    return Intl.message(
      'How to install your eSIM',
      name: 'scr_checkout_success_how_to_install_title',
      desc: '',
      args: [],
    );
  }

  /// `Add your travel date, so we can send you important reminders about your data package activation.`
  String get scr_checkout_success_traveling_dates_body {
    return Intl.message(
      'Add your travel date, so we can send you important reminders about your data package activation.',
      name: 'scr_checkout_success_traveling_dates_body',
      desc: '',
      args: [],
    );
  }

  /// `Data Usage`
  String get scr_checkout_auto_renew_data_usage_title {
    return Intl.message(
      'Data Usage',
      name: 'scr_checkout_auto_renew_data_usage_title',
      desc: '',
      args: [],
    );
  }

  /// `When are you traveling?`
  String get scr_checkout_success_traveling_dates_title {
    return Intl.message(
      'When are you traveling?',
      name: 'scr_checkout_success_traveling_dates_title',
      desc: '',
      args: [],
    );
  }

  /// `Delete card`
  String get scr_checkout_card_delete {
    return Intl.message(
      'Delete card',
      name: 'scr_checkout_card_delete',
      desc: '',
      args: [],
    );
  }

  /// `Some missing inputs above, please fill in the missing information`
  String get scr_checkout_term_conditions_alert {
    return Intl.message(
      'Some missing inputs above, please fill in the missing information',
      name: 'scr_checkout_term_conditions_alert',
      desc: '',
      args: [],
    );
  }

  /// `Expiry date`
  String get scr_add_card_expiry_date {
    return Intl.message(
      'Expiry date',
      name: 'scr_add_card_expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get scr_checkout_success_payment_method {
    return Intl.message(
      'Payment Method',
      name: 'scr_checkout_success_payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get scr_checkout_success_cta {
    return Intl.message(
      'Continue',
      name: 'scr_checkout_success_cta',
      desc: '',
      args: [],
    );
  }

  /// `Select your auto-renew options:`
  String get scr_checkout_auto_renew_options_title {
    return Intl.message(
      'Select your auto-renew options:',
      name: 'scr_checkout_auto_renew_options_title',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get scr_checkout_card_dismiss {
    return Intl.message(
      'Cancel',
      name: 'scr_checkout_card_dismiss',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get scr_checkout_card_confirm {
    return Intl.message(
      'Confirm',
      name: 'scr_checkout_card_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Confirm deleting card #6029`
  String get scr_checkout_card_confirm_deleting {
    return Intl.message(
      'Confirm deleting card #6029',
      name: 'scr_checkout_card_confirm_deleting',
      desc: '',
      args: [],
    );
  }

  /// `Auto-renew my package right on the expiry date.`
  String get scr_checkout_auto_renew_period_expiry_body {
    return Intl.message(
      'Auto-renew my package right on the expiry date.',
      name: 'scr_checkout_auto_renew_period_expiry_body',
      desc: '',
      args: [],
    );
  }

  /// `Manage card #6029`
  String get scr_checkout_card_manage_card {
    return Intl.message(
      'Manage card #6029',
      name: 'scr_checkout_card_manage_card',
      desc: '',
      args: [],
    );
  }

  /// `New credit card`
  String get scr_checkout_credit_card {
    return Intl.message(
      'New credit card',
      name: 'scr_checkout_credit_card',
      desc: '',
      args: [],
    );
  }

  /// `Auto-renew my package as soon as I finish my data amount.`
  String get scr_checkout_auto_renew_data_usage_description {
    return Intl.message(
      'Auto-renew my package as soon as I finish my data amount.',
      name: 'scr_checkout_auto_renew_data_usage_description',
      desc: '',
      args: [],
    );
  }

  /// `Invalid promo code, please try again.`
  String get scr_checkout_promo_code_invalid_message {
    return Intl.message(
      'Invalid promo code, please try again.',
      name: 'scr_checkout_promo_code_invalid_message',
      desc: '',
      args: [],
    );
  }

  /// `Invalid card data. Please re-enter your card number or try a different card.`
  String get scr_add_card_invalid_card_message {
    return Intl.message(
      'Invalid card data. Please re-enter your card number or try a different card.',
      name: 'scr_add_card_invalid_card_message',
      desc: '',
      args: [],
    );
  }

  /// `Your data packages will show up here once you complete a purchase.`
  String get scr_packages_empty_subtitle_no_packages_note {
    return Intl.message(
      'Your data packages will show up here once you complete a purchase.',
      name: 'scr_packages_empty_subtitle_no_packages_note',
      desc: '',
      args: [],
    );
  }

  /// `expires on 30/11/2023`
  String get scr_packages_subtitle_expires_on {
    return Intl.message(
      'expires on 30/11/2023',
      name: 'scr_packages_subtitle_expires_on',
      desc: '',
      args: [],
    );
  }

  /// `Expired`
  String get scr_packages_subtitle_expired {
    return Intl.message(
      'Expired',
      name: 'scr_packages_subtitle_expired',
      desc: '',
      args: [],
    );
  }

  /// `60% remaining`
  String get scr_packages_subtitle_remaining_percent {
    return Intl.message(
      '60% remaining',
      name: 'scr_packages_subtitle_remaining_percent',
      desc: '',
      args: [],
    );
  }

  /// `0 of 10GBs remaining`
  String get scr_packages_subtitle_remaining_out_of_expired {
    return Intl.message(
      '0 of 10GBs remaining',
      name: 'scr_packages_subtitle_remaining_out_of_expired',
      desc: '',
      args: [],
    );
  }

  /// `You don’t have any data packages yet`
  String get scr_packages_empty_header_no_data_packages {
    return Intl.message(
      'You don’t have any data packages yet',
      name: 'scr_packages_empty_header_no_data_packages',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get scr_packages_lbl_active_tab {
    return Intl.message(
      'Active',
      name: 'scr_packages_lbl_active_tab',
      desc: '',
      args: [],
    );
  }

  /// `Login to view your data packages or buy new ones.`
  String get scr_packages_notloggedin_subtitle_not_logged_in_note {
    return Intl.message(
      'Login to view your data packages or buy new ones.',
      name: 'scr_packages_notloggedin_subtitle_not_logged_in_note',
      desc: '',
      args: [],
    );
  }

  /// `You are not logged in`
  String get scr_packages_notloggedin_header_not_logged_in {
    return Intl.message(
      'You are not logged in',
      name: 'scr_packages_notloggedin_header_not_logged_in',
      desc: '',
      args: [],
    );
  }

  /// `0% remaining`
  String get scr_packages_subtitle_remaining_percent_expired {
    return Intl.message(
      '0% remaining',
      name: 'scr_packages_subtitle_remaining_percent_expired',
      desc: '',
      args: [],
    );
  }

  /// `Active packages`
  String get scr_packages_lbl_active_packages {
    return Intl.message(
      'Active packages',
      name: 'scr_packages_lbl_active_packages',
      desc: '',
      args: [],
    );
  }

  /// `Attention`
  String get scr_packages_lbl_active_attention {
    return Intl.message(
      'Attention',
      name: 'scr_packages_lbl_active_attention',
      desc: '',
      args: [],
    );
  }

  /// `To be activated on arrival`
  String get scr_packages_lbl_activated_on_arrival_queued {
    return Intl.message(
      'To be activated on arrival',
      name: 'scr_packages_lbl_activated_on_arrival_queued',
      desc: '',
      args: [],
    );
  }

  /// `expired on 20/09/2023`
  String get scr_packages_subtitle_expired_on {
    return Intl.message(
      'expired on 20/09/2023',
      name: 'scr_packages_subtitle_expired_on',
      desc: '',
      args: [],
    );
  }

  /// `expired on 24/10/2023`
  String get scr_packages_subtitle_expired_on62 {
    return Intl.message(
      'expired on 24/10/2023',
      name: 'scr_packages_subtitle_expired_on62',
      desc: '',
      args: [],
    );
  }

  /// `Hello, Traveller`
  String get scr_packages_notloggedin_header_hello {
    return Intl.message(
      'Hello, Traveller',
      name: 'scr_packages_notloggedin_header_hello',
      desc: '',
      args: [],
    );
  }

  /// `history`
  String get scr_packagedetails_lbl_history {
    return Intl.message(
      'history',
      name: 'scr_packagedetails_lbl_history',
      desc: '',
      args: [],
    );
  }

  /// `Your card is connected to a package that has Auto-renewal turned ON. Change your payment method to another card before removing this card.`
  String get scr_card_cantremove_subtitle {
    return Intl.message(
      'Your card is connected to a package that has Auto-renewal turned ON. Change your payment method to another card before removing this card.',
      name: 'scr_card_cantremove_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Renew on:`
  String get scr_renewalsheet_header_renew_upon {
    return Intl.message(
      'Renew on:',
      name: 'scr_renewalsheet_header_renew_upon',
      desc: '',
      args: [],
    );
  }

  /// `You can’t remove card #6029`
  String get scr_card_cantremove_header {
    return Intl.message(
      'You can’t remove card #6029',
      name: 'scr_card_cantremove_header',
      desc: '',
      args: [],
    );
  }

  /// `Go to my package`
  String get scr_card_confirm_action_confirm {
    return Intl.message(
      'Go to my package',
      name: 'scr_card_confirm_action_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Change payment method`
  String get scr_paymentmethod_header_change_payment {
    return Intl.message(
      'Change payment method',
      name: 'scr_paymentmethod_header_change_payment',
      desc: '',
      args: [],
    );
  }

  /// `Monthly limit`
  String get scr_renewalsheet_lbl_monthly_limit {
    return Intl.message(
      'Monthly limit',
      name: 'scr_renewalsheet_lbl_monthly_limit',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get scr_renewalsheet_action_save {
    return Intl.message(
      'Save',
      name: 'scr_renewalsheet_action_save',
      desc: '',
      args: [],
    );
  }

  /// `eSIM Name`
  String get scr_esim_details_rename_esim_esim_name {
    return Intl.message(
      'eSIM Name',
      name: 'scr_esim_details_rename_esim_esim_name',
      desc: '',
      args: [],
    );
  }

  /// `Active Packages`
  String get scr_esim_details_active_packages {
    return Intl.message(
      'Active Packages',
      name: 'scr_esim_details_active_packages',
      desc: '',
      args: [],
    );
  }

  /// `Show eSIM's QR Code`
  String get scr_esim_details_show_qr_code {
    return Intl.message(
      'Show eSIM\'s QR Code',
      name: 'scr_esim_details_show_qr_code',
      desc: '',
      args: [],
    );
  }

  /// `PUK`
  String get scr_esim_details_esim_puk {
    return Intl.message(
      'PUK',
      name: 'scr_esim_details_esim_puk',
      desc: '',
      args: [],
    );
  }

  /// `Rename eSIM`
  String get scr_esim_details_rename_esim_title {
    return Intl.message(
      'Rename eSIM',
      name: 'scr_esim_details_rename_esim_title',
      desc: '',
      args: [],
    );
  }

  /// `PIN`
  String get scr_esim_details_esim_pin {
    return Intl.message(
      'PIN',
      name: 'scr_esim_details_esim_pin',
      desc: '',
      args: [],
    );
  }

  /// `Profile Status`
  String get scr_esim_details_profile_status {
    return Intl.message(
      'Profile Status',
      name: 'scr_esim_details_profile_status',
      desc: '',
      args: [],
    );
  }

  /// `activation date`
  String get scr_esim_details_activation_date {
    return Intl.message(
      'activation date',
      name: 'scr_esim_details_activation_date',
      desc: '',
      args: [],
    );
  }

  /// `eSIM ID`
  String get scr_esim_details_esim_id {
    return Intl.message(
      'eSIM ID',
      name: 'scr_esim_details_esim_id',
      desc: '',
      args: [],
    );
  }

  /// `eSIM details`
  String get scr_esim_details_info_title {
    return Intl.message(
      'eSIM details',
      name: 'scr_esim_details_info_title',
      desc: '',
      args: [],
    );
  }

  /// `FAQs`
  String get scr_profile_user_faqs {
    return Intl.message(
      'FAQs',
      name: 'scr_profile_user_faqs',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get scr_profile_user_support {
    return Intl.message(
      'Support',
      name: 'scr_profile_user_support',
      desc: '',
      args: [],
    );
  }

  /// `Change language`
  String get scr_profile_user_change_language {
    return Intl.message(
      'Change language',
      name: 'scr_profile_user_change_language',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get scr_edit_profile_last_name {
    return Intl.message(
      'Last Name',
      name: 'scr_edit_profile_last_name',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get scr_edit_profile_first_name {
    return Intl.message(
      'First Name',
      name: 'scr_edit_profile_first_name',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get scr_terms_conditions_title {
    return Intl.message(
      'Terms & Conditions',
      name: 'scr_terms_conditions_title',
      desc: '',
      args: [],
    );
  }

  /// `Edit profile`
  String get scr_edit_profile_title {
    return Intl.message(
      'Edit profile',
      name: 'scr_edit_profile_title',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get scr_profile_user_edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'scr_profile_user_edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Preferences`
  String get scr_profile_user_preferences {
    return Intl.message(
      'Preferences',
      name: 'scr_profile_user_preferences',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get scr_profile_user_logout {
    return Intl.message(
      'Logout',
      name: 'scr_profile_user_logout',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get scr_edit_profile_email {
    return Intl.message(
      'Email',
      name: 'scr_edit_profile_email',
      desc: '',
      args: [],
    );
  }

  /// `Upload picture`
  String get scr_edit_profile_upload_picture {
    return Intl.message(
      'Upload picture',
      name: 'scr_edit_profile_upload_picture',
      desc: '',
      args: [],
    );
  }
}

class _AppLocalizationDelegate extends LocalizationsDelegate<Lt> {
  const _AppLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => Lt.supportedLocales.any(
      (supportedLocale) => supportedLocale.languageCode == locale.languageCode);

  @override
  Future<Lt> load(Locale locale) => Lt.load(locale);

  @override
  bool shouldReload(_AppLocalizationDelegate old) => false;
}
