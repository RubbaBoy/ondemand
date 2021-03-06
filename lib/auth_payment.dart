import 'base.dart';

/// Json path:
/// ```
/// request.atriumAccount.amount
/// ```
class Amount {
  // request.atriumAccount.amount#remaining
  final String remaining;
  // request.atriumAccount.amount#currency
  final String currency;
  // request.atriumAccount.amount#applied
  final String applied;
  // request.atriumAccount.amount#total
  final String total;

  Amount({this.remaining, this.currency, this.applied, this.total});

  Amount.fromJson(Map<String, dynamic> json)
      : remaining = json['remaining'],
        currency = json['currency'],
        applied = json['applied'],
        total = json['total'];

  Map<String, dynamic> toJson() => {
        'remaining': remaining,
        'currency': currency,
        'applied': applied,
        'total': total
      };
}

/// Json path:
/// ```
/// request.atriumAccount
/// ```
class AtriumAccount {
  // request.atriumAccount#tenderId
  final String tenderId;
  // request.atriumAccount#txid
  final int txid;
  // request.atriumAccount#approved
  final int approved;
  // request.atriumAccount#code
  final String code;
  // request.atriumAccount#message
  final String message;
  // request.atriumAccount#time
  final int time;
  // request.atriumAccount#amount
  final Amount amount;
  // request.atriumAccount#accounts
  final List<Accounts> accounts;
  // request.atriumAccount#type
  final String type;
  // request.atriumAccount#taxRemoved
  final bool taxRemoved;
  // request.atriumAccount#displayName
  final String displayName;
  // request.atriumAccount#atriumTenderId
  final String atriumTenderId;
  // request.atriumAccount#tenderType
  final String tenderType;
  // request.atriumAccount#taxExemptTenderId
  final String taxExemptTenderId;
  // request.atriumAccount#taxableTenderId
  final String taxableTenderId;
  // request.atriumAccount#isAuthUsingTaxableTenderId
  final bool isAuthUsingTaxableTenderId;
  // request.atriumAccount#isRestricted
  final bool isRestricted;
  // request.atriumAccount#isPaymentAccount
  final bool isPaymentAccount;
  // request.atriumAccount#paymentEnabled
  final bool paymentEnabled;
  // request.atriumAccount#displayLabel
  final String displayLabel;
  // request.atriumAccount#instructionText
  final String instructionText;
  // request.atriumAccount#valid
  final bool valid;

  AtriumAccount(
      {this.tenderId,
      this.txid,
      this.approved,
      this.code,
      this.message,
      this.time,
      this.amount,
      this.accounts,
      this.type,
      this.taxRemoved,
      this.displayName,
      this.atriumTenderId,
      this.tenderType,
      this.taxExemptTenderId,
      this.taxableTenderId,
      this.isAuthUsingTaxableTenderId,
      this.isRestricted,
      this.isPaymentAccount,
      this.paymentEnabled,
      this.displayLabel,
      this.instructionText,
      this.valid});

  AtriumAccount.fromJson(Map<String, dynamic> json)
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
        taxRemoved = json['taxRemoved'],
        displayName = json['displayName'],
        atriumTenderId = json['atriumTenderId'],
        tenderType = json['tenderType'],
        taxExemptTenderId = json['taxExemptTenderId'],
        taxableTenderId = json['taxableTenderId'],
        isAuthUsingTaxableTenderId = json['isAuthUsingTaxableTenderId'],
        isRestricted = json['isRestricted'],
        isPaymentAccount = json['isPaymentAccount'],
        paymentEnabled = json['paymentEnabled'],
        displayLabel = json['displayLabel'],
        instructionText = json['instructionText'],
        valid = json['valid'];

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
        'taxRemoved': taxRemoved,
        'displayName': displayName,
        'atriumTenderId': atriumTenderId,
        'tenderType': tenderType,
        'taxExemptTenderId': taxExemptTenderId,
        'taxableTenderId': taxableTenderId,
        'isAuthUsingTaxableTenderId': isAuthUsingTaxableTenderId,
        'isRestricted': isRestricted,
        'isPaymentAccount': isPaymentAccount,
        'paymentEnabled': paymentEnabled,
        'displayLabel': displayLabel,
        'instructionText': instructionText,
        'valid': valid
      };
}

/// Json path:
/// ```
/// request.paymentTenderInfo[]
/// ```
class PaymentTenderInfoNum {
  // request.paymentTenderInfo[]#key
  final String key;
  // request.paymentTenderInfo[]#verificationCodeId
  final int verificationCodeId;

  PaymentTenderInfoNum({this.key, this.verificationCodeId});
  String getKey() => key;

  PaymentTenderInfoNum.fromJson(this.key, Map<String, dynamic> json)
      : verificationCodeId = json['verificationCodeId'];

  Map<String, dynamic> toJson() => {'verificationCodeId': verificationCodeId};
}

/// Json path:
/// ```
/// request.paymentTenderInfo
/// ```
class PaymentTenderInfo {
  // request.paymentTenderInfo#paymentTenderInfo
  final List<PaymentTenderInfoNum> paymentTenderInfo;

