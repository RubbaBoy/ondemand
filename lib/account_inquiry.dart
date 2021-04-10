import 'base.dart';

/// Json path:
/// ```
/// request.request.data
/// ```
class Data {
  // request.request.data#tenantId
  final String tenantId;
  // request.request.data#contextId
  final String contextId;
  // request.request.data#tenderId
  final String tenderId;
  // request.request.data#atriumTerminal
  final AtriumTerminal atriumTerminal;
  // request.request.data#customer
  final Customer customer;

  Data(
      {this.tenantId,
      this.contextId,
      this.tenderId,
      this.atriumTerminal,
      this.customer});

  Data.fromJson(Map<String, dynamic> json)
      : tenantId = json['tenantId'],
        contextId = json['contextId'],
        tenderId = json['tenderId'],
        atriumTerminal = AtriumTerminal.fromJson(json['atriumTerminal'] ?? {}),
        customer = Customer.fromJson(json['customer'] ?? {});

  Map<String, dynamic> toJson() => {
        'tenantId': tenantId,
        'contextId': contextId,
        'tenderId': tenderId,
        'atriumTerminal': atriumTerminal?.toJson(),
        'customer': customer?.toJson()
      };
}

/// Json path:
/// ```
/// request.request
/// ```
class Inquiry {
  // request.request#tenderId
  final String tenderId;
  // request.request#data
  final Data data;

  Inquiry({this.tenderId, this.data});

  Inquiry.fromJson(Map<String, dynamic> json)
      : tenderId = json['tenderId'],
        data = Data.fromJson(json['data'] ?? {});

  Map<String, dynamic> toJson() =>
      {'tenderId': tenderId, 'data': data?.toJson()};
}

/// Url: https://ondemand.rit.edu/api/atrium/accountInquiry
/// Method: POST
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  // request#request
  final List<Inquiry> inquiries;

  Request({this.inquiries, Map<String, String> headers = const {}})
      : super(headers);

  Request.fromJson(dynamic json, Map<String, String> headers)
      : inquiries =
            (json as List)?.map((e) => Inquiry.fromJson(e ?? {}))?.toList(),
        super(headers);

  List<dynamic> toJson() => inquiries?.map((e) => e?.toJson())?.toList();
}

/// Json path:
/// ```
/// response.response
/// ```
class InquiryResponse {
  // response.response#tenderId
  final String tenderId;
  // response.response#txid
  final int txid;
  // response.response#approved
  final int approved;
  // response.response#code
  final String code;
  // response.response#message
  final String message;
  // response.response#time
  final int time;
  // response.response#amount
  final Amount amount;
  // response.response#accounts
  final List<Accounts> accounts;
  // response.response#type
  final String type;
  // response.response#taxRemoved
  final bool taxRemoved;

  InquiryResponse(
      {this.tenderId,
      this.txid,
      this.approved,
      this.code,
      this.message,
      this.time,
      this.amount,
      this.accounts,
      this.type,
      this.taxRemoved});

  InquiryResponse.fromJson(Map<String, dynamic> json)
      : tenderId = json['tenderId'],
        txid = json['txid'],
        approved = json['approved'],
        code = json['code'],
        message = json['message'],
        time = json['time'],
        amount = Amount.fromJson(json['amount'] ?? {}),
        accounts = (json['accounts'] as List)
            ?.map((e) => Accounts.fromJson(e ?? {}))
            ?.toList(),
        type = json['type'],
        taxRemoved = json['taxRemoved'];

  Map<String, dynamic> toJson() => {
        'tenderId': tenderId,
        'txid': txid,
        'approved': approved,
        'code': code,
        'message': message,
        'time': time,
        'amount': amount?.toJson(),
        'accounts': accounts?.map((e) => e?.toJson())?.toList(),
        'type': type,
        'taxRemoved': taxRemoved
      };
}

/// Url: https://ondemand.rit.edu/api/atrium/accountInquiry
/// Method: POST
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#response
  final List<InquiryResponse> inquiries;

  Response({this.inquiries, Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(dynamic json, Map<String, String> headers)
      : inquiries = (json as List)
            ?.map((e) => InquiryResponse.fromJson(e ?? {}))
            ?.toList(),
        super(headers);

  List<dynamic> toJson() => inquiries?.map((e) => e?.toJson())?.toList();
}

