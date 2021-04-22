/// Json path:
/// ```
/// response.storeList.storeInfo.logoDetails.RECEIPT_HEADER
/// ```
class ReceiptHeader {
  // response.storeList.storeInfo.logoDetails.RECEIPT_HEADER#fileName
  final String fileName;

  ReceiptHeader({this.fileName});

  ReceiptHeader.fromJson(Map<String, dynamic> json)
      : fileName = json['fileName'];

  Map<String, dynamic> toJson() => {'fileName': fileName};
}

/// Json path:
/// ```
/// response.storeList.storeInfo.logoDetails
/// ```
class LogoDetails {
  // response.storeList.storeInfo.logoDetails#RECEIPT_HEADER
  final ReceiptHeader receiptHeader;

  LogoDetails({this.receiptHeader});

  LogoDetails.fromJson(Map<String, dynamic> json)
      : receiptHeader = ReceiptHeader.fromJson(json['RECEIPT_HEADER'] ?? {});

  Map<String, dynamic> toJson() => {'RECEIPT_HEADER': receiptHeader?.toJson()};
}

/// Json path:
/// ```
/// response.storeList.storeInfo.storeInfoOptions
/// ```
class StoreInfoOptions {
  // response.storeList.storeInfo.storeInfoOptions#enableMultiKitchenOperations
  final bool enableMultiKitchenOperations;

  StoreInfoOptions({this.enableMultiKitchenOperations});

  StoreInfoOptions.fromJson(Map<String, dynamic> json)
      : enableMultiKitchenOperations = json['enableMultiKitchenOperations'];

  Map<String, dynamic> toJson() =>
      {'enableMultiKitchenOperations': enableMultiKitchenOperations};
}

/// Json path:
/// ```
/// response.response.price
/// ```
class Price {
  // response.response.price#currencyUnit
  final String currencyUnit;
  // response.response.price#amount
  final String amount;

  Price({this.currencyUnit, this.amount});

  Price.fromJson(Map<String, dynamic> json)
      : currencyUnit = json['currencyUnit'],
        amount = json['amount'];

  Map<String, dynamic> toJson() =>
      {'currencyUnit': currencyUnit, 'amount': amount};
}

/// Json path:
/// ```
/// response.response.priceLevels[]
/// ```
class PriceLevel {
  // response.response.priceLevels[]#key
  final String key;
  // response.response.priceLevels[]#priceLevelId
  final String priceLevelId;
  // response.response.priceLevels[]#name
  final String name;
  // response.response.priceLevels[]#price
  final Price price;

  PriceLevel({this.key, this.priceLevelId, this.name, this.price});
  String getKey() => key;

  PriceLevel.fromJson(this.key, Map<String, dynamic> json)
      : priceLevelId = json['priceLevelId'],
        name = json['name'],
        price = Price.fromJson(json['price'] ?? {});

  Map<String, dynamic> toJson() =>
      {'priceLevelId': priceLevelId, 'name': name, 'price': price?.toJson()};
}

/// Json path:
/// ```
/// response.response.itemImages
/// ```
class ItemImages {
  // response.response.itemImages#businessContextId
  final String businessContextId;
  // response.response.itemImages#imageId
  final String imageId;
  // response.response.itemImages#name
  final String name;
  // response.response.itemImages#fileNames
  final List<String> fileNames;
  // response.response.itemImages#tags
  final List<String> tags;

  ItemImages(
      {this.businessContextId,
      this.imageId,
      this.name,
      this.fileNames,
      this.tags});

  ItemImages.fromJson(Map<String, dynamic> json)
      : businessContextId = json['businessContextId'],
        imageId = json['imageId'],
        name = json['name'],
        fileNames = json['fileNames']?.cast<String>(),
        tags = json['tags']?.cast<String>();

  Map<String, dynamic> toJson() => {
        'businessContextId': businessContextId,
        'imageId': imageId,
        'name': name,
        'fileNames': fileNames,
        'tags': tags
      };
}

/// Json path:
/// ```
/// request.scheduleTime
/// ```
class ScheduleTime {
  // request.scheduleTime#startTime
  final String startTime;
  // request.scheduleTime#endTime
  final String endTime;

  ScheduleTime({this.startTime, this.endTime});

  ScheduleTime.fromJson(Map<String, dynamic> json)
      : startTime = json['startTime'],
        endTime = json['endTime'];

  Map<String, dynamic> toJson() => {'startTime': startTime, 'endTime': endTime};
}

/// Json path:
/// ```
/// response.response.menus.categories.itemIdToItemPropertiesMap
/// ```
class ItemIdToItemPropertiesMap {
  ItemIdToItemPropertiesMap.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

/// Json path:
/// ```
/// response.response.schedule.properties
/// ```
class MenuProperties {
  // response.response.schedule.properties#TRANSITION_MESSAGE
  final String transitionMessage;

  MenuProperties({this.transitionMessage});

  MenuProperties.fromJson(Map<String, dynamic> json)
      : transitionMessage = json['TRANSITION_MESSAGE'];

  Map<String, dynamic> toJson() => {'TRANSITION_MESSAGE': transitionMessage};
}

/// Json path:
/// ```
/// response.response.schedule.displayProfileState.conceptStates
/// ```
class ConceptStates {
  // response.response.schedule.displayProfileState.conceptStates#conceptId
  final String conceptId;
  // response.response.schedule.displayProfileState.conceptStates#menuId
  final String menuId;

  ConceptStates({this.conceptId, this.menuId});

  ConceptStates.fromJson(Map<String, dynamic> json)
      : conceptId = json['conceptId'],
        menuId = json['menuId'];

  Map<String, dynamic> toJson() => {'conceptId': conceptId, 'menuId': menuId};
}

/// Json path:
/// ```
/// response.response.schedule.displayProfileState
/// ```
class DisplayProfileState {
  // response.response.schedule.displayProfileState#displayProfileId
  final String displayProfileId;
  // response.response.schedule.displayProfileState#conceptStates
  final List<ConceptStates> conceptStates;

