import 'dart:convert';

class AccessToken {
  final String accessToken;
  final int expiresIn;
  final String tokenType;
  final int notBeforePolicy;
  final String scope;

  AccessToken({
    required this.accessToken,
    required this.expiresIn,
    required this.tokenType,
    required this.notBeforePolicy,
    required this.scope,
  });

  factory AccessToken.initial() {
    return AccessToken(
      accessToken: '',
      expiresIn: -1,
      tokenType: '',
      notBeforePolicy: -1,
      scope: '',
    );
  }

  AccessToken copyWith({
    String? accessToken,
    int? expiresIn,
    String? tokenType,
    int? notBeforePolicy,
    String? scope,
  }) {
    return AccessToken(
      accessToken: accessToken ?? this.accessToken,
      expiresIn: expiresIn ?? this.expiresIn,
      tokenType: tokenType ?? this.tokenType,
      notBeforePolicy: notBeforePolicy ?? this.notBeforePolicy,
      scope: scope ?? this.scope,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_token': accessToken,
      'expires_in': expiresIn,
      'token_type': tokenType,
      'not-before-policy': notBeforePolicy,
      'scope': scope,
    };
  }

  factory AccessToken.fromMap(Map<String, dynamic> map) {
    return AccessToken(
      accessToken: map['access_token'] as String,
      expiresIn: map['expires_in'] as int,
      tokenType: map['token_type'] as String,
      notBeforePolicy: map['not-before-policy'] as int,
      scope: map['scope'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AccessToken.fromJson(String source) =>
      AccessToken.fromMap(json.decode(source));
}
