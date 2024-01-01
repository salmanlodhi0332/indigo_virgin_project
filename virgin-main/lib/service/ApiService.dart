import 'dart:convert';
import 'dart:io';
import 'package:bot_toast/bot_toast.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:esim2/Models/destination_detail_model.dart';
import 'package:esim2/Models/destination_model.dart';
import 'package:esim2/main.dart';
import 'package:esim2/service/FirebaseMessaging.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../Models/access_token_model.dart';
import '../Models/places_group_model.dart';
import '../constants/urls.dart';
import 'package:http/http.dart' as http;
import 'dart:ui' as ui;

AccessToken? accessToken;

class ApiService extends GetConnect {
  Future<PlacesGroups> fetchPlacesGroups() async {
    try {
      final response = await get(
          'http://product-catalog-uat-travel-e-sim.apps.beyondonelink.8diq.p1.openshiftapps.com/destination/groups');
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        final data = response.body;

        return PlacesGroups.fromJson(data);
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Destinations> fetchPlacesDestinations() async {
    try {
      final response = await get(
          'http://product-catalog-uat-travel-e-sim.apps.beyondonelink.8diq.p1.openshiftapps.com/destination');
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        final data = response.body;
        return Destinations.fromJson(data);
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<DestinationDetail> fetchPlacesDestinationDetails(String iso) async {
    try {
      final response = await get(
          'http://product-catalog-uat-travel-e-sim.apps.beyondonelink.8diq.p1.openshiftapps.com/databundle/destination/$iso');
      if (response.status.hasError) {
        return Future.error(response.statusText!);
      } else {
        final data = response.body;
        return DestinationDetail.fromJson(data);
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  //* *********************** Log In ************************************
  Future<String?> doLogIn(
      {required String username, required String password}) async {
    try {
      final Map<String, String> headers = {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Cookie':
            'f314fdc0d37aae64a8467c224bf23546=dfdb290db5c68ef9c681ed0ab595dce5'
      };
      //! ****** Static fields of auth *******
      // 'username': 'amr@incrediblepods.com',
      // 'password': 'password'
      // 'client_credentials'
      //! ************************************

      final Map<String, dynamic> body = {
        'grant_type': 'password',
        'client_id': 'admin-cli',
        'client_secret': 'kBWMU8CaVPw1hs8cS7yTyXyNK8tljqzp',
        'username': username,
        'password': password,
      };

      var response = await http.post(
        Uri.parse(Urls.logIn),
        headers: headers,
        body: body,
      );
      Map responseMap = json.decode(response.body);
      responseMap.forEach((k, v) => logger.d('$k: $v'));

      // logger.d(response.body);
      // print(response.body);

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        GetStorage().write("refreshtoken", result['refresh_token']);
        // accessToken = AccessToken.fromMap(result);

        return result['access_token'];
      } else {
        throw Error();
      }
    } catch (e) {
      logger.d(e);
      throw UnimplementedError(e.toString());
    }
  }

  //* *********************** Sign Up ************************************
  Future<bool> doSignIn({
    required String username,
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String token,
  }) async {
    try {
      final Map<String, String> headers = {
        'Content-Type': 'application/json',
        'Cookie':
            'f314fdc0d37aae64a8467c224bf23546=dfdb290db5c68ef9c681ed0ab595dce5',
        'Authorization': 'Bearer $token',
      };

      final Map<String, dynamic> body = {
        "username": email,
        "firstName": firstName,
        "lastName": lastName,
        "emailVerified": true,
        "email": email,
        "attributes": {"attribute_key": "test_value"},
        "credentials": [
          {"temporary": "", "type": "password", "value": password}
        ],
        "enabled": true,
      };
      // logger.d(headers);
      var response = await http.post(
        Uri.parse(Urls.signInUrl),
        headers: headers,
        body: jsonEncode(body),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return true;
      } else {
        if (jsonDecode(response.body)['errorMessage'] != null) {
          BotToast.showText(text: jsonDecode(response.body)['errorMessage']);
          return false;
        } else {
          return true;
        }
      }
    } catch (e) {
      print("Here is the null check");
      logger.d(e);
      return false;
    }
  }

  //* *********************** Create Order ************************************
  Future<bool> createOrder(
      {required String dataBundleId, required double price}) async {
    try {
      var bearertoken = GetStorage().read("bearertoken");
      final Map<String, String> headers = {
        'Content-Type': 'application/json',
        'Cookie':
            'f314fdc0d37aae64a8467c224bf23546=dfdb290db5c68ef9c681ed0ab595dce5',
        'Authorization': 'Bearer $bearertoken',
      };

      final Map<String, dynamic> body = {
        "DataBundleId": dataBundleId,
        "Iccid": '',
        "AutoRenewStatusDataAmount": true,
        "AutoRenewStatusPeriodExpiry": true,
        "PromoCode": '',
        "MonthlyCapAmount": 0,
        "FinalPriceCharged": price,
        "Type": 'ACTIVATION',
      };
      // logger.d(headers);
      var response = await http.post(
        Uri.parse(Urls.createOrder),
        headers: headers,
        body: jsonEncode(body),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return true;
      } else {
        if (jsonDecode(response.body)['errorMessage'] != null) {
          BotToast.showText(text: jsonDecode(response.body)['errorMessage']);
          return false;
        } else {
          return true;
        }
      }
    } catch (e) {
      print("Here is the null check");
      logger.d(e);
      return false;
    }
  }

  Future<void> registerDevice() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String? token = await FirebaseMessagingHandler.getToken();
    try {
      final Map<String, String> headers = {
        'Content-Type': 'application/json',
        'Cookie':
            'f314fdc0d37aae64a8467c224bf23546=dfdb290db5c68ef9c681ed0ab595dce5',
        // 'Authorization': 'Bearer $token',
      };

      final Map<String, dynamic> body = {
        "DeviceId": androidInfo.id,
        "AppVersion": packageInfo.version,
        "Platform": Platform.isIOS ? "IOS" : "Android",
        "DeviceLang": ui.window.locale.languageCode,
        "PushToken": token
      };
      // logger.d(headers);
      // logger.d("///////////////////////////");
      // logger.d(body);
      // logger.d("///////////////////////////");
      // logger.d(Urls.deviceRegister);

      var response = await http.post(
        Uri.parse(Urls.deviceRegister),
        headers: headers,
        body: jsonEncode(body),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        logger.d(response.body);

        logger.d(response.body);
      }
      logger.d(response.body);
    } catch (e) {
      logger.d('/////////////////////////////////////////////////////');
      print("Error");
      print("Here is the null check");
      print("////////////////////////////////////////////////////////");
      logger.d(e);
    }
  }

  Future<void> userInfo() async {
    try {
      var bearertoken = GetStorage().read("bearertoken");

      final Map<String, String> headers = {
        // 'Content-Type': 'application/x-www-form-urlencoded',
        'Authorization': 'Bearer $bearertoken',
      };

      var response = await http.get(
        Uri.parse(Urls.userInfoUrl),
        headers: headers,
        // body: body,
      );
      var responseBody = jsonDecode(response.body);

      // logger.d(response.body);
      print(responseBody);
    } catch (e) {
      logger.d(e);
      throw UnimplementedError(e.toString());
    }
  }

  //* *********************** Log Out ************************************
  Future<void> doLogOut(String token) async {
    try {
      var refrestoken = GetStorage().read('refresh_token');

      final Map<String, String> headers = {
        "Content-Type": "application/x-www-form-urlencoded",
        'Authorization': 'Bearer $token',
      };

      final Map<String, dynamic> body = {
        'client_id': 'admin-cli',
        'client_secret': 'kBWMU8CaVPw1hs8cS7yTyXyNK8tljqzp',
        "refresh_token": refrestoken,
      };

      var response = await http.post(
        Uri.parse(Urls.logOutUrl),
        headers: headers,
        body: jsonEncode(body),
      );

      logger.d(response.body);
    } catch (e) {
      logger.d(e);
      throw UnimplementedError(e.toString());
    }
  }

  //* *********************** Log In ************************************
  Future<String> getToken() async {
    try {
      final Map<String, String> headers = {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Cookie':
            'f314fdc0d37aae64a8467c224bf23546=dfdb290db5c68ef9c681ed0ab595dce5'
      };
      //! ****** Static fields of auth *******
      // 'username': 'amr@incrediblepods.com',
      // 'password': 'password'
      // 'client_credentials'
      //! ************************************

      final Map<String, dynamic> body = {
        'grant_type': 'client_credentials',
        'client_id': 'admin-cli',
        'client_secret': 'kBWMU8CaVPw1hs8cS7yTyXyNK8tljqzp',
      };

      var response = await http.post(
        Uri.parse(Urls.logIn),
        headers: headers,
        body: body,
      );
      // Map responseMap = json.decode(response.body);
      // responseMap.forEach((k, v) => logger.d('$k: $v'));

      // logger.d(response.body);
      // print(response.body);

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        // accessToken = AccessToken.fromMap(result);
        print("done");
        return result['access_token'];
      } else {
        throw Error();
      }
    } catch (e) {
      logger.d(e);
      throw UnimplementedError(e.toString());
    }
  }
}
