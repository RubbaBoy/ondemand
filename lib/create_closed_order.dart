import 'base.dart';

/// Json path:
/// ```
/// request.order.lineItems.price
/// ```
class Price {
  // request.order.lineItems.price#currencyUnit
  final String currencyUnit;
  // request.order.lineItems.price#amount
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
/// request.order.lineItems.properties
/// ```
class Properties {
  // request.order.lineItems.properties#mealPeriodId
  final String mealPeriodId;
  // request.order.lineItems.properties#priceLevelId
  final String priceLevelId;
  // request.order.lineItems.properties#displayText
  final String displayText;
  // request.order.lineItems.properties#image
  final String image;
  // request.order.lineItems.properties#amount
  final String amount;
  // request.order.lineItems.properties#tagNames
  final String tagNames;
  // request.order.lineItems.properties#count
  final String count;
  // request.order.lineItems.properties#quantity
  final String quantity;

  Properties(
      {this.mealPeriodId,
      this.priceLevelId,
      this.displayText,
      this.image,
      this.amount,
      this.tagNames,
      this.count,
      this.quantity});

  Properties.fromJson(Map<String, dynamic> json)
      : mealPeriodId = json['mealPeriodId'],
        priceLevelId = json['priceLevelId'],
        displayText = json['displayText'],
        image = json['image'],
        amount = json['amount'],
        tagNames = json['tagNames'],
        count = json['count'],
        quantity = json['quantity'];

  Map<String, dynamic> toJson() => {
        'mealPeriodId': mealPeriodId,
        'priceLevelId': priceLevelId,
        'displayText': displayText,
        'image': image,
        'amount': amount,
        'tagNames': tagNames,
        'count': count,
        'quantity': quantity
      };
}

/// Json path:
/// ```
/// response.closedOrder.receiptData.receiptJson.orderData.lineItems
/// ```
class LineItems {
  // response.closedOrder.receiptData.receiptJson.orderData.lineItems#quantity
  final int quantity;
  // response.closedOrder.receiptData.receiptJson.orderData.lineItems#price
  final String price;
  // response.closedOrder.receiptData.receiptJson.orderData.lineItems#displayText
  final String displayText;
  // response.closedOrder.receiptData.receiptJson.orderData.lineItems#splInstruction
  final String splInstruction;
  // response.closedOrder.receiptData.receiptJson.orderData.lineItems#lineItemGroups
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
/// response.closedOrder.gratuityAmount
/// ```
class GratuityAmount {
  // response.closedOrder.gratuityAmount#currencyUnit
  final String currencyUnit;
  // response.closedOrder.gratuityAmount#amount
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
/// response.closedOrder.serviceAmount
/// ```
class ServiceAmount {
  // response.closedOrder.serviceAmount#currencyUnit
  final String currencyUnit;
  // response.closedOrder.serviceAmount#amount
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
/// response.closedOrder.taxExcludedTotalAmount
/// ```
class TaxExcludedTotalAmount {
  // response.closedOrder.taxExcludedTotalAmount#currencyUnit
  final String currencyUnit;
  // response.closedOrder.taxExcludedTotalAmount#amount
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
/// response.closedOrder.taxExcludedServiceChargeAndGratuityIncludedTotalAmount
/// ```
class TaxExcludedServiceChargeAndGratuityIncludedTotalAmount {
  // response.closedOrder.taxExcludedServiceChargeAndGratuityIncludedTotalAmount#currencyUnit
  final String currencyUnit;
  // response.closedOrder.taxExcludedServiceChargeAndGratuityIncludedTotalAmount#amount
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
/// response.closedOrder.taxTotalAmount
/// ```
class TaxTotalAmount {
  // response.closedOrder.taxTotalAmount#currencyUnit
  final String currencyUnit;
  // response.closedOrder.taxTotalAmount#amount
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
/// response.closedOrder.taxIncludedTotalAmount
/// ```
class TaxIncludedTotalAmount {
  // response.closedOrder.taxIncludedTotalAmount#currencyUnit
  final String currencyUnit;
  // response.closedOrder.taxIncludedTotalAmount#amount
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
/// response.closedOrder.subTotalAmount
/// ```
class SubTotalAmount {
  // response.closedOrder.subTotalAmount#currencyUnit
  final String currencyUnit;
  // response.closedOrder.subTotalAmount#amount
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
/// response.closedOrder.subTotalAmountWithoutDiscount
/// ```
class SubTotalAmountWithoutDiscount {
  // response.closedOrder.subTotalAmountWithoutDiscount#currencyUnit
  final String currencyUnit;
  // response.closedOrder.subTotalAmountWithoutDiscount#amount
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
/// response.closedOrder.subTotalTaxAmount
/// ```
class SubTotalTaxAmount {
  // response.closedOrder.subTotalTaxAmount#currencyUnit
  final String currencyUnit;
  // response.closedOrder.subTotalTaxAmount#amount
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
/// response.closedOrder.totalPaymentAmount
/// ```
class TotalPaymentAmount {
  // response.closedOrder.totalPaymentAmount#currencyUnit
  final String currencyUnit;
  // response.closedOrder.totalPaymentAmount#amount
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
/// response.closedOrder.totalTipAmount
/// ```
class TotalTipAmount {
  // response.closedOrder.totalTipAmount#currencyUnit
  final String currencyUnit;
  // response.closedOrder.totalTipAmount#amount
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
/// response.closedOrder.totalDueAmount
/// ```
class TotalDueAmount {
  // response.closedOrder.totalDueAmount#currencyUnit
  final String currencyUnit;
  // response.closedOrder.totalDueAmount#amount
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
/// request.receiptInfo.orderData.totalDiscountAmount
/// ```
class TotalDiscountAmount {
  // request.receiptInfo.orderData.totalDiscountAmount#currencyUnit
  final String currencyUnit;
  // request.receiptInfo.orderData.totalDiscountAmount#amount
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
/// response.closedOrder.totalRoundAmount
/// ```
class TotalRoundAmount {
  // response.closedOrder.totalRoundAmount#currencyUnit
  final String currencyUnit;
  // response.closedOrder.totalRoundAmount#amount
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
/// request.order.taxBreakdown.salesTaxes.amount
/// ```
class Amount {
  // request.order.taxBreakdown.salesTaxes.amount#currencyUnit
  final String currencyUnit;
  // request.order.taxBreakdown.salesTaxes.amount#amount
  final String amount;

  Amount({this.currencyUnit, this.amount});

  Amount.fromJson(Map<String, dynamic> json)
      : currencyUnit = json['currencyUnit'],
        amount = json['amount'];

  Map<String, dynamic> toJson() =>
      {'currencyUnit': currencyUnit, 'amount': amount};
}

/// Json path:
/// ```
/// response.closedOrder.taxBreakdown.salesTaxes
/// ```
class SalesTaxes {
  // response.closedOrder.taxBreakdown.salesTaxes#id
  final String id;
  // response.closedOrder.taxBreakdown.salesTaxes#taxClassName
  final String taxClassName;
  // response.closedOrder.taxBreakdown.salesTaxes#taxPercent
  final int taxPercent;
  // response.closedOrder.taxBreakdown.salesTaxes#amount
  final Amount amount;

  SalesTaxes({this.id, this.taxClassName, this.taxPercent, this.amount});

  SalesTaxes.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        taxClassName = json['taxClassName'],
        taxPercent = json['taxPercent'],
        amount = Amount.fromJson(json['amount'] ?? {});

  Map<String, dynamic> toJson() => {
        'id': id,
        'taxClassName': taxClassName,
        'taxPercent': taxPercent,
        'amount': amount?.toJson()
      };
}

/// Json path:
/// ```
/// response.closedOrder.taxBreakdown
/// ```
class TaxBreakdown {
  // response.closedOrder.taxBreakdown#isVatEnabled
  final bool isVatEnabled;
  // response.closedOrder.taxBreakdown#salesTaxes
  final List<SalesTaxes> salesTaxes;
  // response.closedOrder.taxBreakdown#vatTaxes
  final List<dynamic> vatTaxes;

  TaxBreakdown({this.isVatEnabled, this.salesTaxes, this.vatTaxes});

  TaxBreakdown.fromJson(Map<String, dynamic> json)
      : isVatEnabled = json['isVatEnabled'],
        salesTaxes = (json['salesTaxes'] as List)
            ?.map((e) => SalesTaxes.fromJson(e ?? {}))
            ?.toList(),
        vatTaxes = json['vatTaxes'];

  Map<String, dynamic> toJson() => {
        'isVatEnabled': isVatEnabled,
        'salesTaxes': salesTaxes?.map((e) => e?.toJson())?.toList(),
        'vatTaxes': vatTaxes
      };
}

/// Json path:
/// ```
/// response.closedOrder.internalProperties
/// ```
class InternalProperties {
  // response.closedOrder.internalProperties#aspenInventoryPostingPaymentDtos
  final String aspenInventoryPostingPaymentDtos;

  InternalProperties({this.aspenInventoryPostingPaymentDtos});

  InternalProperties.fromJson(Map<String, dynamic> json)
      : aspenInventoryPostingPaymentDtos =
            json['aspenInventoryPostingPaymentDtos'];

