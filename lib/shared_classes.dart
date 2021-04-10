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
/// response.response.allAvailableList.availableAt.openWindowTimeFrames
/// ```
class OpenWindowTimeFrames {
  // response.response.allAvailableList.availableAt.openWindowTimeFrames#opens
  final String opens;
  // response.response.allAvailableList.availableAt.openWindowTimeFrames#closes
  final String closes;

  OpenWindowTimeFrames({this.opens, this.closes});

  OpenWindowTimeFrames.fromJson(Map<String, dynamic> json)
      : opens = json['opens'],
        closes = json['closes'];

  Map<String, dynamic> toJson() => {'opens': opens, 'closes': closes};
}

/// Json path:
/// ```
/// response.response.atriumConfig.autoDeduct
/// ```
class AutoDeduct {
  // response.response.atriumConfig.autoDeduct#displayName
  final String displayName;
  // response.response.atriumConfig.autoDeduct#isEnabled
  final bool isEnabled;

  AutoDeduct({this.displayName, this.isEnabled});

  AutoDeduct.fromJson(Map<String, dynamic> json)
      : displayName = json['displayName'],
        isEnabled = json['isEnabled'];

  Map<String, dynamic> toJson() =>
      {'displayName': displayName, 'isEnabled': isEnabled};
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
/// response.response.customLabels.New
/// ```
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
/// response.addedItem.selectedModifiers
/// ```
class SelectedModifiers {
  // response.addedItem.selectedModifiers#id
  final String id;
  // response.addedItem.selectedModifiers#description
  final String description;
  // response.addedItem.selectedModifiers#selected
  final bool selected;
  // response.addedItem.selectedModifiers#baseAmount
  final String baseAmount;
  // response.addedItem.selectedModifiers#amount
  final String amount;
  // response.addedItem.selectedModifiers#childPriceLevelId
  final String childPriceLevelId;
  // response.addedItem.selectedModifiers#parentGroupId
  final String parentGroupId;
  // response.addedItem.selectedModifiers#currencyUnit
  final String currencyUnit;
  // response.addedItem.selectedModifiers#lineItemId
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
/// response.response.amount
/// ```
class Amount {
  // response.response.amount#remaining
  final String remaining;
  // response.response.amount#currency
  final String currency;
  // response.response.amount#applied
  final String applied;
  // response.response.amount#total
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
/// response[]
/// ```
class TenderInfo {
  // response[]#key
  final String key;
  // response[]#verificationCodeId
  final int verificationCodeId;

  TenderInfo({this.key, this.verificationCodeId});
  String getKey() => key;

  TenderInfo.fromJson(this.key, Map<String, dynamic> json)
      : verificationCodeId = json['verificationCodeId'];

  Map<String, dynamic> toJson() => {'verificationCodeId': verificationCodeId};
}

/// Json path:
/// ```
/// response.data.paymentData.paymentResponse.transactionData.atriumPaymentRequest.atriumCurrency
/// ```
class AtriumCurrency {
  // response.data.paymentData.paymentResponse.transactionData.atriumPaymentRequest.atriumCurrency#currencyType
  final String currencyType;
  // response.data.paymentData.paymentResponse.transactionData.atriumPaymentRequest.atriumCurrency#total
  final String total;
  // response.data.paymentData.paymentResponse.transactionData.atriumPaymentRequest.atriumCurrency#tax
  final String tax;
  // response.data.paymentData.paymentResponse.transactionData.atriumPaymentRequest.atriumCurrency#conversion
  final dynamic conversion;

  AtriumCurrency({this.currencyType, this.total, this.tax, this.conversion});

  AtriumCurrency.fromJson(Map<String, dynamic> json)
      : currencyType = json['currencyType'],
        total = json['total'],
        tax = json['tax'],
        conversion = json['conversion'];

  Map<String, dynamic> toJson() => {
        'currencyType': currencyType,
        'total': total,
        'tax': tax,
        'conversion': conversion
      };
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

/// Json path:
/// ```
/// response.closedOrder.receiptData.receiptJson.orderData.paymentInfo
/// ```
class PaymentInfo {
  // response.closedOrder.receiptData.receiptJson.orderData.paymentInfo#buyPaymentForm
  final String buyPaymentForm;
  // response.closedOrder.receiptData.receiptJson.orderData.paymentInfo#showAuthorizationInfoOnReceipt
  final bool showAuthorizationInfoOnReceipt;
  // response.closedOrder.receiptData.receiptJson.orderData.paymentInfo#atriumLabel
  final String atriumLabel;
  // response.closedOrder.receiptData.receiptJson.orderData.paymentInfo#amountCharged
  final String amountCharged;
  // response.closedOrder.receiptData.receiptJson.orderData.paymentInfo#currentBalance
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
/// response.maxTime.periodType
/// ```
class PeriodType {
  // response.maxTime.periodType#name
  final String name;

  PeriodType({this.name});

  PeriodType.fromJson(Map<String, dynamic> json) : name = json['name'];

  Map<String, dynamic> toJson() => {'name': name};
}
