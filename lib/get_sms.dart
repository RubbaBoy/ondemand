import 'base.dart';

/// Json path:
/// ```
/// request.orderData.currencyInfo
/// ```
class CurrencyInfo {
  // request.orderData.currencyInfo#currencyCultureName
  final String currencyCultureName;
  // request.orderData.currencyInfo#currencyCode
  final String currencyCode;
  // request.orderData.currencyInfo#currencyDecimalDigits
  final String currencyDecimalDigits;
  // request.orderData.currencyInfo#currencySymbol
  final String currencySymbol;

  CurrencyInfo(
      {this.currencyCultureName,
      this.currencyCode,
      this.currencyDecimalDigits,
      this.currencySymbol});

  CurrencyInfo.fromJson(Map<String, dynamic> json)
      : currencyCultureName = json['currencyCultureName'],
        currencyCode = json['currencyCode'],
        currencyDecimalDigits = json['currencyDecimalDigits'],
        currencySymbol = json['currencySymbol'];

  Map<String, dynamic> toJson() => {
        'currencyCultureName': currencyCultureName,
        'currencyCode': currencyCode,
        'currencyDecimalDigits': currencyDecimalDigits,
        'currencySymbol': currencySymbol
      };
}

/// Json path:
/// ```
/// request.orderData.lineItems
/// ```
class LineItems {
  // request.orderData.lineItems#quantity
  final int quantity;
  // request.orderData.lineItems#price
  final String price;
  // request.orderData.lineItems#displayText
  final String displayText;
  // request.orderData.lineItems#splInstruction
  final String splInstruction;
  // request.orderData.lineItems#lineItemGroups
  final List<dynamic> lineItemGroups;

  LineItems(
      {this.quantity,
      this.price,
      this.displayText,
      this.splInstruction,
      this.lineItemGroups});

  LineItems.fromJson(Map<String, dynamic> json)
      : quantity = json['quantity'],
        price = json['price'],
        displayText = json['displayText'],
        splInstruction = json['splInstruction'],
        lineItemGroups = json['lineItemGroups'];

  Map<String, dynamic> toJson() => {
        'quantity': quantity,
        'price': price,
        'displayText': displayText,
        'splInstruction': splInstruction,
        'lineItemGroups': lineItemGroups
      };
}

/// Json path:
/// ```
/// request.orderData.paymentInfo
/// ```
class PaymentInfo {
  // request.orderData.paymentInfo#buyPaymentForm
  final String buyPaymentForm;
  // request.orderData.paymentInfo#showAuthorizationInfoOnReceipt
  final bool showAuthorizationInfoOnReceipt;
  // request.orderData.paymentInfo#atriumLabel
  final String atriumLabel;
  // request.orderData.paymentInfo#amountCharged
  final String amountCharged;
  // request.orderData.paymentInfo#currentBalance
  final String currentBalance;

  PaymentInfo(
      {this.buyPaymentForm,
      this.showAuthorizationInfoOnReceipt,
      this.atriumLabel,
      this.amountCharged,
      this.currentBalance});

  PaymentInfo.fromJson(Map<String, dynamic> json)
      : buyPaymentForm = json['buyPaymentForm'],
        showAuthorizationInfoOnReceipt = json['showAuthorizationInfoOnReceipt'],
        atriumLabel = json['atriumLabel'],
        amountCharged = json['amountCharged'],
        currentBalance = json['currentBalance'];

  Map<String, dynamic> toJson() => {
        'buyPaymentForm': buyPaymentForm,
        'showAuthorizationInfoOnReceipt': showAuthorizationInfoOnReceipt,
        'atriumLabel': atriumLabel,
        'amountCharged': amountCharged,
        'currentBalance': currentBalance
      };
}

/// Json path:
/// ```
/// request.orderData.smsReceiptOption
/// ```
class SmsReceiptOption {
  // request.orderData.smsReceiptOption#smsHeader
  final bool smsHeader;
  // request.orderData.smsReceiptOption#smsBody
  final bool smsBody;
  // request.orderData.smsReceiptOption#smsFooter
  final bool smsFooter;

  SmsReceiptOption({this.smsHeader, this.smsBody, this.smsFooter});

  SmsReceiptOption.fromJson(Map<String, dynamic> json)
      : smsHeader = json['smsHeader'],
        smsBody = json['smsBody'],
        smsFooter = json['smsFooter'];

  Map<String, dynamic> toJson() =>
      {'smsHeader': smsHeader, 'smsBody': smsBody, 'smsFooter': smsFooter};
}

/// Json path:
/// ```
/// request.orderData.storeInfo.properties
/// ```
class Properties {
  // request.orderData.storeInfo.properties#selectedLanguage
  final String selectedLanguage;
  // request.orderData.storeInfo.properties#taxIdentificationNumber
  final String taxIdentificationNumber;