  Map<String, dynamic> toJson() =>
      {'aspenInventoryPostingPaymentDtos': aspenInventoryPostingPaymentDtos};
}

/// Json path:
/// ```
/// request.order
/// ```
class Order {
  // request.order#orderId
  final String orderId;
  // request.order#version
  final int version;
  // request.order#tenantId
  final String tenantId;
  // request.order#contextId
  final String contextId;
  // request.order#created
  final String created;
  // request.order#lastUpdated
  final String lastUpdated;
  // request.order#orderState
  final String orderState;
  // request.order#orderNumber
  final String orderNumber;
  // request.order#currencyUnit
  final String currencyUnit;
  // request.order#lineItems
  final List<LineItems> lineItems;
  // request.order#discounts
  final List<dynamic> discounts;
  // request.order#gratuityAmount
  final GratuityAmount gratuityAmount;
  // request.order#serviceAmount
  final ServiceAmount serviceAmount;
  // request.order#taxExcludedTotalAmount
  final TaxExcludedTotalAmount taxExcludedTotalAmount;
  // request.order#taxExcludedServiceChargeAndGratuityIncludedTotalAmount
  final TaxExcludedServiceChargeAndGratuityIncludedTotalAmount
      taxExcludedServiceChargeAndGratuityIncludedTotalAmount;
  // request.order#taxTotalAmount
  final TaxTotalAmount taxTotalAmount;
  // request.order#taxIncludedTotalAmount
  final TaxIncludedTotalAmount taxIncludedTotalAmount;
  // request.order#subTotalAmount
  final SubTotalAmount subTotalAmount;
  // request.order#subTotalAmountWithoutDiscount
  final SubTotalAmountWithoutDiscount subTotalAmountWithoutDiscount;
  // request.order#subTotalTaxAmount
  final SubTotalTaxAmount subTotalTaxAmount;
  // request.order#totalPaymentAmount
  final TotalPaymentAmount totalPaymentAmount;
  // request.order#totalTipAmount
  final TotalTipAmount totalTipAmount;
  // request.order#totalDueAmount
  final TotalDueAmount totalDueAmount;
  // request.order#amountModifications
  final List<dynamic> amountModifications;
  // request.order#totalDiscountAmount
  final TotalDiscountAmount totalDiscountAmount;
  // request.order#totalRoundAmount
  final TotalRoundAmount totalRoundAmount;
  // request.order#taxBreakdown
  final TaxBreakdown taxBreakdown;
  // request.order#payments
  final List<dynamic> payments;
  // request.order#payments2
  final List<dynamic> payments2;
  // request.order#properties
  final Properties properties;
  // request.order#internalProperties
  final InternalProperties internalProperties;
  // request.order#scheduledOrderCompletionTimeStamp
  final String scheduledOrderCompletionTimeStamp;
  // request.order#scheduleEndTimeSlot
  final String scheduleEndTimeSlot;
  // request.order#scheduledOrderTime
  final String scheduledOrderTime;

  Order(
      {this.orderId,
      this.version,
      this.tenantId,
      this.contextId,
      this.created,
      this.lastUpdated,
      this.orderState,
      this.orderNumber,
      this.currencyUnit,
      this.lineItems,
      this.discounts,
      this.gratuityAmount,
      this.serviceAmount,
      this.taxExcludedTotalAmount,
      this.taxExcludedServiceChargeAndGratuityIncludedTotalAmount,
      this.taxTotalAmount,
      this.taxIncludedTotalAmount,
      this.subTotalAmount,
      this.subTotalAmountWithoutDiscount,
      this.subTotalTaxAmount,
      this.totalPaymentAmount,
      this.totalTipAmount,
      this.totalDueAmount,
      this.amountModifications,
      this.totalDiscountAmount,
      this.totalRoundAmount,
      this.taxBreakdown,
      this.payments,
      this.payments2,
      this.properties,
      this.internalProperties,
      this.scheduledOrderCompletionTimeStamp,
      this.scheduleEndTimeSlot,
      this.scheduledOrderTime});

  Order.fromJson(Map<String, dynamic> json)
      : orderId = json['orderId'],
        version = json['version'],
        tenantId = json['tenantId'],
        contextId = json['contextId'],
        created = json['created'],
        lastUpdated = json['lastUpdated'],
        orderState = json['orderState'],
        orderNumber = json['orderNumber'],
        currencyUnit = json['currencyUnit'],
        lineItems = (json['lineItems'] as List)
            ?.map((e) => LineItems.fromJson(e ?? {}))
            ?.toList(),
        discounts = json['discounts'],
        gratuityAmount = GratuityAmount.fromJson(json['gratuityAmount'] ?? {}),
        serviceAmount = ServiceAmount.fromJson(json['serviceAmount'] ?? {}),
        taxExcludedTotalAmount = TaxExcludedTotalAmount.fromJson(
            json['taxExcludedTotalAmount'] ?? {}),
        taxExcludedServiceChargeAndGratuityIncludedTotalAmount =
            TaxExcludedServiceChargeAndGratuityIncludedTotalAmount.fromJson(
                json['taxExcludedServiceChargeAndGratuityIncludedTotalAmount'] ??
                    {}),
        taxTotalAmount = TaxTotalAmount.fromJson(json['taxTotalAmount'] ?? {}),
        taxIncludedTotalAmount = TaxIncludedTotalAmount.fromJson(
            json['taxIncludedTotalAmount'] ?? {}),
        subTotalAmount = SubTotalAmount.fromJson(json['subTotalAmount'] ?? {}),
        subTotalAmountWithoutDiscount = SubTotalAmountWithoutDiscount.fromJson(
            json['subTotalAmountWithoutDiscount'] ?? {}),
        subTotalTaxAmount =
            SubTotalTaxAmount.fromJson(json['subTotalTaxAmount'] ?? {}),
        totalPaymentAmount =
            TotalPaymentAmount.fromJson(json['totalPaymentAmount'] ?? {}),
        totalTipAmount = TotalTipAmount.fromJson(json['totalTipAmount'] ?? {}),
        totalDueAmount = TotalDueAmount.fromJson(json['totalDueAmount'] ?? {}),
        amountModifications = json['amountModifications'],
        totalDiscountAmount =
            TotalDiscountAmount.fromJson(json['totalDiscountAmount'] ?? {}),
        totalRoundAmount =
            TotalRoundAmount.fromJson(json['totalRoundAmount'] ?? {}),
        taxBreakdown = TaxBreakdown.fromJson(json['taxBreakdown'] ?? {}),
        payments = json['payments'],
        payments2 = json['payments2'],
        properties = Properties.fromJson(json['properties'] ?? {}),
        internalProperties =
            InternalProperties.fromJson(json['internalProperties'] ?? {}),
        scheduledOrderCompletionTimeStamp =
            json['scheduledOrderCompletionTimeStamp'],
        scheduleEndTimeSlot = json['scheduleEndTimeSlot'],
        scheduledOrderTime = json['scheduledOrderTime'];

  Map<String, dynamic> toJson() => {
        'orderId': orderId,
        'version': version,
        'tenantId': tenantId,
        'contextId': contextId,
        'created': created,
        'lastUpdated': lastUpdated,
        'orderState': orderState,
        'orderNumber': orderNumber,
        'currencyUnit': currencyUnit,
        'lineItems': lineItems?.map((e) => e?.toJson())?.toList(),
        'discounts': discounts,
        'gratuityAmount': gratuityAmount?.toJson(),
        'serviceAmount': serviceAmount?.toJson(),
        'taxExcludedTotalAmount': taxExcludedTotalAmount?.toJson(),
        'taxExcludedServiceChargeAndGratuityIncludedTotalAmount':
            taxExcludedServiceChargeAndGratuityIncludedTotalAmount?.toJson(),
        'taxTotalAmount': taxTotalAmount?.toJson(),
        'taxIncludedTotalAmount': taxIncludedTotalAmount?.toJson(),
        'subTotalAmount': subTotalAmount?.toJson(),
        'subTotalAmountWithoutDiscount':
            subTotalAmountWithoutDiscount?.toJson(),
        'subTotalTaxAmount': subTotalTaxAmount?.toJson(),
        'totalPaymentAmount': totalPaymentAmount?.toJson(),
        'totalTipAmount': totalTipAmount?.toJson(),
        'totalDueAmount': totalDueAmount?.toJson(),
        'amountModifications': amountModifications,
        'totalDiscountAmount': totalDiscountAmount?.toJson(),
        'totalRoundAmount': totalRoundAmount?.toJson(),
        'taxBreakdown': taxBreakdown?.toJson(),
        'payments': payments,
        'payments2': payments2,
        'properties': properties?.toJson(),
        'internalProperties': internalProperties?.toJson(),
        'scheduledOrderCompletionTimeStamp': scheduledOrderCompletionTimeStamp,
        'scheduleEndTimeSlot': scheduleEndTimeSlot,
        'scheduledOrderTime': scheduledOrderTime
      };
}

/// Json path:
/// ```
/// request.receiptInfo.currencyDetails
/// ```
class CurrencyDetails {
  // request.receiptInfo.currencyDetails#currencyDecimalDigits
  final String currencyDecimalDigits;
  // request.receiptInfo.currencyDetails#currencyCultureName
  final String currencyCultureName;
  // request.receiptInfo.currencyDetails#currencyCode
  final String currencyCode;
  // request.receiptInfo.currencyDetails#currencySymbol
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
/// request.igSettings
/// ```
class IgSettings {
  // request.igSettings#allowCartEdit
  final String allowCartEdit;
  // request.igSettings#check-type
  final String checkType;
  // request.igSettings#discountStateTitle
  final String discountStateTitle;
  // request.igSettings#LOYALTY/uiNoTendersAvailableMsg
  final String lOYALTYUiNoTendersAvailableMsg;
  // request.igSettings#isSmsEnabled
  final String isSmsEnabled;
  // request.igSettings#name-capture/lastInitialOnly
  final String nameCaptureLastInitialOnly;
  // request.igSettings#currency/currencyCultureName
  final String currencyCurrencyCultureName;
  // request.igSettings#isMobileNumberRequired
  final String isMobileNumberRequired;
  // request.igSettings#hideSKULookup
  final String hideSKULookup;
  // request.igSettings#isProfileValid
  final String isProfileValid;
  // request.igSettings#voidReasonId
  final String voidReasonId;
  // request.igSettings#currency/currencyCode
  final String currencyCurrencyCode;
  // request.igSettings#onDemandIgVerificationCodeId
  final String onDemandIgVerificationCodeId;
  // request.igSettings#useIgOrderApi
  final String useIgOrderApi;
  // request.igSettings#roomCharge/paymentIds
  final String roomChargePaymentIds;
  // request.igSettings#isTimeZoneValidationEnabled
  final String isTimeZoneValidationEnabled;
  // request.igSettings#LOYALTY/bannedPlayerMessage
  final String lOYALTYBannedPlayerMessage;
  // request.igSettings#LOYALTY/pinNumberLength
  final String lOYALTYPinNumberLength;
  // request.igSettings#currency/currencySymbol
  final String currencyCurrencySymbol;
  // request.igSettings#gaPaymentName
  final String gaPaymentName;
  // request.igSettings#itemScanningDisabled
  final String itemScanningDisabled;
  // request.igSettings#onDemandTenderId
  final String onDemandTenderId;
  // request.igSettings#name-capture/isOptional
  final String nameCaptureIsOptional;
  // request.igSettings#onDemandEmployeeId
  final String onDemandEmployeeId;
  // request.igSettings#profit-center-id
  final String profitCenterId;
  // request.igSettings#LOYALTY/uiSystemBrandingLabel
  final String lOYALTYUiSystemBrandingLabel;
  // request.igSettings#name-capture/nameCaptureInstruction
  final String nameCaptureNameCaptureInstruction;
  // request.igSettings#currency/currencyDecimalDigits
  final String currencyCurrencyDecimalDigits;
  // request.igSettings#LOYALTY/restrictBannedPlayers
  final String lOYALTYRestrictBannedPlayers;
  // request.igSettings#onDemandTerminalId
  final String onDemandTerminalId;

