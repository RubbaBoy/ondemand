import 'base.dart';

/// Url: https://ondemand.rit.edu/api/atrium/getAtriumTendersFromPaymentTypeList
/// Method: POST
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  // request#businessContext
  final String businessContext;

  Request({this.businessContext, Map<String, String> headers = const {}})
      : super(headers);

  Request.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : businessContext = json['businessContext'],
        super(headers);

  Map<String, dynamic> toJson() => {'businessContext': businessContext};
}

/// Json path:
/// ```
/// response[]
/// ```
class Tender {
  // response[]#key
  final String key;
  // response[]#verificationCodeId
  final int verificationCodeId;
  // response[]#autoRemoveTax
  final bool autoRemoveTax;
  // response[]#isRestricted
  final bool isRestricted;

  Tender(
      {this.key,
      this.verificationCodeId,
      this.autoRemoveTax,
      this.isRestricted});
  String getKey() => key;

  Tender.fromJson(this.key, Map<String, dynamic> json)
      : verificationCodeId = json['verificationCodeId'],
        autoRemoveTax = json['autoRemoveTax'],
        isRestricted = json['isRestricted'];

  Map<String, dynamic> toJson() => {
        'verificationCodeId': verificationCodeId,
        'autoRemoveTax': autoRemoveTax,
        'isRestricted': isRestricted
      };
}

/// Url: https://ondemand.rit.edu/api/atrium/getAtriumTendersFromPaymentTypeList
/// Method: POST
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#response
  final List<Tender> tenders;

  Response({this.tenders, Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : tenders =
            json.keys.map((e) => Tender.fromJson(e, json[e] ?? {})).toList(),
        super(headers);

  Map<String, dynamic> toJson() => {
        'response': Map.fromIterables(
            tenders?.map((e) => e.getKey()), tenders?.map((e) => e?.toJson()))
      };
}