  Properties({this.selectedLanguage, this.taxIdentificationNumber});

  Properties.fromJson(Map<String, dynamic> json)
      : selectedLanguage = json['selectedLanguage'],
        taxIdentificationNumber = json['taxIdentificationNumber'];

  Map<String, dynamic> toJson() => {
        'selectedLanguage': selectedLanguage,
        'taxIdentificationNumber': taxIdentificationNumber
      };
}

/// Json path:
/// ```
/// request.orderData.storeInfo
/// ```
class StoreInfo {
  // request.orderData.storeInfo#businessContextId
  final String businessContextId;
  // request.orderData.storeInfo#tenantId
  final String tenantId;
  // request.orderData.storeInfo#storeInfoId
  final String storeInfoId;
  // request.orderData.storeInfo#storeName
  final String storeName;
  // request.orderData.storeInfo#timezone
  final String timezone;
  // request.orderData.storeInfo#receiptFooterText
  final String receiptFooterText;
  // request.orderData.storeInfo#logoDetails
  final LogoDetails logoDetails;
  // request.orderData.storeInfo#properties
  final Properties properties;
  // request.orderData.storeInfo#storeInfoOptions
  final StoreInfoOptions storeInfoOptions;
  // request.orderData.storeInfo#taxIdentificationNumber
  final String taxIdentificationNumber;
  // request.orderData.storeInfo#address
  final List<String> address;
  // request.orderData.storeInfo#image
  final String image;

  StoreInfo(
      {this.businessContextId,
      this.tenantId,
      this.storeInfoId,
      this.storeName,
      this.timezone,
      this.receiptFooterText,
      this.logoDetails,
      this.properties,
      this.storeInfoOptions,
      this.taxIdentificationNumber,
      this.address,
      this.image});

  StoreInfo.fromJson(Map<String, dynamic> json)
      : businessContextId = json['businessContextId'],
        tenantId = json['tenantId'],
        storeInfoId = json['storeInfoId'],
        storeName = json['storeName'],
        timezone = json['timezone'],
        receiptFooterText = json['receiptFooterText'],
        logoDetails = LogoDetails.fromJson(json['logoDetails'] ?? {}),
        properties = Properties.fromJson(json['properties'] ?? {}),
        storeInfoOptions =
            StoreInfoOptions.fromJson(json['storeInfoOptions'] ?? {}),
        taxIdentificationNumber = json['taxIdentificationNumber'],
        address = json['address']?.cast<String>(),
        image = json['image'];

  Map<String, dynamic> toJson() => {
        'businessContextId': businessContextId,
        'tenantId': tenantId,
        'storeInfoId': storeInfoId,
        'storeName': storeName,
        'timezone': timezone,
        'receiptFooterText': receiptFooterText,
        'logoDetails': logoDetails?.toJson(),
        'properties': properties?.toJson(),
        'storeInfoOptions': storeInfoOptions?.toJson(),
        'taxIdentificationNumber': taxIdentificationNumber,
        'address': address,
        'image': image
      };
}

/// Json path:
/// ```
/// request.orderData.byuPaymentProperties
/// ```
class ByuPaymentProperties {
  ByuPaymentProperties.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

/// Json path:
/// ```
/// request.orderData
/// ```
class OrderData {
  // request.orderData#terminalNumber
  final String terminalNumber;
  // request.orderData#checkNumber
  final String checkNumber;
  // request.orderData#showAllPrices
  final bool showAllPrices;
  // request.orderData#ondDiscountName
  final dynamic ondDiscountName;
  // request.orderData#ondDiscount
  final bool ondDiscount;
  // request.orderData#introText
  final String introText;
  // request.orderData#timezoneOffsetMinutes
  final int timezoneOffsetMinutes;
  // request.orderData#currencyInfo
  final CurrencyInfo currencyInfo;
  // request.orderData#lineItems
  final List<LineItems> lineItems;
  // request.orderData#orderDiscountInfo
  final List<dynamic> orderDiscountInfo;
  // request.orderData#tip
  final bool tip;
  // request.orderData#onDemandGrautuity
  final bool onDemandGrautuity;
  // request.orderData#onDemandServiceAmount
  final bool onDemandServiceAmount;
  // request.orderData#discountPostTax
  final bool discountPostTax;
  // request.orderData#isCheckDiscountEnabled
  final bool isCheckDiscountEnabled;
  // request.orderData#paymentInfo
  final List<PaymentInfo> paymentInfo;
  // request.orderData#smsReceiptOption
  final SmsReceiptOption smsReceiptOption;
  // request.orderData#storeInfo
  final StoreInfo storeInfo;
  // request.orderData#taxAmount
  final String taxAmount;
  // request.orderData#totalAmount
  final String totalAmount;
  // request.orderData#subtotalAmount
  final String subtotalAmount;
  // request.orderData#byuPaymentProperties
  final ByuPaymentProperties byuPaymentProperties;