  IgSettings(
      {this.allowCartEdit,
      this.checkType,
      this.discountStateTitle,
      this.lOYALTYUiNoTendersAvailableMsg,
      this.isSmsEnabled,
      this.nameCaptureLastInitialOnly,
      this.currencyCurrencyCultureName,
      this.isMobileNumberRequired,
      this.hideSKULookup,
      this.isProfileValid,
      this.voidReasonId,
      this.currencyCurrencyCode,
      this.onDemandIgVerificationCodeId,
      this.useIgOrderApi,
      this.roomChargePaymentIds,
      this.isTimeZoneValidationEnabled,
      this.lOYALTYBannedPlayerMessage,
      this.lOYALTYPinNumberLength,
      this.currencyCurrencySymbol,
      this.gaPaymentName,
      this.itemScanningDisabled,
      this.onDemandTenderId,
      this.nameCaptureIsOptional,
      this.onDemandEmployeeId,
      this.profitCenterId,
      this.lOYALTYUiSystemBrandingLabel,
      this.nameCaptureNameCaptureInstruction,
      this.currencyCurrencyDecimalDigits,
      this.lOYALTYRestrictBannedPlayers,
      this.onDemandTerminalId});

  IgSettings.fromJson(Map<String, dynamic> json)
      : allowCartEdit = json['allowCartEdit'],
        checkType = json['check-type'],
        discountStateTitle = json['discountStateTitle'],
        lOYALTYUiNoTendersAvailableMsg =
            json['LOYALTY/uiNoTendersAvailableMsg'],
        isSmsEnabled = json['isSmsEnabled'],
        nameCaptureLastInitialOnly = json['name-capture/lastInitialOnly'],
        currencyCurrencyCultureName = json['currency/currencyCultureName'],
        isMobileNumberRequired = json['isMobileNumberRequired'],
        hideSKULookup = json['hideSKULookup'],
        isProfileValid = json['isProfileValid'],
        voidReasonId = json['voidReasonId'],
        currencyCurrencyCode = json['currency/currencyCode'],
        onDemandIgVerificationCodeId = json['onDemandIgVerificationCodeId'],
        useIgOrderApi = json['useIgOrderApi'],
        roomChargePaymentIds = json['roomCharge/paymentIds'],
        isTimeZoneValidationEnabled = json['isTimeZoneValidationEnabled'],
        lOYALTYBannedPlayerMessage = json['LOYALTY/bannedPlayerMessage'],
        lOYALTYPinNumberLength = json['LOYALTY/pinNumberLength'],
        currencyCurrencySymbol = json['currency/currencySymbol'],
        gaPaymentName = json['gaPaymentName'],
        itemScanningDisabled = json['itemScanningDisabled'],
        onDemandTenderId = json['onDemandTenderId'],
        nameCaptureIsOptional = json['name-capture/isOptional'],
        onDemandEmployeeId = json['onDemandEmployeeId'],
        profitCenterId = json['profit-center-id'],
        lOYALTYUiSystemBrandingLabel = json['LOYALTY/uiSystemBrandingLabel'],
        nameCaptureNameCaptureInstruction =
            json['name-capture/nameCaptureInstruction'],
        currencyCurrencyDecimalDigits = json['currency/currencyDecimalDigits'],
        lOYALTYRestrictBannedPlayers = json['LOYALTY/restrictBannedPlayers'],
        onDemandTerminalId = json['onDemandTerminalId'];

  Map<String, dynamic> toJson() => {
        'allowCartEdit': allowCartEdit,
        'check-type': checkType,
        'discountStateTitle': discountStateTitle,
        'LOYALTY/uiNoTendersAvailableMsg': lOYALTYUiNoTendersAvailableMsg,
        'isSmsEnabled': isSmsEnabled,
        'name-capture/lastInitialOnly': nameCaptureLastInitialOnly,
        'currency/currencyCultureName': currencyCurrencyCultureName,
        'isMobileNumberRequired': isMobileNumberRequired,
        'hideSKULookup': hideSKULookup,
        'isProfileValid': isProfileValid,
        'voidReasonId': voidReasonId,
        'currency/currencyCode': currencyCurrencyCode,
        'onDemandIgVerificationCodeId': onDemandIgVerificationCodeId,
        'useIgOrderApi': useIgOrderApi,
        'roomCharge/paymentIds': roomChargePaymentIds,
        'isTimeZoneValidationEnabled': isTimeZoneValidationEnabled,
        'LOYALTY/bannedPlayerMessage': lOYALTYBannedPlayerMessage,
        'LOYALTY/pinNumberLength': lOYALTYPinNumberLength,
        'currency/currencySymbol': currencyCurrencySymbol,
        'gaPaymentName': gaPaymentName,
        'itemScanningDisabled': itemScanningDisabled,
        'onDemandTenderId': onDemandTenderId,
        'name-capture/isOptional': nameCaptureIsOptional,
        'onDemandEmployeeId': onDemandEmployeeId,
        'profit-center-id': profitCenterId,
        'LOYALTY/uiSystemBrandingLabel': lOYALTYUiSystemBrandingLabel,
        'name-capture/nameCaptureInstruction':
            nameCaptureNameCaptureInstruction,
        'currency/currencyDecimalDigits': currencyCurrencyDecimalDigits,
        'LOYALTY/restrictBannedPlayers': lOYALTYRestrictBannedPlayers,
        'onDemandTerminalId': onDemandTerminalId
      };
}

/// Json path:
/// ```
/// response.closedOrder.deliveryProperties.deliveryOption
/// ```
class DeliveryOption {
  // response.closedOrder.deliveryProperties.deliveryOption#id
  final String id;
  // response.closedOrder.deliveryProperties.deliveryOption#kitchenText
  final String kitchenText;
  // response.closedOrder.deliveryProperties.deliveryOption#displayText
  final String displayText;
  // response.closedOrder.deliveryProperties.deliveryOption#isEnabled
  final bool isEnabled;

  DeliveryOption({this.id, this.kitchenText, this.displayText, this.isEnabled});

  DeliveryOption.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        kitchenText = json['kitchenText'],
        displayText = json['displayText'],
        isEnabled = json['isEnabled'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'kitchenText': kitchenText,
        'displayText': displayText,
        'isEnabled': isEnabled
      };
}

/// Json path:
/// ```
/// response.closedOrder.deliveryProperties
/// ```
class DeliveryProperties {
  // response.closedOrder.deliveryProperties#deliveryOption
  final DeliveryOption deliveryOption;
  // response.closedOrder.deliveryProperties#nameString
  final String nameString;

  DeliveryProperties({this.deliveryOption, this.nameString});

  DeliveryProperties.fromJson(Map<String, dynamic> json)
      : deliveryOption = DeliveryOption.fromJson(json['deliveryOption'] ?? {}),
        nameString = json['nameString'];

  Map<String, dynamic> toJson() =>
      {'deliveryOption': deliveryOption?.toJson(), 'nameString': nameString};
}

/// Json path:
/// ```
/// request.scheduledOrderTime
/// ```
class ScheduledOrderTime {
  // request.scheduledOrderTime#startTime
  final String startTime;
  // request.scheduledOrderTime#endTime
  final String endTime;

  ScheduledOrderTime({this.startTime, this.endTime});

  ScheduledOrderTime.fromJson(Map<String, dynamic> json)
      : startTime = json['startTime'],
        endTime = json['endTime'];

  Map<String, dynamic> toJson() => {'startTime': startTime, 'endTime': endTime};
}

/// Json path:
/// ```
/// request.atriumPaymentAccounts.accounts
/// ```
class Accounts {
  // request.atriumPaymentAccounts.accounts#name
  final String name;
  // request.atriumPaymentAccounts.accounts#balance
  final String balance;
  // request.atriumPaymentAccounts.accounts#currency
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
/// request.atriumPaymentAccounts.authResponse.paymentData.paymentRequest.paymentAction
/// ```
class PaymentAction {
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentRequest.paymentAction#type
  final String type;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentRequest.paymentAction#properties
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
/// request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentRequest.atriumTerminal
/// ```
class AtriumTerminal {
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentRequest.atriumTerminal#terminalId
  final String terminalId;

  AtriumTerminal({this.terminalId});

  AtriumTerminal.fromJson(Map<String, dynamic> json)
      : terminalId = json['terminalId'];

  Map<String, dynamic> toJson() => {'terminalId': terminalId};
}

/// Json path:
/// ```
/// request.atriumPaymentAccounts.authResponse.paymentData.paymentRequest.transactionData.atriumPaymentRequest.customer
/// ```
class Customer {
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentRequest.transactionData.atriumPaymentRequest.customer#customerType
  final String customerType;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentRequest.transactionData.atriumPaymentRequest.customer#id
  final String id;

  Customer({this.customerType, this.id});

  Customer.fromJson(Map<String, dynamic> json)
      : customerType = json['customerType'],
        id = json['id'];

