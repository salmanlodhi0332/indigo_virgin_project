class Urls {
  static const String issuer =
      'http://keycloak-uat-keycloak-sso.apps.beyondonelink.8diq.p1.openshiftapps.com/realms/bol';

  static const String deviceRegister =
      'http://esim-management-uat-travel-e-sim.apps.beyondonelink.8diq.p1.openshiftapps.com/api/v1/register';

  static const String createOrder =
      'http://esim-management-uat-travel-e-sim.apps.beyondonelink.8diq.p1.openshiftapps.com/api/v1/order';    
  static const String logIn = '$issuer/protocol/openid-connect/token';
  static const String signInUrl =
      'http://keycloak-uat-keycloak-sso.apps.beyondonelink.8diq.p1.openshiftapps.com/admin/realms/bol/users';
  static const String logOutUrl = '$issuer/protocol/openid-connect/logout';
  static const String userInfoUrl = '$issuer/protocol/openid-connect/userinfo';
  static const String socialsUrl = '$issuer/protocol/openid-connect/auth';
}
