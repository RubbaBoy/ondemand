import 'base.dart';

/// Url: https://ondemand.rit.edu/api/userProfile/decryptSamlCookie
/// Method: POST
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  // request#samlCookie
  final String samlCookie;

  Request({this.samlCookie, Map<String, String> headers = const {}})
      : super(headers);

  Request.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : samlCookie = json['samlCookie'],
        super(headers);

  Map<String, dynamic> toJson() => {'samlCookie': samlCookie};
}

/// Json path:
/// ```
/// response.profile
/// ```
class Profile {
  // response.profile#issuer
  final String issuer;
  // response.profile#inResponseTo
  final String inResponseTo;
  // response.profile#sessionIndex
  final String sessionIndex;
  // response.profile#nameID
  final String nameID;
  // response.profile#nameIDFormat
  final String nameIDFormat;
  // response.profile#nameQualifier
  final String nameQualifier;
  // response.profile#spNameQualifier
  final String spNameQualifier;
  // response.profile#urn:oid:1.3.6.1.4.1.4447.1.20
  final String urnOid1361414447120;

  Profile(
      {this.issuer,
      this.inResponseTo,
      this.sessionIndex,
      this.nameID,
      this.nameIDFormat,
      this.nameQualifier,
      this.spNameQualifier,
      this.urnOid1361414447120});

  Profile.fromJson(Map<String, dynamic> json)
      : issuer = json['issuer'],
        inResponseTo = json['inResponseTo'],
        sessionIndex = json['sessionIndex'],
        nameID = json['nameID'],
        nameIDFormat = json['nameIDFormat'],
        nameQualifier = json['nameQualifier'],
        spNameQualifier = json['spNameQualifier'],
        urnOid1361414447120 = json['urn:oid:1.3.6.1.4.1.4447.1.20'];

  Map<String, dynamic> toJson() => {
        'issuer': issuer,
        'inResponseTo': inResponseTo,
        'sessionIndex': sessionIndex,
        'nameID': nameID,
        'nameIDFormat': nameIDFormat,
        'nameQualifier': nameQualifier,
        'spNameQualifier': spNameQualifier,
        'urn:oid:1.3.6.1.4.1.4447.1.20': urnOid1361414447120
      };
}

/// Url: https://ondemand.rit.edu/api/userProfile/decryptSamlCookie
/// Method: POST
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#profile
  final Profile profile;

  Response({this.profile, Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : profile = Profile.fromJson(json['profile'] ?? {}),
        super(headers);

  Map<String, dynamic> toJson() => {'profile': profile?.toJson()};
}