  Map<String, dynamic> toJson() => {'customerType': customerType, 'id': id};
}

/// Json path:
/// ```
/// request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentRequest.atriumCurrency
/// ```
class AtriumCurrency {
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentRequest.atriumCurrency#currencyType
  final String currencyType;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentRequest.atriumCurrency#total
  final String total;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentRequest.atriumCurrency#tax
  final String tax;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentRequest.atriumCurrency#conversion
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
/// request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentRequest
/// ```
class AtriumPaymentRequest {
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentRequest#tenderId
  final String tenderId;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentRequest#atriumTerminal
  final AtriumTerminal atriumTerminal;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentRequest#customer
  final Customer customer;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentRequest#atriumCurrency
  final AtriumCurrency atriumCurrency;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentRequest#overrideTaxExempt
  final dynamic overrideTaxExempt;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentRequest#properties
  final Properties properties;

  AtriumPaymentRequest(
      {this.tenderId,
      this.atriumTerminal,
      this.customer,
      this.atriumCurrency,
      this.overrideTaxExempt,
      this.properties});

  AtriumPaymentRequest.fromJson(Map<String, dynamic> json)
      : tenderId = json['tenderId'],
        atriumTerminal = AtriumTerminal.fromJson(json['atriumTerminal'] ?? {}),
        customer = Customer.fromJson(json['customer'] ?? {}),
        atriumCurrency = AtriumCurrency.fromJson(json['atriumCurrency'] ?? {}),
        overrideTaxExempt = json['overrideTaxExempt'],
        properties = Properties.fromJson(json['properties'] ?? {});

  Map<String, dynamic> toJson() => {
        'tenderId': tenderId,
        'atriumTerminal': atriumTerminal?.toJson(),
        'customer': customer?.toJson(),
        'atriumCurrency': atriumCurrency?.toJson(),
        'overrideTaxExempt': overrideTaxExempt,
        'properties': properties?.toJson()
      };
}

/// Json path:
/// ```
/// request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData
/// ```
class TransactionData {
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData#atriumPaymentRequest
  final AtriumPaymentRequest atriumPaymentRequest;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData#atriumPaymentResponse
  final AtriumPaymentResponse atriumPaymentResponse;

  TransactionData({this.atriumPaymentRequest, this.atriumPaymentResponse});

  TransactionData.fromJson(Map<String, dynamic> json)
      : atriumPaymentRequest =
            AtriumPaymentRequest.fromJson(json['atriumPaymentRequest'] ?? {}),
        atriumPaymentResponse =
            AtriumPaymentResponse.fromJson(json['atriumPaymentResponse'] ?? {});

  Map<String, dynamic> toJson() => {
        'atriumPaymentRequest': atriumPaymentRequest?.toJson(),
        'atriumPaymentResponse': atriumPaymentResponse?.toJson()
      };
}

/// Json path:
/// ```
/// request.atriumPaymentAccounts.authResponse.paymentData.paymentRequest
/// ```
class PaymentRequest {
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentRequest#tenantId
  final String tenantId;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentRequest#contextId
  final String contextId;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentRequest#paymentAction
  final PaymentAction paymentAction;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentRequest#currencyUnit
  final String currencyUnit;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentRequest#paymentProviderId
  final String paymentProviderId;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentRequest#transactionData
  final TransactionData transactionData;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentRequest#properties
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
/// request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentResponse
/// ```
class AtriumPaymentResponse {
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentResponse#txid
  final int txid;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentResponse#approved
  final int approved;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentResponse#code
  final String code;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentResponse#message
  final String message;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentResponse#time
  final int time;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentResponse#amount
  final Amount amount;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentResponse#accounts
  final List<Accounts> accounts;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.transactionData.atriumPaymentResponse#type
  final String type;

  AtriumPaymentResponse(
      {this.txid,
      this.approved,
      this.code,
      this.message,
      this.time,
      this.amount,
      this.accounts,
      this.type});

  AtriumPaymentResponse.fromJson(Map<String, dynamic> json)
      : txid = json['txid'],
        approved = json['approved'],
        code = json['code'],
        message = json['message'],
        time = json['time'],
        amount = Amount.fromJson(json['amount'] ?? {}),
        accounts = (json['accounts'] as List)
            ?.map((e) => Accounts.fromJson(e ?? {}))
            ?.toList(),
        type = json['type'];

  Map<String, dynamic> toJson() => {
        'txid': txid,
        'approved': approved,
        'code': code,
        'message': message,
        'time': time,
        'amount': amount?.toJson(),
        'accounts': accounts?.map((e) => e?.toJson())?.toList(),
        'type': type
      };
}

/// Json path:
/// ```
/// request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.paymentSupport.tipAmount
/// ```
class TipAmount {
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.paymentSupport.tipAmount#currencyUnit
  final String currencyUnit;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.paymentSupport.tipAmount#amount
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
/// request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.paymentSupport.offlineStatus
/// ```
class OfflineStatus {
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.paymentSupport.offlineStatus#offline
  final bool offline;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.paymentSupport.offlineStatus#offlineScopeId
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
/// request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.paymentSupport
/// ```
class PaymentSupport {
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.paymentSupport#amount
  final Amount amount;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.paymentSupport#tipAmount
  final TipAmount tipAmount;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.paymentSupport#paymentForm
  final String paymentForm;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.paymentSupport#paymentState
  final String paymentState;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.paymentSupport#offlineStatus
  final OfflineStatus offlineStatus;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.paymentSupport#amountModification
  final dynamic amountModification;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse.paymentSupport#refundSupported
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
      : amount = Amount.fromJson(json['amount'] ?? {}),
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
/// request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse
/// ```
class PaymentResponse {
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse#paymentProviderId
  final String paymentProviderId;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse#transactionData
  final TransactionData transactionData;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse#paymentSupport
  final PaymentSupport paymentSupport;
  // request.atriumPaymentAccounts.authResponse.paymentData.paymentResponse#properties
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
/// request.atriumPaymentAccounts.authResponse.paymentData
/// ```
class PaymentData {
  // request.atriumPaymentAccounts.authResponse.paymentData#id
  final String id;
  // request.atriumPaymentAccounts.authResponse.paymentData#paymentRequest
  final PaymentRequest paymentRequest;
  // request.atriumPaymentAccounts.authResponse.paymentData#paymentResponse
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
/// request.atriumPaymentAccounts.authResponse.digitalSignature
/// ```
class DigitalSignature {
  // request.atriumPaymentAccounts.authResponse.digitalSignature#dataEncoding
  final String dataEncoding;
  // request.atriumPaymentAccounts.authResponse.digitalSignature#base64
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
/// request.atriumPaymentAccounts.authResponse
/// ```
class AuthResponse {
  // request.atriumPaymentAccounts.authResponse#paymentData
  final PaymentData paymentData;
  // request.atriumPaymentAccounts.authResponse#digitalSignature
  final DigitalSignature digitalSignature;
  // request.atriumPaymentAccounts.authResponse#atriumResponseToken
  final String atriumResponseToken;

  AuthResponse(
      {this.paymentData, this.digitalSignature, this.atriumResponseToken});

  AuthResponse.fromJson(Map<String, dynamic> json)
      : paymentData = PaymentData.fromJson(json['paymentData'] ?? {}),
        digitalSignature =
            DigitalSignature.fromJson(json['digitalSignature'] ?? {}),
        atriumResponseToken = json['atriumResponseToken'];

  Map<String, dynamic> toJson() => {
        'paymentData': paymentData?.toJson(),
        'digitalSignature': digitalSignature?.toJson(),
        'atriumResponseToken': atriumResponseToken
      };
}

/// Json path:
/// ```
/// request.atriumPaymentAccounts
/// ```
class AtriumPaymentAccounts {
  // request.atriumPaymentAccounts#tenderId
  final String tenderId;
  // request.atriumPaymentAccounts#txid
  final int txid;
  // request.atriumPaymentAccounts#approved
  final int approved;
  // request.atriumPaymentAccounts#code
  final String code;
  // request.atriumPaymentAccounts#message
  final String message;
  // request.atriumPaymentAccounts#time
  final int time;
  // request.atriumPaymentAccounts#amount
  final Amount amount;
  // request.atriumPaymentAccounts#accounts
  final List<Accounts> accounts;
  // request.atriumPaymentAccounts#type
  final String type;
  // request.atriumPaymentAccounts#taxRemoved
  final bool taxRemoved;
  // request.atriumPaymentAccounts#displayName
  final String displayName;
  // request.atriumPaymentAccounts#atriumTenderId
  final String atriumTenderId;
  // request.atriumPaymentAccounts#tenderType
  final String tenderType;
  // request.atriumPaymentAccounts#taxExemptTenderId
  final String taxExemptTenderId;
  // request.atriumPaymentAccounts#taxableTenderId
  final String taxableTenderId;
  // request.atriumPaymentAccounts#isAuthUsingTaxableTenderId
  final bool isAuthUsingTaxableTenderId;
  // request.atriumPaymentAccounts#isRestricted
  final bool isRestricted;
  // request.atriumPaymentAccounts#authResponse
  final AuthResponse authResponse;
  // request.atriumPaymentAccounts#amountToBeCharged
  final double amountToBeCharged;
  // request.atriumPaymentAccounts#isAllTaxExempt
  final bool isAllTaxExempt;
  // request.atriumPaymentAccounts#taxExemptVerficationCode
  final int taxExemptVerficationCode;
  // request.atriumPaymentAccounts#taxableVerficationCode
  final int taxableVerficationCode;

  AtriumPaymentAccounts(
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
      this.authResponse,
      this.amountToBeCharged,
      this.isAllTaxExempt,
      this.taxExemptVerficationCode,
      this.taxableVerficationCode});

