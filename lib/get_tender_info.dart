import 'base.dart';

/// Url: https://ondemand.rit.edu/api/order/getPaymentTenderInfo
/// Method: POST
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  // request#contextId
  final String contextId;
  // request#tenderList
  final List<String> tenderList;

  Request(
      {this.contextId, this.tenderList, Map<String, String> headers = const {}})
      : super(headers);

  Request.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : contextId = json['contextId'],
        tenderList = json['tenderList']?.cast<String>(),
        super(headers);

  Map<String, dynamic> toJson() =>
      {'contextId': contextId, 'tenderList': tenderList};
}

/// Url: https://ondemand.rit.edu/api/order/getPaymentTenderInfo
/// Method: POST
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#response
  final List<TenderInfo> tenderInfos;

  Response({this.tenderInfos, Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : tenderInfos = json.keys
            .map((e) => TenderInfo.fromJson(e, json[e] ?? {}))
            .toList(),
        super(headers);

  Map<String, dynamic> toJson() => {
        'response': Map.fromIterables(tenderInfos?.map((e) => e.getKey()),
            tenderInfos?.map((e) => e?.toJson()))
      };
}

