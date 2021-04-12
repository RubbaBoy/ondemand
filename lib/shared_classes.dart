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
class ItemImage {
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

  ItemImage(
      {this.businessContextId,
      this.imageId,
      this.name,
      this.fileNames,
      this.tags});

  ItemImage.fromJson(Map<String, dynamic> json)
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
/// response.response.menus.categories.categoryOptions
/// ```
class CategoryOptions {
  CategoryOptions.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
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
/// response.response.menus.categories
/// ```
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
/// response.childGroups.childItems.priceLevels[]
/// ```
class PriceLevelsNum {
  // response.childGroups.childItems.priceLevels[]#key
  final String key;
  // response.childGroups.childItems.priceLevels[]#priceLevelId
  final String priceLevelId;
  // response.childGroups.childItems.priceLevels[]#name
  final String name;
  // response.childGroups.childItems.priceLevels[]#price
  final Price price;

  PriceLevelsNum({this.key, this.priceLevelId, this.name, this.price});
  String getKey() => key;

  PriceLevelsNum.fromJson(this.key, Map<String, dynamic> json)
      : priceLevelId = json['priceLevelId'],
        name = json['name'],
        price = Price.fromJson(json['price'] ?? {});

  Map<String, dynamic> toJson() =>
      {'priceLevelId': priceLevelId, 'name': name, 'price': price?.toJson()};
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
/// response.addedItem.priceLevels.1
/// ```
class Num1 {
  // response.addedItem.priceLevels.1#priceLevelId
  final String priceLevelId;
  // response.addedItem.priceLevels.1#name
  final String name;
  // response.addedItem.priceLevels.1#price
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
/// response.addedItem.itemImages
/// ```
class ItemImages {
  // response.addedItem.itemImages#businessContextId
  final String businessContextId;
  // response.addedItem.itemImages#imageId
  final String imageId;
  // response.addedItem.itemImages#name
  final String name;
  // response.addedItem.itemImages#fileNames
  final List<String> fileNames;
  // response.addedItem.itemImages#tags
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
/// request.item.properties
/// ```
class CartProperties {
  // request.item.properties#cartGuid
  final String cartGuid;

  CartProperties({this.cartGuid});

  CartProperties.fromJson(Map<String, dynamic> json)
      : cartGuid = json['cartGuid'];

  Map<String, dynamic> toJson() => {'cartGuid': cartGuid};
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
/// response.closedOrder.receiptData.receiptJson.orderData.currencyInfo
/// ```
class CurrencyInfo {
  // response.closedOrder.receiptData.receiptJson.orderData.currencyInfo#currencyCultureName
  final String currencyCultureName;
  // response.closedOrder.receiptData.receiptJson.orderData.currencyInfo#currencyCode
  final String currencyCode;
  // response.closedOrder.receiptData.receiptJson.orderData.currencyInfo#currencyDecimalDigits
  final String currencyDecimalDigits;
  // response.closedOrder.receiptData.receiptJson.orderData.currencyInfo#currencySymbol
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