  AtriumPaymentAccounts.fromJson(Map<String, dynamic> json)
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
        authResponse = AuthResponse.fromJson(json['authResponse'] ?? {}),
        amountToBeCharged = json['amountToBeCharged'],
        isAllTaxExempt = json['isAllTaxExempt'],
        taxExemptVerficationCode = json['taxExemptVerficationCode'],
        taxableVerficationCode = json['taxableVerficationCode'];

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
        'authResponse': authResponse?.toJson(),
        'amountToBeCharged': amountToBeCharged,
        'isAllTaxExempt': isAllTaxExempt,
        'taxExemptVerficationCode': taxExemptVerficationCode,
        'taxableVerficationCode': taxableVerficationCode
      };
}

/// Json path:
/// ```
/// response.closedOrder.receiptData.receiptJson.orderData
/// ```
class OrderData {
  // response.closedOrder.receiptData.receiptJson.orderData#terminalNumber
  final String terminalNumber;
  // response.closedOrder.receiptData.receiptJson.orderData#storeInfo
  final StoreInfo storeInfo;
  // response.closedOrder.receiptData.receiptJson.orderData#showAllPrices
  final bool showAllPrices;
  // response.closedOrder.receiptData.receiptJson.orderData#lineItems
  final List<LineItems> lineItems;
  // response.closedOrder.receiptData.receiptJson.orderData#tip
  final bool tip;
  // response.closedOrder.receiptData.receiptJson.orderData#totalAmount
  final String totalAmount;
  // response.closedOrder.receiptData.receiptJson.orderData#gratuity
  final bool gratuity;
  // response.closedOrder.receiptData.receiptJson.orderData#serviceAmount
  final bool serviceAmount;
  // response.closedOrder.receiptData.receiptJson.orderData#discount
  final bool discount;
  // response.closedOrder.receiptData.receiptJson.orderData#discountName
  final dynamic discountName;
  // response.closedOrder.receiptData.receiptJson.orderData#checkNumber
  final String checkNumber;
  // response.closedOrder.receiptData.receiptJson.orderData#receipientName
  final String receipientName;
  // response.closedOrder.receiptData.receiptJson.orderData#mobileNumber
  final String mobileNumber;
  // response.closedOrder.receiptData.receiptJson.orderData#orderMessage
  final String orderMessage;
  // response.closedOrder.receiptData.receiptJson.orderData#paymentInfo
  final List<PaymentInfo> paymentInfo;
  // response.closedOrder.receiptData.receiptJson.orderData#currencyInfo
  final CurrencyInfo currencyInfo;
  // response.closedOrder.receiptData.receiptJson.orderData#dateTime
  final String dateTime;
  // response.closedOrder.receiptData.receiptJson.orderData#timezoneOffsetMinutes
  final int timezoneOffsetMinutes;
  // response.closedOrder.receiptData.receiptJson.orderData#printDateTime
  final String printDateTime;
  // response.closedOrder.receiptData.receiptJson.orderData#receiptDate
  final String receiptDate;
  // response.closedOrder.receiptData.receiptJson.orderData#receiptTime
  final String receiptTime;
  // response.closedOrder.receiptData.receiptJson.orderData#deliveryConfirmationText
  final String deliveryConfirmationText;
  // response.closedOrder.receiptData.receiptJson.orderData#subtotalAmount
  final String subtotalAmount;
  // response.closedOrder.receiptData.receiptJson.orderData#taxAmount
  final String taxAmount;

  OrderData(
      {this.terminalNumber,
      this.storeInfo,
      this.showAllPrices,
      this.lineItems,
      this.tip,
      this.totalAmount,
      this.gratuity,
      this.serviceAmount,
      this.discount,
      this.discountName,
      this.checkNumber,
      this.receipientName,
      this.mobileNumber,
      this.orderMessage,
      this.paymentInfo,
      this.currencyInfo,
      this.dateTime,
      this.timezoneOffsetMinutes,
      this.printDateTime,
      this.receiptDate,
      this.receiptTime,
      this.deliveryConfirmationText,
      this.subtotalAmount,
      this.taxAmount});

  OrderData.fromJson(Map<String, dynamic> json)
      : terminalNumber = json['terminalNumber'],
        storeInfo = StoreInfo.fromJson(json['storeInfo'] ?? {}),
        showAllPrices = json['showAllPrices'],
        lineItems = (json['lineItems'] as List)
            ?.map((e) => LineItems.fromJson(e ?? {}))
            ?.toList(),
        tip = json['tip'],
        totalAmount = json['totalAmount'],
        gratuity = json['gratuity'],
        serviceAmount = json['serviceAmount'],
        discount = json['discount'],
        discountName = json['discountName'],
        checkNumber = json['checkNumber'],
        receipientName = json['receipientName'],
        mobileNumber = json['mobileNumber'],
        orderMessage = json['orderMessage'],
        paymentInfo = (json['paymentInfo'] as List)
            ?.map((e) => PaymentInfo.fromJson(e ?? {}))
            ?.toList(),
        currencyInfo = CurrencyInfo.fromJson(json['currencyInfo'] ?? {}),
        dateTime = json['dateTime'],
        timezoneOffsetMinutes = json['timezoneOffsetMinutes'],
        printDateTime = json['printDateTime'],
        receiptDate = json['receiptDate'],
        receiptTime = json['receiptTime'],
        deliveryConfirmationText = json['deliveryConfirmationText'],
        subtotalAmount = json['subtotalAmount'],
        taxAmount = json['taxAmount'];

  Map<String, dynamic> toJson() => {
        'terminalNumber': terminalNumber,
        'storeInfo': storeInfo?.toJson(),
        'showAllPrices': showAllPrices,
        'lineItems': lineItems?.map((e) => e?.toJson())?.toList(),
        'tip': tip,
        'totalAmount': totalAmount,
        'gratuity': gratuity,
        'serviceAmount': serviceAmount,
        'discount': discount,
        'discountName': discountName,
        'checkNumber': checkNumber,
        'receipientName': receipientName,
        'mobileNumber': mobileNumber,
        'orderMessage': orderMessage,
        'paymentInfo': paymentInfo?.map((e) => e?.toJson())?.toList(),
        'currencyInfo': currencyInfo?.toJson(),
        'dateTime': dateTime,
        'timezoneOffsetMinutes': timezoneOffsetMinutes,
        'printDateTime': printDateTime,
        'receiptDate': receiptDate,
        'receiptTime': receiptTime,
        'deliveryConfirmationText': deliveryConfirmationText,
        'subtotalAmount': subtotalAmount,
        'taxAmount': taxAmount
      };
}

/// Json path:
/// ```
/// request.receiptInfo.items.priceLevels[]
/// ```
class PriceLevel {
  // request.receiptInfo.items.priceLevels[]#key
  final String key;
  // request.receiptInfo.items.priceLevels[]#priceLevelId
  final String priceLevelId;
  // request.receiptInfo.items.priceLevels[]#name
  final String name;
  // request.receiptInfo.items.priceLevels[]#price
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
/// request.receiptInfo.items.priceLevels
/// ```
class PriceLevels {
  // request.receiptInfo.items.priceLevels#priceLevels
  final List<PriceLevel> priceLevels;

  PriceLevels({this.priceLevels});

  PriceLevels.fromJson(Map<String, dynamic> json)
      : priceLevels = json.keys
            .map((e) => PriceLevel.fromJson(e, json[e] ?? {}))
            .toList();

  Map<String, dynamic> toJson() => {
        'priceLevels': Map.fromIterables(priceLevels?.map((e) => e.getKey()),
            priceLevels?.map((e) => e?.toJson()))
      };
}

/// Json path:
/// ```
/// request.receiptInfo.items.itemImages
/// ```
class ItemImages {
  // request.receiptInfo.items.itemImages#businessContextId
  final String businessContextId;
  // request.receiptInfo.items.itemImages#imageId
  final String imageId;
  // request.receiptInfo.items.itemImages#name
  final String name;
  // request.receiptInfo.items.itemImages#fileNames
  final List<String> fileNames;
  // request.receiptInfo.items.itemImages#tags
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
/// request.receiptInfo.items.selectedModifiers
/// ```
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

/// Json path:
/// ```
/// request.receiptInfo.items.modifiers.modifiers.options
/// ```
class Options {
  // request.receiptInfo.items.modifiers.modifiers.options#id
  final String id;
  // request.receiptInfo.items.modifiers.modifiers.options#description
  final String description;
  // request.receiptInfo.items.modifiers.modifiers.options#selected
  final bool selected;
  // request.receiptInfo.items.modifiers.modifiers.options#baseAmount
  final String baseAmount;
  // request.receiptInfo.items.modifiers.modifiers.options#amount
  final String amount;
  // request.receiptInfo.items.modifiers.modifiers.options#childPriceLevelId
  final String childPriceLevelId;
  // request.receiptInfo.items.modifiers.modifiers.options#parentGroupId
  final String parentGroupId;
  // request.receiptInfo.items.modifiers.modifiers.options#currencyUnit
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
/// request.receiptInfo.items.modifiers
/// ```
class Modifiers {
  // request.receiptInfo.items.modifiers#modifiers
  final List<Modifiers> modifiers;
  // request.receiptInfo.items.modifiers#addOnAmount
  final int addOnAmount;

  Modifiers({this.modifiers, this.addOnAmount});

  Modifiers.fromJson(Map<String, dynamic> json)
      : modifiers = (json['modifiers'] as List)
            ?.map((e) => Modifiers.fromJson(e ?? {}))
            ?.toList(),
        addOnAmount = json['addOnAmount'];

  Map<String, dynamic> toJson() => {
        'modifiers': modifiers?.map((e) => e?.toJson())?.toList(),
        'addOnAmount': addOnAmount
      };
}

/// Json path:
/// ```
/// request.receiptInfo.items.defaultModifiersList
/// ```
class DefaultModifiersList {
  // request.receiptInfo.items.defaultModifiersList#modifiers
  final List<Modifiers> modifiers;
  // request.receiptInfo.items.defaultModifiersList#addOnAmount
  final int addOnAmount;

  DefaultModifiersList({this.modifiers, this.addOnAmount});

  DefaultModifiersList.fromJson(Map<String, dynamic> json)
      : modifiers = (json['modifiers'] as List)
            ?.map((e) => Modifiers.fromJson(e ?? {}))
            ?.toList(),
        addOnAmount = json['addOnAmount'];