  PaymentTenderInfo({this.paymentTenderInfo});

  PaymentTenderInfo.fromJson(Map<String, dynamic> json)
      : paymentTenderInfo = json.keys
            .map((e) => PaymentTenderInfoNum.fromJson(e, json[e] ?? {}))
            .toList();

  Map<String, dynamic> toJson() => {
        'paymentTenderInfo': Map.fromIterables(
            paymentTenderInfo?.map((e) => e.getKey()),
            paymentTenderInfo?.map((e) => e?.toJson()))
      };
}

/// Url: https://ondemand.rit.edu/api/atrium/authAtriumPayment
/// Method: POST
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  // request#atriumAccount
  final AtriumAccount atriumAccount;
  // request#amountToCharge
  final double amountToCharge;
  // request#totalTaxAmount
  final double totalTaxAmount;
  // request#tenantId
  final String tenantId;
  // request#contextId
  final String contextId;
  // request#tenderId
  final String tenderId;
  // request#terminalId
  final String terminalId;
  // request#onDemandIgVerificationCodeId
  final String onDemandIgVerificationCodeId;
  // request#id
  final String id;
  // request#currencyDetails
  final CurrencyDetails currencyDetails;
  // request#multiPaymentEnabled
  final bool multiPaymentEnabled;
  // request#remainingToPaid
  final double remainingToPaid;
  // request#isAllTaxExempt
  final bool isAllTaxExempt;
  // request#currency
  final String currency;
  // request#paymentTenderInfo
  final PaymentTenderInfo paymentTenderInfo;
  // request#isTaxablePayment
  final bool isTaxablePayment;

  Request(
      {this.atriumAccount,
      this.amountToCharge,
      this.totalTaxAmount,
      this.tenantId,
      this.contextId,
      this.tenderId,
      this.terminalId,
      this.onDemandIgVerificationCodeId,
      this.id,
      this.currencyDetails,
      this.multiPaymentEnabled,
      this.remainingToPaid,
      this.isAllTaxExempt,
      this.currency,
      this.paymentTenderInfo,
      this.isTaxablePayment,
      Map<String, String> headers = const {}})
      : super(headers);

  Request.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : atriumAccount = AtriumAccount.fromJson(json['atriumAccount'] ?? {}),
        amountToCharge = json['amountToCharge'],
        totalTaxAmount = json['totalTaxAmount'],
        tenantId = json['tenantId'],
        contextId = json['contextId'],
        tenderId = json['tenderId'],
        terminalId = json['terminalId'],
        onDemandIgVerificationCodeId = json['onDemandIgVerificationCodeId'],
        id = json['id'],
        currencyDetails =
            CurrencyDetails.fromJson(json['currencyDetails'] ?? {}),
        multiPaymentEnabled = json['multiPaymentEnabled'],
        remainingToPaid = json['remainingToPaid'],
        isAllTaxExempt = json['isAllTaxExempt'],
        currency = json['currency'],
        paymentTenderInfo =
            PaymentTenderInfo.fromJson(json['paymentTenderInfo'] ?? {}),
        isTaxablePayment = json['isTaxablePayment'],
        super(headers);

  Map<String, dynamic> toJson() => {
        'atriumAccount': atriumAccount?.toJson(),
        'amountToCharge': amountToCharge,
        'totalTaxAmount': totalTaxAmount,
        'tenantId': tenantId,
        'contextId': contextId,
        'tenderId': tenderId,
        'terminalId': terminalId,
        'onDemandIgVerificationCodeId': onDemandIgVerificationCodeId,
        'id': id,
        'currencyDetails': currencyDetails?.toJson(),
        'multiPaymentEnabled': multiPaymentEnabled,
        'remainingToPaid': remainingToPaid,
        'isAllTaxExempt': isAllTaxExempt,
        'currency': currency,
        'paymentTenderInfo': paymentTenderInfo?.toJson(),
        'isTaxablePayment': isTaxablePayment
      };
}

/// Json path:
/// ```
/// response.data.paymentData.paymentRequest.paymentAction.properties
/// ```
class Properties {
  Properties.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

/// Json path:
/// ```
/// response.data.paymentData.paymentRequest.paymentAction
/// ```
class PaymentAction {
  // response.data.paymentData.paymentRequest.paymentAction#type
  final String type;
  // response.data.paymentData.paymentRequest.paymentAction#properties
  final Properties properties;

  PaymentAction({this.type, this.properties});

  PaymentAction.fromJson(Map<String, dynamic> json)
      : type = json['type'],
        properties = Properties.fromJson(json['properties'] ?? {});