  DisplayProfileState({this.displayProfileId, this.conceptStates});

  DisplayProfileState.fromJson(Map<String, dynamic> json)
      : displayProfileId = json['displayProfileId'],
        conceptStates = (json['conceptStates'] as List)
            ?.map((e) => ConceptStates.fromJson(e ?? {}))
            ?.toList();

  Map<String, dynamic> toJson() => {
        'displayProfileId': displayProfileId,
        'conceptStates': conceptStates?.map((e) => e?.toJson())?.toList()
      };
}

/// Json path:
/// ```
/// response.response.schedule
/// ```
class MenuSchedule {
  // response.response.schedule#@c
  final String c;
  // response.response.schedule#scheduledExpression
  final String scheduledExpression;
  // response.response.schedule#properties
  final MenuProperties properties;
  // response.response.schedule#displayProfileState
  final DisplayProfileState displayProfileState;

  MenuSchedule(
      {this.c,
      this.scheduledExpression,
      this.properties,
      this.displayProfileState});

  MenuSchedule.fromJson(Map<String, dynamic> json)
      : c = json['@c'],
        scheduledExpression = json['scheduledExpression'],
        properties = MenuProperties.fromJson(json['properties'] ?? {}),
        displayProfileState =
            DisplayProfileState.fromJson(json['displayProfileState'] ?? {});

  Map<String, dynamic> toJson() => {
        '@c': c,
        'scheduledExpression': scheduledExpression,
        'properties': properties?.toJson(),
        'displayProfileState': displayProfileState?.toJson()
      };
}

/// Json path:
/// ```
/// response.modifiers.modifiers.options
/// ```
class Options {
  // response.modifiers.modifiers.options#id
  final String id;
  // response.modifiers.modifiers.options#description
  final String description;
  // response.modifiers.modifiers.options#selected
  final bool selected;
  // response.modifiers.modifiers.options#baseAmount
  final String baseAmount;
  // response.modifiers.modifiers.options#amount
  final String amount;
  // response.modifiers.modifiers.options#childPriceLevelId
  final String childPriceLevelId;
  // response.modifiers.modifiers.options#parentGroupId
  final String parentGroupId;
  // response.modifiers.modifiers.options#currencyUnit
  final String currencyUnit;

  Options(
      {this.id,
      this.description,
      this.selected,
      this.baseAmount,
      this.amount,
      this.childPriceLevelId,
      this.parentGroupId,
      this.currencyUnit});

  Options.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        description = json['description'],
        selected = json['selected'],
        baseAmount = json['baseAmount'],
        amount = json['amount'],
        childPriceLevelId = json['childPriceLevelId'],
        parentGroupId = json['parentGroupId'],
        currencyUnit = json['currencyUnit'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'description': description,
        'selected': selected,
        'baseAmount': baseAmount,
        'amount': amount,
        'childPriceLevelId': childPriceLevelId,
        'parentGroupId': parentGroupId,
        'currencyUnit': currencyUnit
      };
}

/// Json path:
/// ```
/// request.item.priceLevels.1
/// ```
class Num1 {
  // request.item.priceLevels.1#priceLevelId
  final String priceLevelId;
  // request.item.priceLevels.1#name
  final String name;
  // request.item.priceLevels.1#price
  final Price price;

  Num1({this.priceLevelId, this.name, this.price});

  Num1.fromJson(Map<String, dynamic> json)
      : priceLevelId = json['priceLevelId'],
        name = json['name'],
        price = Price.fromJson(json['price'] ?? {});

  Map<String, dynamic> toJson() =>
      {'priceLevelId': priceLevelId, 'name': name, 'price': price?.toJson()};
}

/// Json path:
/// ```
/// request.currencyDetails
/// ```
class CurrencyDetails {
  // request.currencyDetails#currencyDecimalDigits
  final String currencyDecimalDigits;
  // request.currencyDetails#currencyCultureName
  final String currencyCultureName;
  // request.currencyDetails#currencyCode
  final String currencyCode;
  // request.currencyDetails#currencySymbol
  final String currencySymbol;

  CurrencyDetails(
      {this.currencyDecimalDigits,
      this.currencyCultureName,
      this.currencyCode,
      this.currencySymbol});

  CurrencyDetails.fromJson(Map<String, dynamic> json)
      : currencyDecimalDigits = json['currencyDecimalDigits'],
        currencyCultureName = json['currencyCultureName'],
        currencyCode = json['currencyCode'],
        currencySymbol = json['currencySymbol'];

  Map<String, dynamic> toJson() => {
        'currencyDecimalDigits': currencyDecimalDigits,
        'currencyCultureName': currencyCultureName,
        'currencyCode': currencyCode,
        'currencySymbol': currencySymbol
      };
}

/// Json path:
/// ```
/// request.schedule.properties
/// ```
class Properties2 {
  // request.schedule.properties#TRANSITION_MESSAGE
  final String transitionMessage;

  Properties2({this.transitionMessage});

  Properties2.fromJson(Map<String, dynamic> json)
      : transitionMessage = json['TRANSITION_MESSAGE'];

  Map<String, dynamic> toJson() => {'TRANSITION_MESSAGE': transitionMessage};
}

/// Json path:
/// ```
/// request.schedule
/// ```
class CartSchedule {
  // request.schedule#@c
  final String c;
  // request.schedule#scheduledExpression
  final String scheduledExpression;
  // request.schedule#properties
  final Properties2 properties;
  // request.schedule#displayProfileState
  final DisplayProfileState displayProfileState;

  CartSchedule(
      {this.c,
      this.scheduledExpression,
      this.properties,
      this.displayProfileState});

  CartSchedule.fromJson(Map<String, dynamic> json)
      : c = json['@c'],
        scheduledExpression = json['scheduledExpression'],
        properties = Properties2.fromJson(json['properties'] ?? {}),
        displayProfileState =
            DisplayProfileState.fromJson(json['displayProfileState'] ?? {});