  Map<String, dynamic> toJson() => {
        'modifiers': modifiers?.map((e) => e?.toJson())?.toList(),
        'addOnAmount': addOnAmount
      };
}

/// Json path:
/// ```
/// request.receiptInfo.items
/// ```
class Items {
  // request.receiptInfo.items#id
  final String id;
  // request.receiptInfo.items#contextId
  final String contextId;
  // request.receiptInfo.items#tenantId
  final String tenantId;
  // request.receiptInfo.items#itemId
  final String itemId;
  // request.receiptInfo.items#name
  final String name;
  // request.receiptInfo.items#isDeleted
  final bool isDeleted;
  // request.receiptInfo.items#isActive
  final bool isActive;
  // request.receiptInfo.items#lastUpdateTime
  final String lastUpdateTime;
  // request.receiptInfo.items#revenueCategoryId
  final String revenueCategoryId;
  // request.receiptInfo.items#productClassId
  final String productClassId;
  // request.receiptInfo.items#kpText
  final String kpText;
  // request.receiptInfo.items#kitchenDisplayText
  final String kitchenDisplayText;
  // request.receiptInfo.items#receiptText
  final String receiptText;
  // request.receiptInfo.items#price
  final Price price;
  // request.receiptInfo.items#defaultPriceLevelId
  final String defaultPriceLevelId;
  // request.receiptInfo.items#priceLevels
  final PriceLevels priceLevels;
  // request.receiptInfo.items#isSoldByWeight
  final bool isSoldByWeight;
  // request.receiptInfo.items#tareWeight
  final int tareWeight;
  // request.receiptInfo.items#isDiscountable
  final bool isDiscountable;
  // request.receiptInfo.items#allowPriceOverride
  final bool allowPriceOverride;
  // request.receiptInfo.items#isTaxIncluded
  final bool isTaxIncluded;
  // request.receiptInfo.items#taxClasses
  final List<String> taxClasses;
  // request.receiptInfo.items#kitchenVideoLabel
  final String kitchenVideoLabel;
  // request.receiptInfo.items#kitchenVideoId
  final String kitchenVideoId;
  // request.receiptInfo.items#kitchenVideoCategoryId
  final int kitchenVideoCategoryId;
  // request.receiptInfo.items#kitchenCookTimeSeconds
  final int kitchenCookTimeSeconds;
  // request.receiptInfo.items#skus
  final List<dynamic> skus;
  // request.receiptInfo.items#itemType
  final String itemType;
  // request.receiptInfo.items#displayText
  final String displayText;
  // request.receiptInfo.items#itemImages
  final List<ItemImages> itemImages;
  // request.receiptInfo.items#isAvailableToGuests
  final bool isAvailableToGuests;
  // request.receiptInfo.items#isPreselectedToGuests
  final bool isPreselectedToGuests;
  // request.receiptInfo.items#tagNames
  final List<dynamic> tagNames;
  // request.receiptInfo.items#tagIds
  final List<dynamic> tagIds;
  // request.receiptInfo.items#substituteItemId
  final String substituteItemId;
  // request.receiptInfo.items#isSubstituteItem
  final bool isSubstituteItem;
  // request.receiptInfo.items#properties
  final Properties properties;
  // request.receiptInfo.items#amount
  final String amount;
  // request.receiptInfo.items#image
  final String image;
  // request.receiptInfo.items#thumbnail
  final String thumbnail;
  // request.receiptInfo.items#options
  final List<dynamic> options;
  // request.receiptInfo.items#attributes
  final List<dynamic> attributes;
  // request.receiptInfo.items#conceptId
  final String conceptId;
  // request.receiptInfo.items#count
  final int count;
  // request.receiptInfo.items#quantity
  final int quantity;
  // request.receiptInfo.items#selectedModifiers
  final List<SelectedModifiers> selectedModifiers;
  // request.receiptInfo.items#splInstruction
  final String splInstruction;
  // request.receiptInfo.items#modifierTotal
  final int modifierTotal;
  // request.receiptInfo.items#mealPeriodId
  final dynamic mealPeriodId;
  // request.receiptInfo.items#uniqueId
  final String uniqueId;
  // request.receiptInfo.items#cartItemId
  final String cartItemId;
  // request.receiptInfo.items#lineItemId
  final String lineItemId;
  // request.receiptInfo.items#modifiers
  final Modifiers modifiers;
  // request.receiptInfo.items#defaultModifiersList
  final DefaultModifiersList defaultModifiersList;

  Items(
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
      this.cartItemId,
      this.lineItemId,
      this.modifiers,
      this.defaultModifiersList});

  Items.fromJson(Map<String, dynamic> json)
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
        properties = Properties.fromJson(json['properties'] ?? {}),
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
        cartItemId = json['cartItemId'],
        lineItemId = json['lineItemId'],
        modifiers = Modifiers.fromJson(json['modifiers'] ?? {}),
        defaultModifiersList =
            DefaultModifiersList.fromJson(json['defaultModifiersList'] ?? {});

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
        'cartItemId': cartItemId,
        'lineItemId': lineItemId,
        'modifiers': modifiers?.toJson(),
        'defaultModifiersList': defaultModifiersList?.toJson()
      };
}

/// Json path:
/// ```
/// request.receiptInfo.selectedSMSCountry
/// ```
class SelectedSMSCountry {
  // request.receiptInfo.selectedSMSCountry#label
  final String label;
  // request.receiptInfo.selectedSMSCountry#phoneCode
  final String phoneCode;
  // request.receiptInfo.selectedSMSCountry#value
  final String value;

  SelectedSMSCountry({this.label, this.phoneCode, this.value});

  SelectedSMSCountry.fromJson(Map<String, dynamic> json)
      : label = json['label'],
        phoneCode = json['phoneCode'],
        value = json['value'];

  Map<String, dynamic> toJson() =>
      {'label': label, 'phoneCode': phoneCode, 'value': value};
}

/// Json path:
/// ```
/// request.receiptInfo.scheduledTime
/// ```
class ScheduledTime {
  // request.receiptInfo.scheduledTime#startTime
  final String startTime;
  // request.receiptInfo.scheduledTime#endTime
  final String endTime;

  ScheduledTime({this.startTime, this.endTime});

  ScheduledTime.fromJson(Map<String, dynamic> json)
      : startTime = json['startTime'],
        endTime = json['endTime'];

  Map<String, dynamic> toJson() => {'startTime': startTime, 'endTime': endTime};
}

/// Json path:
/// ```
/// request.receiptInfo
/// ```
class ReceiptInfo {
  // request.receiptInfo#orderData
  final OrderData orderData;
  // request.receiptInfo#items
  final List<Items> items;
  // request.receiptInfo#tip
  final int tip;
  // request.receiptInfo#tipAmount
  final int tipAmount;
  // request.receiptInfo#etfEnabled
  final bool etfEnabled;
  // request.receiptInfo#dateTime
  final String dateTime;
  // request.receiptInfo#storePriceLevel
  final String storePriceLevel;
  // request.receiptInfo#currencyDetails
  final CurrencyDetails currencyDetails;
  // request.receiptInfo#nameCaptureEnabled
  final bool nameCaptureEnabled;
  // request.receiptInfo#deliveryProperties
  final DeliveryProperties deliveryProperties;
  // request.receiptInfo#taxIdentificationNumber
  final String taxIdentificationNumber;
  // request.receiptInfo#gaAccountInfoList
  final List<dynamic> gaAccountInfoList;
  // request.receiptInfo#deliveryConfirmationText
  final String deliveryConfirmationText;
  // request.receiptInfo#orderPlacedTime
  final String orderPlacedTime;
  // request.receiptInfo#storeName
  final String storeName;
  // request.receiptInfo#timeZone
  final String timeZone;
  // request.receiptInfo#terminalId
  final String terminalId;
  // request.receiptInfo#checkNumber
  final String checkNumber;
  // request.receiptInfo#nameString
  final String nameString;
  // request.receiptInfo#selectedSMSCountry
  final SelectedSMSCountry selectedSMSCountry;
  // request.receiptInfo#mobileNumber
  final String mobileNumber;
  // request.receiptInfo#scheduledTime
  final ScheduledTime scheduledTime;
  // request.receiptInfo#scheduledDay
  final int scheduledDay;
  // request.receiptInfo#hideAllPrices
  final bool hideAllPrices;
  // request.receiptInfo#complimentaryPayment
  final bool complimentaryPayment;
  // request.receiptInfo#discountInfo
  final dynamic discountInfo;

  ReceiptInfo(
      {this.orderData,
      this.items,
      this.tip,
      this.tipAmount,
      this.etfEnabled,
      this.dateTime,
      this.storePriceLevel,
      this.currencyDetails,
      this.nameCaptureEnabled,
      this.deliveryProperties,
      this.taxIdentificationNumber,
      this.gaAccountInfoList,
      this.deliveryConfirmationText,
      this.orderPlacedTime,
      this.storeName,
      this.timeZone,
      this.terminalId,
      this.checkNumber,
      this.nameString,
      this.selectedSMSCountry,
      this.mobileNumber,
      this.scheduledTime,
      this.scheduledDay,
      this.hideAllPrices,
      this.complimentaryPayment,
      this.discountInfo});

  ReceiptInfo.fromJson(Map<String, dynamic> json)
      : orderData = OrderData.fromJson(json['orderData'] ?? {}),
        items = (json['items'] as List)
            ?.map((e) => Items.fromJson(e ?? {}))
            ?.toList(),
        tip = json['tip'],
        tipAmount = json['tipAmount'],
        etfEnabled = json['etfEnabled'],
        dateTime = json['dateTime'],
        storePriceLevel = json['storePriceLevel'],
        currencyDetails =
            CurrencyDetails.fromJson(json['currencyDetails'] ?? {}),
        nameCaptureEnabled = json['nameCaptureEnabled'],
        deliveryProperties =
            DeliveryProperties.fromJson(json['deliveryProperties'] ?? {}),
        taxIdentificationNumber = json['taxIdentificationNumber'],
        gaAccountInfoList = json['gaAccountInfoList'],
        deliveryConfirmationText = json['deliveryConfirmationText'],
        orderPlacedTime = json['orderPlacedTime'],
        storeName = json['storeName'],
        timeZone = json['timeZone'],
        terminalId = json['terminalId'],
        checkNumber = json['checkNumber'],
        nameString = json['nameString'],
        selectedSMSCountry =
            SelectedSMSCountry.fromJson(json['selectedSMSCountry'] ?? {}),
        mobileNumber = json['mobileNumber'],
        scheduledTime = ScheduledTime.fromJson(json['scheduledTime'] ?? {}),
        scheduledDay = json['scheduledDay'],
        hideAllPrices = json['hideAllPrices'],
        complimentaryPayment = json['complimentaryPayment'],
        discountInfo = json['discountInfo'];