  Map<String, dynamic> toJson() =>
      {'type': type, 'properties': properties?.toJson()};
}

/// Json path:
/// ```
/// response.data.paymentData.paymentRequest
/// ```
class PaymentRequest {
  // response.data.paymentData.paymentRequest#tenantId
  final String tenantId;
  // response.data.paymentData.paymentRequest#contextId
  final String contextId;
  // response.data.paymentData.paymentRequest#paymentAction
  final PaymentAction paymentAction;
  // response.data.paymentData.paymentRequest#currencyUnit
  final String currencyUnit;
  // response.data.paymentData.paymentRequest#paymentProviderId
  final String paymentProviderId;
  // response.data.paymentData.paymentRequest#transactionData
  final TransactionData transactionData;
  // response.data.paymentData.paymentRequest#properties
  final Properties properties;

  PaymentRequest(
      {this.tenantId,
      this.contextId,
      this.paymentAction,
      this.currencyUnit,
      this.paymentProviderId,
      this.transactionData,
      this.properties});

  PaymentRequest.fromJson(Map<String, dynamic> json)
      : tenantId = json['tenantId'],
        contextId = json['contextId'],
        paymentAction = PaymentAction.fromJson(json['paymentAction'] ?? {}),
        currencyUnit = json['currencyUnit'],
        paymentProviderId = json['paymentProviderId'],
        transactionData =
            TransactionData.fromJson(json['transactionData'] ?? {}),
        properties = Properties.fromJson(json['properties'] ?? {});

  Map<String, dynamic> toJson() => {
        'tenantId': tenantId,
        'contextId': contextId,
        'paymentAction': paymentAction?.toJson(),
        'currencyUnit': currencyUnit,
        'paymentProviderId': paymentProviderId,
        'transactionData': transactionData?.toJson(),
        'properties': properties?.toJson()
      };
}

/// Json path:
/// ```
/// response.data.paymentData.paymentResponse
/// ```
class PaymentResponse {
  // response.data.paymentData.paymentResponse#paymentProviderId
  final String paymentProviderId;
  // response.data.paymentData.paymentResponse#transactionData
  final TransactionData transactionData;
  // response.data.paymentData.paymentResponse#paymentSupport
  final PaymentSupport paymentSupport;
  // response.data.paymentData.paymentResponse#properties
  final Properties properties;

  PaymentResponse(
      {this.paymentProviderId,
      this.transactionData,
      this.paymentSupport,
      this.properties});

  PaymentResponse.fromJson(Map<String, dynamic> json)
      : paymentProviderId = json['paymentProviderId'],
        transactionData =
            TransactionData.fromJson(json['transactionData'] ?? {}),
        paymentSupport = PaymentSupport.fromJson(json['paymentSupport'] ?? {}),
        properties = Properties.fromJson(json['properties'] ?? {});

  Map<String, dynamic> toJson() => {
        'paymentProviderId': paymentProviderId,
        'transactionData': transactionData?.toJson(),
        'paymentSupport': paymentSupport?.toJson(),
        'properties': properties?.toJson()
      };
}

/// Json path:
/// ```
/// response.data.paymentData
/// ```
class PaymentData {
  // response.data.paymentData#id
  final String id;
  // response.data.paymentData#paymentRequest
  final PaymentRequest paymentRequest;
  // response.data.paymentData#paymentResponse
  final PaymentResponse paymentResponse;

  PaymentData({this.id, this.paymentRequest, this.paymentResponse});

  PaymentData.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        paymentRequest = PaymentRequest.fromJson(json['paymentRequest'] ?? {}),
        paymentResponse =
            PaymentResponse.fromJson(json['paymentResponse'] ?? {});

  Map<String, dynamic> toJson() => {
        'id': id,
        'paymentRequest': paymentRequest?.toJson(),
        'paymentResponse': paymentResponse?.toJson()
      };
}

/// Json path:
/// ```
/// response.data
/// ```
class Data {
  // response.data#paymentData
  final PaymentData paymentData;
  // response.data#digitalSignature
  final DigitalSignature digitalSignature;

  Data({this.paymentData, this.digitalSignature});

  Data.fromJson(Map<String, dynamic> json)
      : paymentData = PaymentData.fromJson(json['paymentData'] ?? {}),
        digitalSignature =
            DigitalSignature.fromJson(json['digitalSignature'] ?? {});

  Map<String, dynamic> toJson() => {
        'paymentData': paymentData?.toJson(),
        'digitalSignature': digitalSignature?.toJson()
      };
}

/// Url: https://ondemand.rit.edu/api/atrium/authAtriumPayment
/// Method: POST
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#isAllTaxExempt
  final bool isAllTaxExempt;
  // response#completePayment
  final bool completePayment;
  // response#atriumResponseToken
  final String atriumResponseToken;
  // response#data
  final Data data;

  Response(
      {this.isAllTaxExempt,
      this.completePayment,
      this.atriumResponseToken,
      this.data,
      Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : isAllTaxExempt = json['isAllTaxExempt'],
        completePayment = json['completePayment'],
        atriumResponseToken = json['atriumResponseToken'],
        data = Data.fromJson(json['data'] ?? {}),
        super(headers);

  Map<String, dynamic> toJson() => {
        'isAllTaxExempt': isAllTaxExempt,
        'completePayment': completePayment,
        'atriumResponseToken': atriumResponseToken,
        'data': data?.toJson()
      };
}