  Map<String, dynamic> toJson() => {
        '@c': c,
        'scheduledExpression': scheduledExpression,
        'properties': properties?.toJson(),
        'displayProfileState': displayProfileState?.toJson()
      };
}

/// Json path:
/// ```
/// response.orderDetails.gratuityAmount
/// ```
class GratuityAmount {
  // response.orderDetails.gratuityAmount#currencyUnit
  final String currencyUnit;
  // response.orderDetails.gratuityAmount#amount
  final String amount;

  GratuityAmount({this.currencyUnit, this.amount});

  GratuityAmount.fromJson(Map<String, dynamic> json)
      : currencyUnit = json['currencyUnit'],
        amount = json['amount'];

  Map<String, dynamic> toJson() =>
      {'currencyUnit': currencyUnit, 'amount': amount};
}

/// Json path:
/// ```
/// response.orderDetails.serviceAmount
/// ```
class ServiceAmount {
  // response.orderDetails.serviceAmount#currencyUnit
  final String currencyUnit;
  // response.orderDetails.serviceAmount#amount
  final String amount;

  ServiceAmount({this.currencyUnit, this.amount});

  ServiceAmount.fromJson(Map<String, dynamic> json)
      : currencyUnit = json['currencyUnit'],
        amount = json['amount'];

  Map<String, dynamic> toJson() =>
      {'currencyUnit': currencyUnit, 'amount': amount};
}

/// Json path:
/// ```
/// response.orderDetails.taxExcludedTotalAmount
/// ```
class TaxExcludedTotalAmount {
  // response.orderDetails.taxExcludedTotalAmount#currencyUnit
  final String currencyUnit;
  // response.orderDetails.taxExcludedTotalAmount#amount
  final String amount;

  TaxExcludedTotalAmount({this.currencyUnit, this.amount});

  TaxExcludedTotalAmount.fromJson(Map<String, dynamic> json)
      : currencyUnit = json['currencyUnit'],
        amount = json['amount'];

  Map<String, dynamic> toJson() =>
      {'currencyUnit': currencyUnit, 'amount': amount};
}

/// Json path:
/// ```
/// response.orderDetails.taxExcludedServiceChargeAndGratuityIncludedTotalAmount
/// ```
class TaxExcludedServiceChargeAndGratuityIncludedTotalAmount {
  // response.orderDetails.taxExcludedServiceChargeAndGratuityIncludedTotalAmount#currencyUnit
  final String currencyUnit;
  // response.orderDetails.taxExcludedServiceChargeAndGratuityIncludedTotalAmount#amount
  final String amount;

  TaxExcludedServiceChargeAndGratuityIncludedTotalAmount(
      {this.currencyUnit, this.amount});

  TaxExcludedServiceChargeAndGratuityIncludedTotalAmount.fromJson(
      Map<String, dynamic> json)
      : currencyUnit = json['currencyUnit'],
        amount = json['amount'];

  Map<String, dynamic> toJson() =>
      {'currencyUnit': currencyUnit, 'amount': amount};
}

/// Json path:
/// ```
/// response.orderDetails.taxTotalAmount
/// ```
class TaxTotalAmount {
  // response.orderDetails.taxTotalAmount#currencyUnit
  final String currencyUnit;
  // response.orderDetails.taxTotalAmount#amount
  final String amount;

  TaxTotalAmount({this.currencyUnit, this.amount});

  TaxTotalAmount.fromJson(Map<String, dynamic> json)
      : currencyUnit = json['currencyUnit'],
        amount = json['amount'];

  Map<String, dynamic> toJson() =>
      {'currencyUnit': currencyUnit, 'amount': amount};
}

/// Json path:
/// ```
/// response.orderDetails.taxIncludedTotalAmount
/// ```
class TaxIncludedTotalAmount {
  // response.orderDetails.taxIncludedTotalAmount#currencyUnit
  final String currencyUnit;
  // response.orderDetails.taxIncludedTotalAmount#amount
  final String amount;

  TaxIncludedTotalAmount({this.currencyUnit, this.amount});

  TaxIncludedTotalAmount.fromJson(Map<String, dynamic> json)
      : currencyUnit = json['currencyUnit'],
        amount = json['amount'];

  Map<String, dynamic> toJson() =>
      {'currencyUnit': currencyUnit, 'amount': amount};
}

/// Json path:
/// ```
/// response.orderDetails.subTotalAmount
/// ```
class SubTotalAmount {
  // response.orderDetails.subTotalAmount#currencyUnit
  final String currencyUnit;
  // response.orderDetails.subTotalAmount#amount
  final String amount;

  SubTotalAmount({this.currencyUnit, this.amount});

  SubTotalAmount.fromJson(Map<String, dynamic> json)
      : currencyUnit = json['currencyUnit'],
        amount = json['amount'];

  Map<String, dynamic> toJson() =>
      {'currencyUnit': currencyUnit, 'amount': amount};
}

/// Json path:
/// ```
/// response.orderDetails.subTotalAmountWithoutDiscount
/// ```
class SubTotalAmountWithoutDiscount {
  // response.orderDetails.subTotalAmountWithoutDiscount#currencyUnit
  final String currencyUnit;
  // response.orderDetails.subTotalAmountWithoutDiscount#amount
  final String amount;

  SubTotalAmountWithoutDiscount({this.currencyUnit, this.amount});

  SubTotalAmountWithoutDiscount.fromJson(Map<String, dynamic> json)
      : currencyUnit = json['currencyUnit'],
        amount = json['amount'];

  Map<String, dynamic> toJson() =>
      {'currencyUnit': currencyUnit, 'amount': amount};
}

/// Json path:
/// ```
/// response.orderDetails.subTotalTaxAmount
/// ```
class SubTotalTaxAmount {
  // response.orderDetails.subTotalTaxAmount#currencyUnit
  final String currencyUnit;
  // response.orderDetails.subTotalTaxAmount#amount
  final String amount;