  Map<String, dynamic> toJson() => {
        'orderData': orderData?.toJson(),
        'items': items?.map((e) => e?.toJson())?.toList(),
        'tip': tip,
        'tipAmount': tipAmount,
        'etfEnabled': etfEnabled,
        'dateTime': dateTime,
        'storePriceLevel': storePriceLevel,
        'currencyDetails': currencyDetails?.toJson(),
        'nameCaptureEnabled': nameCaptureEnabled,
        'deliveryProperties': deliveryProperties?.toJson(),
        'taxIdentificationNumber': taxIdentificationNumber,
        'gaAccountInfoList': gaAccountInfoList,
        'deliveryConfirmationText': deliveryConfirmationText,
        'orderPlacedTime': orderPlacedTime,
        'storeName': storeName,
        'timeZone': timeZone,
        'terminalId': terminalId,
        'checkNumber': checkNumber,
        'nameString': nameString,
        'selectedSMSCountry': selectedSMSCountry?.toJson(),
        'mobileNumber': mobileNumber,
        'scheduledTime': scheduledTime?.toJson(),
        'scheduledDay': scheduledDay,
        'hideAllPrices': hideAllPrices,
        'complimentaryPayment': complimentaryPayment,
        'discountInfo': discountInfo
      };
}

/// Url: https://ondemand.rit.edu/api/order/createMultiPaymentClosedOrder
/// Method: POST
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  // request#contextId
  final String contextId;
  // request#tenantId
  final String tenantId;
  // request#profitCenterId
  final String profitCenterId;
  // request#order
  final Order order;
  // request#currencyDetails
  final CurrencyDetails currencyDetails;
  // request#displayProfileId
  final String displayProfileId;
  // request#currencyUnit
  final String currencyUnit;
  // request#igSettings
  final IgSettings igSettings;
  // request#mobileNumber
  final String mobileNumber;
  // request#deliveryProperties
  final DeliveryProperties deliveryProperties;
  // request#capacitySuggestionPerformed
  final bool capacitySuggestionPerformed;
  // request#scheduledOrderTime
  final ScheduledOrderTime scheduledOrderTime;
  // request#conceptId
  final String conceptId;
  // request#kitchenContextId
  final String kitchenContextId;
  // request#tokenizedData
  final dynamic tokenizedData;
  // request#saleTransactionData
  final dynamic saleTransactionData;
  // request#terminalId
  final String terminalId;
  // request#processPaymentAsExternalPayment
  final dynamic processPaymentAsExternalPayment;
  // request#authorizedAmount
  final String authorizedAmount;
  // request#subtotal
  final String subtotal;
  // request#tipAmount
  final int tipAmount;
  // request#chargeData
  final dynamic chargeData;
  // request#profileId
  final String profileId;
  // request#loyaltyPayment
  final bool loyaltyPayment;
  // request#atriumPaymentAccounts
  final List<AtriumPaymentAccounts> atriumPaymentAccounts;
  // request#stripeTransactionData
  final dynamic stripeTransactionData;
  // request#isGaPaymentAvailable
  final bool isGaPaymentAvailable;
  // request#receiptInfo
  final ReceiptInfo receiptInfo;

  Request(
      {this.contextId,
      this.tenantId,
      this.profitCenterId,
      this.order,
      this.currencyDetails,
      this.displayProfileId,
      this.currencyUnit,
      this.igSettings,
      this.mobileNumber,
      this.deliveryProperties,
      this.capacitySuggestionPerformed,
      this.scheduledOrderTime,
      this.conceptId,
      this.kitchenContextId,
      this.tokenizedData,
      this.saleTransactionData,
      this.terminalId,
      this.processPaymentAsExternalPayment,
      this.authorizedAmount,
      this.subtotal,
      this.tipAmount,
      this.chargeData,
      this.profileId,
      this.loyaltyPayment,
      this.atriumPaymentAccounts,
      this.stripeTransactionData,
      this.isGaPaymentAvailable,
      this.receiptInfo,
      Map<String, String> headers = const {}})
      : super(headers);

  Request.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : contextId = json['contextId'],
        tenantId = json['tenantId'],
        profitCenterId = json['profitCenterId'],
        order = Order.fromJson(json['order'] ?? {}),
        currencyDetails =
            CurrencyDetails.fromJson(json['currencyDetails'] ?? {}),
        displayProfileId = json['displayProfileId'],
        currencyUnit = json['currencyUnit'],
        igSettings = IgSettings.fromJson(json['igSettings'] ?? {}),
        mobileNumber = json['mobileNumber'],
        deliveryProperties =
            DeliveryProperties.fromJson(json['deliveryProperties'] ?? {}),
        capacitySuggestionPerformed = json['capacitySuggestionPerformed'],
        scheduledOrderTime =
            ScheduledOrderTime.fromJson(json['scheduledOrderTime'] ?? {}),
        conceptId = json['conceptId'],
        kitchenContextId = json['kitchenContextId'],
        tokenizedData = json['tokenizedData'],
        saleTransactionData = json['saleTransactionData'],
        terminalId = json['terminalId'],
        processPaymentAsExternalPayment =
            json['processPaymentAsExternalPayment'],
        authorizedAmount = json['authorizedAmount'],
        subtotal = json['subtotal'],
        tipAmount = json['tipAmount'],
        chargeData = json['chargeData'],
        profileId = json['profileId'],
        loyaltyPayment = json['loyaltyPayment'],
        atriumPaymentAccounts = (json['atriumPaymentAccounts'] as List)
            ?.map((e) => AtriumPaymentAccounts.fromJson(e ?? {}))
            ?.toList(),
        stripeTransactionData = json['stripeTransactionData'],
        isGaPaymentAvailable = json['isGaPaymentAvailable'],
        receiptInfo = ReceiptInfo.fromJson(json['receiptInfo'] ?? {}),
        super(headers);

  Map<String, dynamic> toJson() => {
        'contextId': contextId,
        'tenantId': tenantId,
        'profitCenterId': profitCenterId,
        'order': order?.toJson(),
        'currencyDetails': currencyDetails?.toJson(),
        'displayProfileId': displayProfileId,
        'currencyUnit': currencyUnit,
        'igSettings': igSettings?.toJson(),
        'mobileNumber': mobileNumber,
        'deliveryProperties': deliveryProperties?.toJson(),
        'capacitySuggestionPerformed': capacitySuggestionPerformed,
        'scheduledOrderTime': scheduledOrderTime?.toJson(),
        'conceptId': conceptId,
        'kitchenContextId': kitchenContextId,
        'tokenizedData': tokenizedData,
        'saleTransactionData': saleTransactionData,
        'terminalId': terminalId,
        'processPaymentAsExternalPayment': processPaymentAsExternalPayment,
        'authorizedAmount': authorizedAmount,
        'subtotal': subtotal,
        'tipAmount': tipAmount,
        'chargeData': chargeData,
        'profileId': profileId,
        'loyaltyPayment': loyaltyPayment,
        'atriumPaymentAccounts':
            atriumPaymentAccounts?.map((e) => e?.toJson())?.toList(),
        'stripeTransactionData': stripeTransactionData,
        'isGaPaymentAvailable': isGaPaymentAvailable,
        'receiptInfo': receiptInfo?.toJson()
      };
}

/// Json path:
/// ```
/// response.closedOrder.preparationWindow
/// ```
class PreparationWindow {
  // response.closedOrder.preparationWindow#beginning
  final String beginning;
  // response.closedOrder.preparationWindow#end
  final String end;

  PreparationWindow({this.beginning, this.end});

  PreparationWindow.fromJson(Map<String, dynamic> json)
      : beginning = json['beginning'],
        end = json['end'];

  Map<String, dynamic> toJson() => {'beginning': beginning, 'end': end};
}

/// Json path:
/// ```
/// response.closedOrder.receiptData.receiptJson.orderData.storeInfo
/// ```
class StoreInfo {
  // response.closedOrder.receiptData.receiptJson.orderData.storeInfo#businessContextId
  final String businessContextId;

  StoreInfo({this.businessContextId});

  StoreInfo.fromJson(Map<String, dynamic> json)
      : businessContextId = json['businessContextId'];

  Map<String, dynamic> toJson() => {'businessContextId': businessContextId};
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

/// Json path:
/// ```
/// response.closedOrder.receiptData.receiptJson
/// ```
class ReceiptJson {
  // response.closedOrder.receiptData.receiptJson#orderData
  final OrderData orderData;
  // response.closedOrder.receiptData.receiptJson#templateName
  final String templateName;

  ReceiptJson({this.orderData, this.templateName});

  ReceiptJson.fromJson(Map<String, dynamic> json)
      : orderData = OrderData.fromJson(json['orderData'] ?? {}),
        templateName = json['templateName'];

  Map<String, dynamic> toJson() =>
      {'orderData': orderData?.toJson(), 'templateName': templateName};
}

/// Json path:
/// ```
/// response.closedOrder.receiptData
/// ```
class ReceiptData {
  // response.closedOrder.receiptData#receiptJson
  final ReceiptJson receiptJson;

  ReceiptData({this.receiptJson});

  ReceiptData.fromJson(Map<String, dynamic> json)
      : receiptJson = ReceiptJson.fromJson(json['receiptJson'] ?? {});

  Map<String, dynamic> toJson() => {'receiptJson': receiptJson?.toJson()};
}

/// Json path:
/// ```
/// response.closedOrder.paymentInfoList
/// ```
class PaymentInfoList {
  // response.closedOrder.paymentInfoList#buyPaymentForm
  final String buyPaymentForm;
  // response.closedOrder.paymentInfoList#showAuthorizationInfoOnReceipt
  final bool showAuthorizationInfoOnReceipt;
  // response.closedOrder.paymentInfoList#atriumLabel
  final String atriumLabel;
  // response.closedOrder.paymentInfoList#amountCharged
  final String amountCharged;
  // response.closedOrder.paymentInfoList#currentBalance
  final String currentBalance;

