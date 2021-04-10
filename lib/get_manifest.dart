import 'base.dart';

/// Url: https://ondemand.rit.edu/static/assets/manifest.json
/// Method: GET
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  Request({Map<String, String> headers = const {}}) : super(headers);

  Request.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : super(headers);

  Map<String, dynamic> toJson() => {};
}

/// Url: https://ondemand.rit.edu/static/assets/manifest.json
/// Method: GET
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  Response({Map<String, String> headers = const {}}) : super(headers);

  Response.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : super(headers);

  Map<String, dynamic> toJson() => {};
}