  SubTotalTaxAmount({this.currencyUnit, this.amount});

  SubTotalTaxAmount.fromJson(Map<String, dynamic> json)
      : currencyUnit = json['currencyUnit'],
        amount = json['amount'];

  Map<String, dynamic> toJson() =>
      {'currencyUnit': currencyUnit, 'amount': amount};
}

/// Json path:
/// ```
/// response.orderDetails.totalPaymentAmount
/// ```
class TotalPaymentAmount {
  // response.orderDetails.totalPaymentAmount#currencyUnit
  final String currencyUnit;
  // response.orderDetails.totalPaymentAmount#amount
  final String amount;

  TotalPaymentAmount({this.currencyUnit, this.amount});

  TotalPaymentAmount.fromJson(Map<String, dynamic> json)
      : currencyUnit = json['currencyUnit'],
        amount = json['amount'];

  Map<String, dynamic> toJson() =>
      {'currencyUnit': currencyUnit, 'amount': amount};
}

/// Json path:
/// ```
/// response.orderDetails.totalTipAmount
/// ```
class TotalTipAmount {
  // response.orderDetails.totalTipAmount#currencyUnit
  final String currencyUnit;
  // response.orderDetails.totalTipAmount#amount
  final String amount;

  TotalTipAmount({this.currencyUnit, this.amount});

  TotalTipAmount.fromJson(Map<String, dynamic> json)
      : currencyUnit = json['currencyUnit'],
        amount = json['amount'];

  Map<String, dynamic> toJson() =>
      {'currencyUnit': currencyUnit, 'amount': amount};
}

/// Json path:
/// ```
/// response.orderDetails.totalDueAmount
/// ```
class TotalDueAmount {
  // response.orderDetails.totalDueAmount#currencyUnit
  final String currencyUnit;
  // response.orderDetails.totalDueAmount#amount
  final String amount;

  TotalDueAmount({this.currencyUnit, this.amount});

  TotalDueAmount.fromJson(Map<String, dynamic> json)
      : currencyUnit = json['currencyUnit'],
        amount = json['amount'];

  Map<String, dynamic> toJson() =>
      {'currencyUnit': currencyUnit, 'amount': amount};
}

/// Json path:
/// ```
/// response.orderDetails.totalDiscountAmount
/// ```
class TotalDiscountAmount {
  // response.orderDetails.totalDiscountAmount#currencyUnit
  final String currencyUnit;
  // response.orderDetails.totalDiscountAmount#amount
  final String amount;

  TotalDiscountAmount({this.currencyUnit, this.amount});

  TotalDiscountAmount.fromJson(Map<String, dynamic> json)
      : currencyUnit = json['currencyUnit'],
        amount = json['amount'];

  Map<String, dynamic> toJson() =>
      {'currencyUnit': currencyUnit, 'amount': amount};
}

/// Json path:
/// ```
/// response.orderDetails.totalRoundAmount
/// ```
class TotalRoundAmount {
  // response.orderDetails.totalRoundAmount#currencyUnit
  final String currencyUnit;
  // response.orderDetails.totalRoundAmount#amount
  final String amount;

  TotalRoundAmount({this.currencyUnit, this.amount});

  TotalRoundAmount.fromJson(Map<String, dynamic> json)
      : currencyUnit = json['currencyUnit'],
        amount = json['amount'];

  Map<String, dynamic> toJson() =>
      {'currencyUnit': currencyUnit, 'amount': amount};
}

/// Json path:
/// ```
/// response.orderDetails.internalProperties
/// ```
class InternalProperties {
  InternalProperties.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

/// Json path:
/// ```
/// request.request.data.atriumTerminal
/// ```
class AtriumTerminal {
  // request.request.data.atriumTerminal#terminalId
  final String terminalId;

  AtriumTerminal({this.terminalId});

  AtriumTerminal.fromJson(Map<String, dynamic> json)
      : terminalId = json['terminalId'];

  Map<String, dynamic> toJson() => {'terminalId': terminalId};
}

/// Json path:
/// ```
/// request.request.data.customer
/// ```
class Customer {
  // request.request.data.customer#customerType
  final String customerType;
  // request.request.data.customer#id
  final String id;

  Customer({this.customerType, this.id});

  Customer.fromJson(Map<String, dynamic> json)
      : customerType = json['customerType'],
        id = json['id'];

  Map<String, dynamic> toJson() => {'customerType': customerType, 'id': id};
}

/// Json path:
/// ```
/// response.response.accounts
/// ```
class Accounts {
  // response.response.accounts#name
  final String name;
  // response.response.accounts#balance
  final String balance;
  // response.response.accounts#currency
  final String currency;

  Accounts({this.name, this.balance, this.currency});

  Accounts.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        balance = json['balance'],
        currency = json['currency'];

  Map<String, dynamic> toJson() =>
      {'name': name, 'balance': balance, 'currency': currency};
}

/// Json path:
/// ```
/// response.data.paymentData.paymentRequest.transactionData.atriumPaymentRequest.atriumCurrency
/// ```
class AtriumCurrency {
  // response.data.paymentData.paymentRequest.transactionData.atriumPaymentRequest.atriumCurrency#currencyType
  final String currencyType;
  // response.data.paymentData.paymentRequest.transactionData.atriumPaymentRequest.atriumCurrency#total
  final String total;
  // response.data.paymentData.paymentRequest.transactionData.atriumPaymentRequest.atriumCurrency#tax
  final int tax;

  AtriumCurrency({this.currencyType, this.total, this.tax});

  AtriumCurrency.fromJson(Map<String, dynamic> json)
      : currencyType = json['currencyType'],
        total = json['total'],
        tax = json['tax'];