  PaymentInfoList(
      {this.buyPaymentForm,
      this.showAuthorizationInfoOnReceipt,
      this.atriumLabel,
      this.amountCharged,
      this.currentBalance});

  PaymentInfoList.fromJson(Map<String, dynamic> json)
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
/// response.closedOrder
/// ```
class ClosedOrder {
  // response.closedOrder#orderId
  final String orderId;
  // response.closedOrder#version
  final int version;
  // response.closedOrder#tenantId
  final String tenantId;
  // response.closedOrder#contextId
  final String contextId;
  // response.closedOrder#created
  final String created;
  // response.closedOrder#lastUpdated
  final String lastUpdated;
  // response.closedOrder#orderState
  final String orderState;
  // response.closedOrder#orderNumber
  final String orderNumber;
  // response.closedOrder#currencyUnit
  final String currencyUnit;
  // response.closedOrder#lineItems
  final List<LineItems> lineItems;
  // response.closedOrder#discounts
  final List<dynamic> discounts;
  // response.closedOrder#gratuityAmount
  final GratuityAmount gratuityAmount;
  // response.closedOrder#serviceAmount
  final ServiceAmount serviceAmount;
  // response.closedOrder#taxExcludedTotalAmount
  final TaxExcludedTotalAmount taxExcludedTotalAmount;
  // response.closedOrder#taxExcludedServiceChargeAndGratuityIncludedTotalAmount
  final TaxExcludedServiceChargeAndGratuityIncludedTotalAmount
      taxExcludedServiceChargeAndGratuityIncludedTotalAmount;
  // response.closedOrder#taxTotalAmount
  final TaxTotalAmount taxTotalAmount;
  // response.closedOrder#taxIncludedTotalAmount
  final TaxIncludedTotalAmount taxIncludedTotalAmount;
  // response.closedOrder#subTotalAmount
  final SubTotalAmount subTotalAmount;
  // response.closedOrder#subTotalAmountWithoutDiscount
  final SubTotalAmountWithoutDiscount subTotalAmountWithoutDiscount;
  // response.closedOrder#subTotalTaxAmount
  final SubTotalTaxAmount subTotalTaxAmount;
  // response.closedOrder#totalPaymentAmount
  final TotalPaymentAmount totalPaymentAmount;
  // response.closedOrder#totalTipAmount
  final TotalTipAmount totalTipAmount;
  // response.closedOrder#totalDueAmount
  final TotalDueAmount totalDueAmount;
  // response.closedOrder#amountModifications
  final List<dynamic> amountModifications;
  // response.closedOrder#totalRoundAmount
  final TotalRoundAmount totalRoundAmount;
  // response.closedOrder#taxBreakdown
  final TaxBreakdown taxBreakdown;
  // response.closedOrder#paymentModel
  final int paymentModel;
  // response.closedOrder#payments
  final List<dynamic> payments;
  // response.closedOrder#properties
  final Properties properties;
  // response.closedOrder#internalProperties
  final InternalProperties internalProperties;
  // response.closedOrder#scheduledOrderCompletionTimeStamp
  final String scheduledOrderCompletionTimeStamp;
  // response.closedOrder#preparationWindow
  final PreparationWindow preparationWindow;
  // response.closedOrder#receiptData
  final ReceiptData receiptData;
  // response.closedOrder#paymentInfoList
  final List<PaymentInfoList> paymentInfoList;
  // response.closedOrder#deliveryProperties
  final DeliveryProperties deliveryProperties;

  ClosedOrder(
      {this.orderId,
      this.version,
      this.tenantId,
      this.contextId,
      this.created,
      this.lastUpdated,
      this.orderState,
      this.orderNumber,
      this.currencyUnit,
      this.lineItems,
      this.discounts,
      this.gratuityAmount,
      this.serviceAmount,
      this.taxExcludedTotalAmount,
      this.taxExcludedServiceChargeAndGratuityIncludedTotalAmount,
      this.taxTotalAmount,
      this.taxIncludedTotalAmount,
      this.subTotalAmount,
      this.subTotalAmountWithoutDiscount,
      this.subTotalTaxAmount,
      this.totalPaymentAmount,
      this.totalTipAmount,
      this.totalDueAmount,
      this.amountModifications,
      this.totalRoundAmount,
      this.taxBreakdown,
      this.paymentModel,
      this.payments,
      this.properties,
      this.internalProperties,
      this.scheduledOrderCompletionTimeStamp,
      this.preparationWindow,
      this.receiptData,
      this.paymentInfoList,
      this.deliveryProperties});

  ClosedOrder.fromJson(Map<String, dynamic> json)
      : orderId = json['orderId'],
        version = json['version'],
        tenantId = json['tenantId'],
        contextId = json['contextId'],
        created = json['created'],
        lastUpdated = json['lastUpdated'],
        orderState = json['orderState'],
        orderNumber = json['orderNumber'],
        currencyUnit = json['currencyUnit'],
        lineItems = (json['lineItems'] as List)
            ?.map((e) => LineItems.fromJson(e ?? {}))
            ?.toList(),
        discounts = json['discounts'],
        gratuityAmount = GratuityAmount.fromJson(json['gratuityAmount'] ?? {}),
        serviceAmount = ServiceAmount.fromJson(json['serviceAmount'] ?? {}),
        taxExcludedTotalAmount = TaxExcludedTotalAmount.fromJson(
            json['taxExcludedTotalAmount'] ?? {}),
        taxExcludedServiceChargeAndGratuityIncludedTotalAmount =
            TaxExcludedServiceChargeAndGratuityIncludedTotalAmount.fromJson(
                json['taxExcludedServiceChargeAndGratuityIncludedTotalAmount'] ??
                    {}),
        taxTotalAmount = TaxTotalAmount.fromJson(json['taxTotalAmount'] ?? {}),
        taxIncludedTotalAmount = TaxIncludedTotalAmount.fromJson(
            json['taxIncludedTotalAmount'] ?? {}),
        subTotalAmount = SubTotalAmount.fromJson(json['subTotalAmount'] ?? {}),
        subTotalAmountWithoutDiscount = SubTotalAmountWithoutDiscount.fromJson(
            json['subTotalAmountWithoutDiscount'] ?? {}),
        subTotalTaxAmount =
            SubTotalTaxAmount.fromJson(json['subTotalTaxAmount'] ?? {}),
        totalPaymentAmount =
            TotalPaymentAmount.fromJson(json['totalPaymentAmount'] ?? {}),
        totalTipAmount = TotalTipAmount.fromJson(json['totalTipAmount'] ?? {}),
        totalDueAmount = TotalDueAmount.fromJson(json['totalDueAmount'] ?? {}),
        amountModifications = json['amountModifications'],
        totalRoundAmount =
            TotalRoundAmount.fromJson(json['totalRoundAmount'] ?? {}),
        taxBreakdown = TaxBreakdown.fromJson(json['taxBreakdown'] ?? {}),
        paymentModel = json['paymentModel'],
        payments = json['payments'],
        properties = Properties.fromJson(json['properties'] ?? {}),
        internalProperties =
            InternalProperties.fromJson(json['internalProperties'] ?? {}),
        scheduledOrderCompletionTimeStamp =
            json['scheduledOrderCompletionTimeStamp'],
        preparationWindow =
            PreparationWindow.fromJson(json['preparationWindow'] ?? {}),
        receiptData = ReceiptData.fromJson(json['receiptData'] ?? {}),
        paymentInfoList = (json['paymentInfoList'] as List)
            ?.map((e) => PaymentInfoList.fromJson(e ?? {}))
            ?.toList(),
        deliveryProperties =
            DeliveryProperties.fromJson(json['deliveryProperties'] ?? {});

  Map<String, dynamic> toJson() => {
        'orderId': orderId,
        'version': version,
        'tenantId': tenantId,
        'contextId': contextId,
        'created': created,
        'lastUpdated': lastUpdated,
        'orderState': orderState,
        'orderNumber': orderNumber,
        'currencyUnit': currencyUnit,
        'lineItems': lineItems?.map((e) => e?.toJson())?.toList(),
        'discounts': discounts,
        'gratuityAmount': gratuityAmount?.toJson(),
        'serviceAmount': serviceAmount?.toJson(),
        'taxExcludedTotalAmount': taxExcludedTotalAmount?.toJson(),
        'taxExcludedServiceChargeAndGratuityIncludedTotalAmount':
            taxExcludedServiceChargeAndGratuityIncludedTotalAmount?.toJson(),
        'taxTotalAmount': taxTotalAmount?.toJson(),
        'taxIncludedTotalAmount': taxIncludedTotalAmount?.toJson(),
        'subTotalAmount': subTotalAmount?.toJson(),
        'subTotalAmountWithoutDiscount':
            subTotalAmountWithoutDiscount?.toJson(),
        'subTotalTaxAmount': subTotalTaxAmount?.toJson(),
        'totalPaymentAmount': totalPaymentAmount?.toJson(),
        'totalTipAmount': totalTipAmount?.toJson(),
        'totalDueAmount': totalDueAmount?.toJson(),
        'amountModifications': amountModifications,
        'totalRoundAmount': totalRoundAmount?.toJson(),
        'taxBreakdown': taxBreakdown?.toJson(),
        'paymentModel': paymentModel,
        'payments': payments,
        'properties': properties?.toJson(),
        'internalProperties': internalProperties?.toJson(),
        'scheduledOrderCompletionTimeStamp': scheduledOrderCompletionTimeStamp,
        'preparationWindow': preparationWindow?.toJson(),
        'receiptData': receiptData?.toJson(),
        'paymentInfoList': paymentInfoList?.map((e) => e?.toJson())?.toList(),
        'deliveryProperties': deliveryProperties?.toJson()
      };
}

/// Url: https://ondemand.rit.edu/api/order/createMultiPaymentClosedOrder
/// Method: POST
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#closedOrder
  final ClosedOrder closedOrder;

  Response({this.closedOrder, Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : closedOrder = ClosedOrder.fromJson(json['closedOrder'] ?? {}),
        super(headers);

  Map<String, dynamic> toJson() => {'closedOrder': closedOrder?.toJson()};
}
