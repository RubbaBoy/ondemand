import 'base.dart';

/// Url: https://ondemand.rit.edu/api/communication/sendSMSReceipt
/// Method: POST
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  // request#sendOrderTo
  final String sendOrderTo;
  // request#contextId
  final String contextId;
  // request#receiptText
  final String receiptText;

  Request(
      {this.sendOrderTo,
      this.contextId,
      this.receiptText,
      Map<String, String> headers = const {}})
      : super(headers);

  Request.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : sendOrderTo = json['sendOrderTo'],
        contextId = json['contextId'],
        receiptText = json['receiptText'],
        super(headers);

  Map<String, dynamic> toJson() => {
        'sendOrderTo': sendOrderTo,
        'contextId': contextId,
        'receiptText': receiptText
      };
}

/// Url: https://ondemand.rit.edu/api/communication/sendSMSReceipt
/// Method: POST
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#id
  final String id;

  Response({this.id, Map<String, String> headers = const {}}) : super(headers);

  Response.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : id = json['id'],
        super(headers);

  Map<String, dynamic> toJson() => {'id': id};
}