  Map<String, dynamic> toJson() =>
      {'currencyType': currencyType, 'total': total, 'tax': tax};
}

/// Json path:
/// ```
/// response.data.paymentData.paymentRequest.transactionData.atriumPaymentRequest
/// ```
class AtriumPaymentRequest {
  // response.data.paymentData.paymentRequest.transactionData.atriumPaymentRequest#tenderId
  final String tenderId;
  // response.data.paymentData.paymentRequest.transactionData.atriumPaymentRequest#atriumTerminal
  final AtriumTerminal atriumTerminal;
  // response.data.paymentData.paymentRequest.transactionData.atriumPaymentRequest#customer
  final Customer customer;
  // response.data.paymentData.paymentRequest.transactionData.atriumPaymentRequest#atriumCurrency
  final AtriumCurrency atriumCurrency;

  AtriumPaymentRequest(
      {this.tenderId, this.atriumTerminal, this.customer, this.atriumCurrency});

  AtriumPaymentRequest.fromJson(Map<String, dynamic> json)
      : tenderId = json['tenderId'],
        atriumTerminal = AtriumTerminal.fromJson(json['atriumTerminal'] ?? {}),
        customer = Customer.fromJson(json['customer'] ?? {}),
        atriumCurrency = AtriumCurrency.fromJson(json['atriumCurrency'] ?? {});

  Map<String, dynamic> toJson() => {
        'tenderId': tenderId,
        'atriumTerminal': atriumTerminal?.toJson(),
        'customer': customer?.toJson(),
        'atriumCurrency': atriumCurrency?.toJson()
      };
}

/// Json path:
/// ```
/// response.data.paymentData.paymentRequest.transactionData
/// ```
class TransactionData {
  // response.data.paymentData.paymentRequest.transactionData#atriumPaymentRequest
  final AtriumPaymentRequest atriumPaymentRequest;

  TransactionData({this.atriumPaymentRequest});

  TransactionData.fromJson(Map<String, dynamic> json)
      : atriumPaymentRequest =
            AtriumPaymentRequest.fromJson(json['atriumPaymentRequest'] ?? {});

  Map<String, dynamic> toJson() =>
      {'atriumPaymentRequest': atriumPaymentRequest?.toJson()};
}

/// Json path:
/// ```
/// response.data.paymentData.paymentResponse.paymentSupport.tipAmount
/// ```
class TipAmount {
  // response.data.paymentData.paymentResponse.paymentSupport.tipAmount#currencyUnit
  final String currencyUnit;
  // response.data.paymentData.paymentResponse.paymentSupport.tipAmount#amount
  final String amount;

  TipAmount({this.currencyUnit, this.amount});

  TipAmount.fromJson(Map<String, dynamic> json)
      : currencyUnit = json['currencyUnit'],
        amount = json['amount'];

  Map<String, dynamic> toJson() =>
      {'currencyUnit': currencyUnit, 'amount': amount};
}

/// Json path:
/// ```
/// response.data.paymentData.paymentResponse.paymentSupport.offlineStatus
/// ```
class OfflineStatus {
  // response.data.paymentData.paymentResponse.paymentSupport.offlineStatus#offline
  final bool offline;
  // response.data.paymentData.paymentResponse.paymentSupport.offlineStatus#offlineScopeId
  final String offlineScopeId;

  OfflineStatus({this.offline, this.offlineScopeId});

  OfflineStatus.fromJson(Map<String, dynamic> json)
      : offline = json['offline'],
        offlineScopeId = json['offlineScopeId'];

  Map<String, dynamic> toJson() =>
      {'offline': offline, 'offlineScopeId': offlineScopeId};
}

/// Json path:
/// ```
/// response.data.paymentData.paymentResponse.paymentSupport
/// ```
class PaymentSupport {
  // response.data.paymentData.paymentResponse.paymentSupport#amount
  final Price amount;
  // response.data.paymentData.paymentResponse.paymentSupport#tipAmount
  final TipAmount tipAmount;
  // response.data.paymentData.paymentResponse.paymentSupport#paymentForm
  final String paymentForm;
  // response.data.paymentData.paymentResponse.paymentSupport#paymentState
  final String paymentState;
  // response.data.paymentData.paymentResponse.paymentSupport#offlineStatus
  final OfflineStatus offlineStatus;
  // response.data.paymentData.paymentResponse.paymentSupport#amountModification
  final dynamic amountModification;
  // response.data.paymentData.paymentResponse.paymentSupport#refundSupported
  final bool refundSupported;

  PaymentSupport(
      {this.amount,
      this.tipAmount,
      this.paymentForm,
      this.paymentState,
      this.offlineStatus,
      this.amountModification,
      this.refundSupported});

  PaymentSupport.fromJson(Map<String, dynamic> json)
      : amount = Price.fromJson(json['amount'] ?? {}),
        tipAmount = TipAmount.fromJson(json['tipAmount'] ?? {}),
        paymentForm = json['paymentForm'],
        paymentState = json['paymentState'],
        offlineStatus = OfflineStatus.fromJson(json['offlineStatus'] ?? {}),
        amountModification = json['amountModification'],
        refundSupported = json['refundSupported'];

  Map<String, dynamic> toJson() => {
        'amount': amount?.toJson(),
        'tipAmount': tipAmount?.toJson(),
        'paymentForm': paymentForm,
        'paymentState': paymentState,
        'offlineStatus': offlineStatus?.toJson(),
        'amountModification': amountModification,
        'refundSupported': refundSupported
      };
}

/// Json path:
/// ```
/// response.data.digitalSignature
/// ```
class DigitalSignature {
  // response.data.digitalSignature#dataEncoding
  final String dataEncoding;
  // response.data.digitalSignature#base64
  final String base64;

  DigitalSignature({this.dataEncoding, this.base64});

  DigitalSignature.fromJson(Map<String, dynamic> json)
      : dataEncoding = json['dataEncoding'],
        base64 = json['base64'];

  Map<String, dynamic> toJson() =>
      {'dataEncoding': dataEncoding, 'base64': base64};
}

class PriceLevels {
  // response.response.priceLevels#priceLevels
  final List<PriceLevel> priceLevels;
  // request.item.priceLevels#1
  final Num1 num1;

  PriceLevels({this.priceLevels, this.num1});

