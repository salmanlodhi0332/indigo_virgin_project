// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = MessageLookup();

typedef String? MessageIfAbsent(String? messageStr, List<Object>? args);

class MessageLookup extends MessageLookupByLibrary {
  @override
  String get localeName => 'en';

  static m0(max_cards_number) =>
      "You reached your max allowed cards ${max_cards_number}. Please remove one so you can add a new card.";

  static m1(app_name) =>
      "Get a free eSIM with this package, or add it to your existing ${app_name} eSIM.";

  static m2(package_data, package_validity, destination_name, app_name) =>
      "${package_data} / ${package_validity} travel eSIM for ${destination_name} by ${app_name}";

  @override
  final Map<String, dynamic> messages =
      _notInlinedMessages(_notInlinedMessages);

  static Map<String, dynamic> _notInlinedMessages(_) => {
        'scr_add_card_expiry_date':
            MessageLookupByLibrary.simpleMessage('Expiry date'),
        'scr_add_card_invalid_card_message': MessageLookupByLibrary.simpleMessage(
            'Invalid card data. Please re-enter your card number or try a different card.'),
        'scr_card_cantremove_header':
            MessageLookupByLibrary.simpleMessage('You can’t remove card #6029'),
        'scr_card_cantremove_subtitle': MessageLookupByLibrary.simpleMessage(
            'Your card is connected to a package that has Auto-renewal turned ON. Change your payment method to another card before removing this card.'),
        'scr_card_confirm_action_confirm':
            MessageLookupByLibrary.simpleMessage('Go to my package'),
        'scr_checkout_auto_renew_data_usage_description':
            MessageLookupByLibrary.simpleMessage(
                'Auto-renew my package as soon as I finish my data amount.'),
        'scr_checkout_auto_renew_data_usage_title':
            MessageLookupByLibrary.simpleMessage('Data Usage'),
        'scr_checkout_auto_renew_options_title':
            MessageLookupByLibrary.simpleMessage(
                'Select your auto-renew options:'),
        'scr_checkout_auto_renew_period_expiry_body':
            MessageLookupByLibrary.simpleMessage(
                'Auto-renew my package right on the expiry date.'),
        'scr_checkout_card_confirm':
            MessageLookupByLibrary.simpleMessage('Confirm'),
        'scr_checkout_card_confirm_deleting':
            MessageLookupByLibrary.simpleMessage('Confirm deleting card #6029'),
        'scr_checkout_card_delete':
            MessageLookupByLibrary.simpleMessage('Delete card'),
        'scr_checkout_card_dismiss':
            MessageLookupByLibrary.simpleMessage('Cancel'),
        'scr_checkout_card_manage_card':
            MessageLookupByLibrary.simpleMessage('Manage card #6029'),
        'scr_checkout_card_prefix':
            MessageLookupByLibrary.simpleMessage('Card ending in #6029'),
        'scr_checkout_credit_card':
            MessageLookupByLibrary.simpleMessage('New credit card'),
        'scr_checkout_error_max_cards_reached': m0,
        'scr_checkout_promo_code_invalid_message':
            MessageLookupByLibrary.simpleMessage(
                'Invalid promo code, please try again.'),
        'scr_checkout_success_cta':
            MessageLookupByLibrary.simpleMessage('Continue'),
        'scr_checkout_success_how_to_install_title':
            MessageLookupByLibrary.simpleMessage('How to install your eSIM'),
        'scr_checkout_success_payment_method':
            MessageLookupByLibrary.simpleMessage('Payment Method'),
        'scr_checkout_success_title':
            MessageLookupByLibrary.simpleMessage('Successful purchase'),
        'scr_checkout_success_traveling_dates_body':
            MessageLookupByLibrary.simpleMessage(
                'Add your travel date, so we can send you important reminders about your data package activation.'),
        'scr_checkout_success_traveling_dates_title':
            MessageLookupByLibrary.simpleMessage('When are you traveling?'),
        'scr_checkout_term_conditions_alert': MessageLookupByLibrary.simpleMessage(
            'Some missing inputs above, please fill in the missing information'),
        'scr_coverage_page_covered_countries':
            MessageLookupByLibrary.simpleMessage('Coverage countries'),
        'scr_coverage_page_list': MessageLookupByLibrary.simpleMessage('List'),
        'scr_edit_profile_email': MessageLookupByLibrary.simpleMessage('Email'),
        'scr_edit_profile_first_name':
            MessageLookupByLibrary.simpleMessage('First Name'),
        'scr_edit_profile_last_name':
            MessageLookupByLibrary.simpleMessage('Last Name'),
        'scr_edit_profile_title':
            MessageLookupByLibrary.simpleMessage('Edit profile'),
        'scr_edit_profile_upload_picture':
            MessageLookupByLibrary.simpleMessage('Upload picture'),
        'scr_error_no_internet_connection_body':
            MessageLookupByLibrary.simpleMessage(
                'Please make sure you have an active internet connection and try again.'),
        'scr_error_no_internet_connection_title':
            MessageLookupByLibrary.simpleMessage('No internet connection'),
        'scr_esim_details_activation_date':
            MessageLookupByLibrary.simpleMessage('activation date'),
        'scr_esim_details_active_packages':
            MessageLookupByLibrary.simpleMessage('Active Packages'),
        'scr_esim_details_esim_id':
            MessageLookupByLibrary.simpleMessage('eSIM ID'),
        'scr_esim_details_esim_pin':
            MessageLookupByLibrary.simpleMessage('PIN'),
        'scr_esim_details_esim_puk':
            MessageLookupByLibrary.simpleMessage('PUK'),
        'scr_esim_details_info_title':
            MessageLookupByLibrary.simpleMessage('eSIM details'),
        'scr_esim_details_profile_status':
            MessageLookupByLibrary.simpleMessage('Profile Status'),
        'scr_esim_details_rename_esim_esim_name':
            MessageLookupByLibrary.simpleMessage('eSIM Name'),
        'scr_esim_details_rename_esim_title':
            MessageLookupByLibrary.simpleMessage('Rename eSIM'),
        'scr_esim_details_show_qr_code':
            MessageLookupByLibrary.simpleMessage('Show eSIM\'s QR Code'),
        'scr_home1_search_body':
            MessageLookupByLibrary.simpleMessage('Destination'),
        'scr_login01_action_google':
            MessageLookupByLibrary.simpleMessage('Continue with Google'),
        'scr_login03_header':
            MessageLookupByLibrary.simpleMessage('Check your email'),
        'scr_onboarding1_header':
            MessageLookupByLibrary.simpleMessage('Stay connected abroad'),
        'scr_onboarding1_subtitle': MessageLookupByLibrary.simpleMessage(
            'Get eSIMs with generous data packages to use while traveling.'),
        'scr_onboarding2_header':
            MessageLookupByLibrary.simpleMessage('Fast and affordable'),
        'scr_onboarding2_subtitle': MessageLookupByLibrary.simpleMessage(
            'Get internet speeds up to 5G at affordable prices, no surprises here!'),
        'scr_onboarding3_action': MessageLookupByLibrary.simpleMessage('Skip'),
        'scr_onboarding3_header':
            MessageLookupByLibrary.simpleMessage('You\'re in control'),
        'scr_onboarding3_subtitle': MessageLookupByLibrary.simpleMessage(
            'We\'ll require some permissions to provide you with the best app experience.'),
        'scr_package_esim_body': m1,
        'scr_package_esim_name':
            MessageLookupByLibrary.simpleMessage('eSIM name'),
        'scr_package_esim_name_cta':
            MessageLookupByLibrary.simpleMessage('Save & Continue'),
        'scr_package_esim_name_text_placeholder':
            MessageLookupByLibrary.simpleMessage('Enter your eSIM name'),
        'scr_package_esim_name_title':
            MessageLookupByLibrary.simpleMessage('Name your eSIM'),
        'scr_package_esim_selector_title':
            MessageLookupByLibrary.simpleMessage('Choose an eSIM account'),
        'scr_package_plan_type_description': MessageLookupByLibrary.simpleMessage(
            'This is a data only package, meaning you can’t do phone calls or SMS messages with it. However you can do online calls normally like on these platforms and more:'),
        'scr_package_plan_type_description_cta':
            MessageLookupByLibrary.simpleMessage('Continue'),
        'scr_package_regional_data_package':
            MessageLookupByLibrary.simpleMessage(
                'Africa regional data package'),
        'scr_packagedetails_lbl_history':
            MessageLookupByLibrary.simpleMessage('history'),
        'scr_packages_empty_header_no_data_packages':
            MessageLookupByLibrary.simpleMessage(
                'You don’t have any data packages yet'),
        'scr_packages_empty_subtitle_no_packages_note':
            MessageLookupByLibrary.simpleMessage(
                'Your data packages will show up here once you complete a purchase.'),
        'scr_packages_lbl_activated_on_arrival_queued':
            MessageLookupByLibrary.simpleMessage('To be activated on arrival'),
        'scr_packages_lbl_active_attention':
            MessageLookupByLibrary.simpleMessage('Attention'),
        'scr_packages_lbl_active_packages':
            MessageLookupByLibrary.simpleMessage('Active packages'),
        'scr_packages_lbl_active_tab':
            MessageLookupByLibrary.simpleMessage('Active'),
        'scr_packages_notloggedin_header_hello':
            MessageLookupByLibrary.simpleMessage('Hello, Traveller'),
        'scr_packages_notloggedin_header_not_logged_in':
            MessageLookupByLibrary.simpleMessage('You are not logged in'),
        'scr_packages_notloggedin_subtitle_not_logged_in_note':
            MessageLookupByLibrary.simpleMessage(
                'Login to view your data packages or buy new ones.'),
        'scr_packages_subtitle_expired':
            MessageLookupByLibrary.simpleMessage('Expired'),
        'scr_packages_subtitle_expired_on':
            MessageLookupByLibrary.simpleMessage('expired on 20/09/2023'),
        'scr_packages_subtitle_expired_on62':
            MessageLookupByLibrary.simpleMessage('expired on 24/10/2023'),
        'scr_packages_subtitle_expires_on':
            MessageLookupByLibrary.simpleMessage('expires on 30/11/2023'),
        'scr_packages_subtitle_remaining_out_of_expired':
            MessageLookupByLibrary.simpleMessage('0 of 10GBs remaining'),
        'scr_packages_subtitle_remaining_percent':
            MessageLookupByLibrary.simpleMessage('60% remaining'),
        'scr_packages_subtitle_remaining_percent_expired':
            MessageLookupByLibrary.simpleMessage('0% remaining'),
        'scr_paymentmethod_header_change_payment':
            MessageLookupByLibrary.simpleMessage('Change payment method'),
        'scr_profile_user_change_language':
            MessageLookupByLibrary.simpleMessage('Change language'),
        'scr_profile_user_edit_profile':
            MessageLookupByLibrary.simpleMessage('Edit Profile'),
        'scr_profile_user_faqs': MessageLookupByLibrary.simpleMessage('FAQs'),
        'scr_profile_user_logout':
            MessageLookupByLibrary.simpleMessage('Logout'),
        'scr_profile_user_preferences':
            MessageLookupByLibrary.simpleMessage('Preferences'),
        'scr_profile_user_support':
            MessageLookupByLibrary.simpleMessage('Support'),
        'scr_renewalsheet_action_save':
            MessageLookupByLibrary.simpleMessage('Save'),
        'scr_renewalsheet_header_renew_upon':
            MessageLookupByLibrary.simpleMessage('Renew on:'),
        'scr_renewalsheet_lbl_monthly_limit':
            MessageLookupByLibrary.simpleMessage('Monthly limit'),
        'scr_search_all_countries':
            MessageLookupByLibrary.simpleMessage('All countries'),
        'scr_search_no_results_body': MessageLookupByLibrary.simpleMessage(
            'Please enter a valid country name.'),
        'scr_search_no_results_title':
            MessageLookupByLibrary.simpleMessage('No matches'),
        'scr_search_results_postfix':
            MessageLookupByLibrary.simpleMessage('3 matches'),
        'scr_share_subtitle': m2,
        'scr_share_title': MessageLookupByLibrary.simpleMessage('QR Code'),
        'scr_signup04_lbl_first_name':
            MessageLookupByLibrary.simpleMessage('First name'),
        'scr_signup04_lbl_last_name':
            MessageLookupByLibrary.simpleMessage('Last name'),
        'scr_signup05_header_all_set':
            MessageLookupByLibrary.simpleMessage('All set'),
        'scr_signup05_subtitle':
            MessageLookupByLibrary.simpleMessage('Let\'s get you started!'),
        'scr_signup_emailinvalid_labl_invalid_email_error':
            MessageLookupByLibrary.simpleMessage(
                'Invalid email. Please type a correct email address.'),
        'scr_signup_linkresent5times_subtitle':
            MessageLookupByLibrary.simpleMessage(
                'You\'ve exceeded your email verification trial limit, please try again after 1 hour'),
        'scr_signup_linkresent_subtitle_tryagain':
            MessageLookupByLibrary.simpleMessage(
                'Didn\'t get the email? try again in 30 seconds.'),
        'scr_terms_conditions_title':
            MessageLookupByLibrary.simpleMessage('Terms & Conditions')
      };
}