  OrderData(
      {this.terminalNumber,
      this.checkNumber,
      this.showAllPrices,
      this.ondDiscountName,
      this.ondDiscount,
      this.introText,
      this.timezoneOffsetMinutes,
      this.currencyInfo,
      this.lineItems,
      this.orderDiscountInfo,
      this.tip,
      this.onDemandGrautuity,
      this.onDemandServiceAmount,
      this.discountPostTax,
      this.isCheckDiscountEnabled,
      this.paymentInfo,
      this.smsReceiptOption,
      this.storeInfo,
      this.taxAmount,
      this.totalAmount,
      this.subtotalAmount,
      this.byuPaymentProperties});

  OrderData.fromJson(Map<String, dynamic> json)
      : terminalNumber = json['terminalNumber'],
        checkNumber = json['checkNumber'],
        showAllPrices = json['showAllPrices'],
        ondDiscountName = json['ondDiscountName'],
        ondDiscount = json['ondDiscount'],
        introText = json['introText'],
        timezoneOffsetMinutes = json['timezoneOffsetMinutes'],
        currencyInfo = CurrencyInfo.fromJson(json['currencyInfo'] ?? {}),
        lineItems = (json['lineItems'] as List)
            ?.map((e) => LineItems.fromJson(e ?? {}))
            ?.toList(),
        orderDiscountInfo = json['orderDiscountInfo'],
        tip = json['tip'],
        onDemandGrautuity = json['onDemandGrautuity'],
        onDemandServiceAmount = json['onDemandServiceAmount'],
        discountPostTax = json['discountPostTax'],
        isCheckDiscountEnabled = json['isCheckDiscountEnabled'],
        paymentInfo = (json['paymentInfo'] as List)
            ?.map((e) => PaymentInfo.fromJson(e ?? {}))
            ?.toList(),
        smsReceiptOption =
            SmsReceiptOption.fromJson(json['smsReceiptOption'] ?? {}),
        storeInfo = StoreInfo.fromJson(json['storeInfo'] ?? {}),
        taxAmount = json['taxAmount'],
        totalAmount = json['totalAmount'],
        subtotalAmount = json['subtotalAmount'],
        byuPaymentProperties =
            ByuPaymentProperties.fromJson(json['byuPaymentProperties'] ?? {});

  Map<String, dynamic> toJson() => {
        'terminalNumber': terminalNumber,
        'checkNumber': checkNumber,
        'showAllPrices': showAllPrices,
        'ondDiscountName': ondDiscountName,
        'ondDiscount': ondDiscount,
        'introText': introText,
        'timezoneOffsetMinutes': timezoneOffsetMinutes,
        'currencyInfo': currencyInfo?.toJson(),
        'lineItems': lineItems?.map((e) => e?.toJson())?.toList(),
        'orderDiscountInfo': orderDiscountInfo,
        'tip': tip,
        'onDemandGrautuity': onDemandGrautuity,
        'onDemandServiceAmount': onDemandServiceAmount,
        'discountPostTax': discountPostTax,
        'isCheckDiscountEnabled': isCheckDiscountEnabled,
        'paymentInfo': paymentInfo?.map((e) => e?.toJson())?.toList(),
        'smsReceiptOption': smsReceiptOption?.toJson(),
        'storeInfo': storeInfo?.toJson(),
        'taxAmount': taxAmount,
        'totalAmount': totalAmount,
        'subtotalAmount': subtotalAmount,
        'byuPaymentProperties': byuPaymentProperties?.toJson()
      };
}

/// Url: https://ondemand.rit.edu/api/communication/getSMSReceipt
/// Method: POST
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  // request#orderData
  final OrderData orderData;
  // request#templateName
  final String templateName;

  Request(
      {this.orderData,
      this.templateName,
      Map<String, String> headers = const {}})
      : super(headers);

  Request.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : orderData = OrderData.fromJson(json['orderData'] ?? {}),
        templateName = json['templateName'],
        super(headers);

  Map<String, dynamic> toJson() =>
      {'orderData': orderData?.toJson(), 'templateName': templateName};
}

/// Url: https://ondemand.rit.edu/api/communication/getSMSReceipt
/// Method: POST
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#receipt
  final String receipt;
  // response#imageType
  final String imageType;

  Response(
      {this.receipt, this.imageType, Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : receipt = json['receipt'],
        imageType = json['imageType'],
        super(headers);

  Map<String, dynamic> toJson() => {'receipt': receipt, 'imageType': imageType};
}