  PriceLevels.fromJson(Map<String, dynamic> json)
      : priceLevels = json.keys
            .map((e) => PriceLevel.fromJson(e, json[e] ?? {}))
            .toList(),
        num1 = Num1.fromJson(json['1'] ?? {});

  Map<String, dynamic> toJson() => {
        'priceLevels': Map.fromIterables(priceLevels?.map((e) => e.getKey()),
            priceLevels?.map((e) => e?.toJson())),
        '1': num1?.toJson()
      };
}

class CategoryOptions {
  CategoryOptions.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

class Categories {
  // response.response.menus.categories#name
  final String name;
  // response.response.menus.categories#categoryOptions
  final CategoryOptions categoryOptions;
  // response.response.menus.categories#items
  final List<String> items;
  // response.response.menus.categories#itemIdToItemPropertiesMap
  final ItemIdToItemPropertiesMap itemIdToItemPropertiesMap;
  // response.response.menus.categories#kioskImages
  final List<dynamic> kioskImages;

  Categories(
      {this.name,
      this.categoryOptions,
      this.items,
      this.itemIdToItemPropertiesMap,
      this.kioskImages});

  Categories.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        categoryOptions =
            CategoryOptions.fromJson(json['categoryOptions'] ?? {}),
        items = json['items']?.cast<String>(),
        itemIdToItemPropertiesMap = ItemIdToItemPropertiesMap.fromJson(
            json['itemIdToItemPropertiesMap'] ?? {}),
        kioskImages = json['kioskImages'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'categoryOptions': categoryOptions?.toJson(),
        'items': items,
        'itemIdToItemPropertiesMap': itemIdToItemPropertiesMap?.toJson(),
        'kioskImages': kioskImages
      };
}

class Menu {
  // response.response#name
  final String name;
  // response.response#description
  final String description;
  // response.response#id
  final String id;
  // response.response#categories
  final List<Categories> categories;
  // response.response#lastUpdateTime
  final String lastUpdateTime;
  // response.response#customLabels
  final CustomLabels customLabels;

  Menu(
      {this.name,
      this.description,
      this.id,
      this.categories,
      this.lastUpdateTime,
      this.customLabels});

  Menu.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        description = json['description'],
        id = json['id'],
        categories = (json['categories'] as List)
            ?.map((e) => Categories.fromJson(e ?? {}))
            ?.toList(),
        lastUpdateTime = json['lastUpdateTime'],
        customLabels = CustomLabels.fromJson(json['customLabels'] ?? {});

  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'id': id,
        'categories': categories?.map((e) => e?.toJson())?.toList(),
        'lastUpdateTime': lastUpdateTime,
        'customLabels': customLabels?.toJson()
      };
}

class NewField {
  // response.response.customLabels.New#tagName
  final String tagName;
  // response.response.customLabels.New#isDefault
  final bool isDefault;

  NewField({this.tagName, this.isDefault});

  NewField.fromJson(Map<String, dynamic> json)
      : tagName = json['tagName'],
        isDefault = json['isDefault'];

  Map<String, dynamic> toJson() => {'tagName': tagName, 'isDefault': isDefault};
}

class Spicy {
  // response.response.customLabels.Spicy#tagName
  final String tagName;
  // response.response.customLabels.Spicy#isDefault
  final bool isDefault;

  Spicy({this.tagName, this.isDefault});

  Spicy.fromJson(Map<String, dynamic> json)
      : tagName = json['tagName'],
        isDefault = json['isDefault'];

  Map<String, dynamic> toJson() => {'tagName': tagName, 'isDefault': isDefault};
}

class Vegetarian {
  // response.response.customLabels.Vegetarian#tagName
  final String tagName;
  // response.response.customLabels.Vegetarian#isDefault
  final bool isDefault;

  Vegetarian({this.tagName, this.isDefault});

  Vegetarian.fromJson(Map<String, dynamic> json)
      : tagName = json['tagName'],
        isDefault = json['isDefault'];

  Map<String, dynamic> toJson() => {'tagName': tagName, 'isDefault': isDefault};
}

class GlutenFree {
  // response.response.customLabels.Gluten Free#tagName
  final String tagName;
  // response.response.customLabels.Gluten Free#isDefault
  final bool isDefault;

  GlutenFree({this.tagName, this.isDefault});

  GlutenFree.fromJson(Map<String, dynamic> json)
      : tagName = json['tagName'],
        isDefault = json['isDefault'];

  Map<String, dynamic> toJson() => {'tagName': tagName, 'isDefault': isDefault};
}

class Healthy {
  // response.response.customLabels.Healthy#tagName
  final String tagName;
  // response.response.customLabels.Healthy#isDefault
  final bool isDefault;

  Healthy({this.tagName, this.isDefault});

  Healthy.fromJson(Map<String, dynamic> json)
      : tagName = json['tagName'],
        isDefault = json['isDefault'];

  Map<String, dynamic> toJson() => {'tagName': tagName, 'isDefault': isDefault};
}

class Vegan {
  // response.response.customLabels.Vegan#tagName
  final String tagName;
  // response.response.customLabels.Vegan#isDefault
  final bool isDefault;

  Vegan({this.tagName, this.isDefault});

  Vegan.fromJson(Map<String, dynamic> json)
      : tagName = json['tagName'],
        isDefault = json['isDefault'];

  Map<String, dynamic> toJson() => {'tagName': tagName, 'isDefault': isDefault};
}

class CustomLabels {
  // response.response.customLabels#New
  final NewField newField;
  // response.response.customLabels#Spicy
  final Spicy spicy;
  // response.response.customLabels#Vegetarian
  final Vegetarian vegetarian;
  // response.response.customLabels#Gluten Free
  final GlutenFree glutenFree;
  // response.response.customLabels#Healthy
  final Healthy healthy;
  // response.response.customLabels#Vegan
  final Vegan vegan;

  CustomLabels(
      {this.newField,
      this.spicy,
      this.vegetarian,
      this.glutenFree,
      this.healthy,
      this.vegan});

  CustomLabels.fromJson(Map<String, dynamic> json)
      : newField = NewField.fromJson(json['New'] ?? {}),
        spicy = Spicy.fromJson(json['Spicy'] ?? {}),
        vegetarian = Vegetarian.fromJson(json['Vegetarian'] ?? {}),
        glutenFree = GlutenFree.fromJson(json['Gluten Free'] ?? {}),
        healthy = Healthy.fromJson(json['Healthy'] ?? {}),
        vegan = Vegan.fromJson(json['Vegan'] ?? {});

  Map<String, dynamic> toJson() => {
        'New': newField?.toJson(),
        'Spicy': spicy?.toJson(),
        'Vegetarian': vegetarian?.toJson(),
        'Gluten Free': glutenFree?.toJson(),
        'Healthy': healthy?.toJson(),
        'Vegan': vegan?.toJson()
      };
}

class CartProperties {
  // request.item.properties#cartGuid
  final String cartGuid;

  CartProperties({this.cartGuid});

  CartProperties.fromJson(Map<String, dynamic> json)
      : cartGuid = json['cartGuid'];

  Map<String, dynamic> toJson() => {'cartGuid': cartGuid};
}

class SelectedModifiers {
  // request.receiptInfo.items.selectedModifiers#id
  final String id;
  // request.receiptInfo.items.selectedModifiers#description
  final String description;
  // request.receiptInfo.items.selectedModifiers#selected
  final bool selected;
  // request.receiptInfo.items.selectedModifiers#baseAmount
  final String baseAmount;
  // request.receiptInfo.items.selectedModifiers#amount
  final String amount;
  // request.receiptInfo.items.selectedModifiers#childPriceLevelId
  final String childPriceLevelId;
  // request.receiptInfo.items.selectedModifiers#parentGroupId
  final String parentGroupId;
  // request.receiptInfo.items.selectedModifiers#currencyUnit
  final String currencyUnit;
  // request.receiptInfo.items.selectedModifiers#lineItemId
  final String lineItemId;

  SelectedModifiers(
      {this.id,
      this.description,
      this.selected,
      this.baseAmount,
      this.amount,
      this.childPriceLevelId,
      this.parentGroupId,
      this.currencyUnit,
      this.lineItemId});

  SelectedModifiers.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        description = json['description'],
        selected = json['selected'],
        baseAmount = json['baseAmount'],
        amount = json['amount'],
        childPriceLevelId = json['childPriceLevelId'],
        parentGroupId = json['parentGroupId'],
        currencyUnit = json['currencyUnit'],
        lineItemId = json['lineItemId'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'description': description,
        'selected': selected,
        'baseAmount': baseAmount,
        'amount': amount,
        'childPriceLevelId': childPriceLevelId,
        'parentGroupId': parentGroupId,
        'currencyUnit': currencyUnit,
        'lineItemId': lineItemId
      };
}

class Item {
  // request.item#id
  final String id;
  // request.item#contextId
  final String contextId;
  // request.item#tenantId
  final String tenantId;
  // request.item#itemId
  final String itemId;
  // request.item#name
  final String name;
  // request.item#isDeleted
  final bool isDeleted;
  // request.item#isActive
  final bool isActive;
  // request.item#lastUpdateTime
  final String lastUpdateTime;
  // request.item#revenueCategoryId
  final String revenueCategoryId;
  // request.item#productClassId
  final String productClassId;
  // request.item#kpText
  final String kpText;
  // request.item#kitchenDisplayText
  final String kitchenDisplayText;
  // request.item#receiptText
  final String receiptText;
  // request.item#price
  final Price price;
  // request.item#defaultPriceLevelId
  final String defaultPriceLevelId;
  // request.item#priceLevels
  final PriceLevels priceLevels;
  // request.item#isSoldByWeight
  final bool isSoldByWeight;
  // request.item#tareWeight
  final int tareWeight;
  // request.item#isDiscountable
  final bool isDiscountable;
  // request.item#allowPriceOverride
  final bool allowPriceOverride;
  // request.item#isTaxIncluded
  final bool isTaxIncluded;
  // request.item#taxClasses
  final List<String> taxClasses;
  // request.item#kitchenVideoLabel
  final String kitchenVideoLabel;
  // request.item#kitchenVideoId
  final String kitchenVideoId;
  // request.item#kitchenVideoCategoryId
  final int kitchenVideoCategoryId;
  // request.item#kitchenCookTimeSeconds
  final int kitchenCookTimeSeconds;
  // request.item#skus
  final List<dynamic> skus;
  // request.item#itemType
  final String itemType;
  // request.item#displayText
  final String displayText;
  // request.item#itemImages
  final List<ItemImages> itemImages;
  // request.item#isAvailableToGuests
  final bool isAvailableToGuests;
  // request.item#isPreselectedToGuests
  final bool isPreselectedToGuests;
  // request.item#tagNames
  final List<dynamic> tagNames;
  // request.item#tagIds
  final List<dynamic> tagIds;
  // request.item#substituteItemId
  final String substituteItemId;
  // request.item#isSubstituteItem
  final bool isSubstituteItem;
  // request.item#properties
  final CartProperties properties;
  // request.item#amount
  final String amount;
  // request.item#image
  final String image;
  // request.item#thumbnail
  final String thumbnail;
  // request.item#options
  final List<dynamic> options;
  // request.item#attributes
  final List<dynamic> attributes;
  // request.item#conceptId
  final String conceptId;
  // request.item#count
  final int count;
  // request.item#quantity
  final int quantity;
  // request.item#selectedModifiers
  final List<SelectedModifiers> selectedModifiers;
  // request.item#splInstruction
  final String splInstruction;
  // request.item#modifierTotal
  final int modifierTotal;
  // request.item#mealPeriodId
  final dynamic mealPeriodId;
  // request.item#uniqueId
  final String uniqueId;
  // request.item#cartItemId
  final String cartItemId;

  Item(
      {this.id,
      this.contextId,
      this.tenantId,
      this.itemId,
      this.name,
      this.isDeleted,
      this.isActive,
      this.lastUpdateTime,
      this.revenueCategoryId,
      this.productClassId,
      this.kpText,
      this.kitchenDisplayText,
      this.receiptText,
      this.price,
      this.defaultPriceLevelId,
      this.priceLevels,
      this.isSoldByWeight,
      this.tareWeight,
      this.isDiscountable,
      this.allowPriceOverride,
      this.isTaxIncluded,
      this.taxClasses,
      this.kitchenVideoLabel,
      this.kitchenVideoId,
      this.kitchenVideoCategoryId,
      this.kitchenCookTimeSeconds,
      this.skus,
      this.itemType,
      this.displayText,
      this.itemImages,
      this.isAvailableToGuests,
      this.isPreselectedToGuests,
      this.tagNames,
      this.tagIds,
      this.substituteItemId,
      this.isSubstituteItem,
      this.properties,
      this.amount,
      this.image,
      this.thumbnail,
      this.options,
      this.attributes,
      this.conceptId,
      this.count,
      this.quantity,
      this.selectedModifiers,
      this.splInstruction,
      this.modifierTotal,
      this.mealPeriodId,
      this.uniqueId,
      this.cartItemId});

  Item.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        contextId = json['contextId'],
        tenantId = json['tenantId'],
        itemId = json['itemId'],
        name = json['name'],
        isDeleted = json['isDeleted'],
        isActive = json['isActive'],
        lastUpdateTime = json['lastUpdateTime'],
        revenueCategoryId = json['revenueCategoryId'],
        productClassId = json['productClassId'],
        kpText = json['kpText'],
        kitchenDisplayText = json['kitchenDisplayText'],
        receiptText = json['receiptText'],
        price = Price.fromJson(json['price'] ?? {}),
        defaultPriceLevelId = json['defaultPriceLevelId'],
        priceLevels = PriceLevels.fromJson(json['priceLevels'] ?? {}),
        isSoldByWeight = json['isSoldByWeight'],
        tareWeight = json['tareWeight'],
        isDiscountable = json['isDiscountable'],
        allowPriceOverride = json['allowPriceOverride'],
        isTaxIncluded = json['isTaxIncluded'],
        taxClasses = json['taxClasses']?.cast<String>(),
        kitchenVideoLabel = json['kitchenVideoLabel'],
        kitchenVideoId = json['kitchenVideoId'],
        kitchenVideoCategoryId = json['kitchenVideoCategoryId'],
        kitchenCookTimeSeconds = json['kitchenCookTimeSeconds'],
        skus = json['skus'],
        itemType = json['itemType'],
        displayText = json['displayText'],
        itemImages = (json['itemImages'] as List)
            ?.map((e) => ItemImages.fromJson(e ?? {}))
            ?.toList(),
        isAvailableToGuests = json['isAvailableToGuests'],
        isPreselectedToGuests = json['isPreselectedToGuests'],
        tagNames = json['tagNames'],
        tagIds = json['tagIds'],
        substituteItemId = json['substituteItemId'],
        isSubstituteItem = json['isSubstituteItem'],
        properties = CartProperties.fromJson(json['properties'] ?? {}),
        amount = json['amount'],
        image = json['image'],
        thumbnail = json['thumbnail'],
        options = json['options'],
        attributes = json['attributes'],
        conceptId = json['conceptId'],
        count = json['count'],
        quantity = json['quantity'],
        selectedModifiers = (json['selectedModifiers'] as List)
            ?.map((e) => SelectedModifiers.fromJson(e ?? {}))
            ?.toList(),
        splInstruction = json['splInstruction'],
        modifierTotal = json['modifierTotal'],
        mealPeriodId = json['mealPeriodId'],
        uniqueId = json['uniqueId'],
        cartItemId = json['cartItemId'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'contextId': contextId,
        'tenantId': tenantId,
        'itemId': itemId,
        'name': name,
        'isDeleted': isDeleted,
        'isActive': isActive,
        'lastUpdateTime': lastUpdateTime,
        'revenueCategoryId': revenueCategoryId,
        'productClassId': productClassId,
        'kpText': kpText,
        'kitchenDisplayText': kitchenDisplayText,
        'receiptText': receiptText,
        'price': price?.toJson(),
        'defaultPriceLevelId': defaultPriceLevelId,
        'priceLevels': priceLevels?.toJson(),
        'isSoldByWeight': isSoldByWeight,
        'tareWeight': tareWeight,
        'isDiscountable': isDiscountable,
        'allowPriceOverride': allowPriceOverride,
        'isTaxIncluded': isTaxIncluded,
        'taxClasses': taxClasses,
        'kitchenVideoLabel': kitchenVideoLabel,
        'kitchenVideoId': kitchenVideoId,
        'kitchenVideoCategoryId': kitchenVideoCategoryId,
        'kitchenCookTimeSeconds': kitchenCookTimeSeconds,
        'skus': skus,
        'itemType': itemType,
        'displayText': displayText,
        'itemImages': itemImages?.map((e) => e?.toJson())?.toList(),
        'isAvailableToGuests': isAvailableToGuests,
        'isPreselectedToGuests': isPreselectedToGuests,
        'tagNames': tagNames,
        'tagIds': tagIds,
        'substituteItemId': substituteItemId,
        'isSubstituteItem': isSubstituteItem,
        'properties': properties?.toJson(),
        'amount': amount,
        'image': image,
        'thumbnail': thumbnail,
        'options': options,
        'attributes': attributes,
        'conceptId': conceptId,
        'count': count,
        'quantity': quantity,
        'selectedModifiers':
            selectedModifiers?.map((e) => e?.toJson())?.toList(),
        'splInstruction': splInstruction,
        'modifierTotal': modifierTotal,
        'mealPeriodId': mealPeriodId,
        'uniqueId': uniqueId,
        'cartItemId': cartItemId
      };
}
