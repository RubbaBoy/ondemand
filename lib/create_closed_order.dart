import 'base.dart';

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
/// request.order.lineItems
/// ```
class LineItems {
  // request.order.lineItems#itemId
  final String itemId;
  // request.order.lineItems#igItemId
  final String igItemId;
  // request.order.lineItems#itemType
  final String itemType;
  // request.order.lineItems#lineItemId
  final String lineItemId;
  // request.order.lineItems#soldByWeight
  final bool soldByWeight;
  // request.order.lineItems#lineItemState
  final String lineItemState;
  // request.order.lineItems#weight
  final int weight;
  // request.order.lineItems#tareWeight
  final int tareWeight;
  // request.order.lineItems#quantity
  final int quantity;
  // request.order.lineItems#ancestorQuantityMultipliers
  final List<dynamic> ancestorQuantityMultipliers;
  // request.order.lineItems#totalQuantity
  final int totalQuantity;
  // request.order.lineItems#price
  final Price price;
  // request.order.lineItems#lineItemGroups
  final List<dynamic> lineItemGroups;
  // request.order.lineItems#lineItemTax
  final dynamic lineItemTax;
  // request.order.lineItems#properties
  final Properties properties;

  LineItems(
      {this.itemId,
      this.igItemId,
      this.itemType,
      this.lineItemId,
      this.soldByWeight,
      this.lineItemState,
      this.weight,
      this.tareWeight,
      this.quantity,
      this.ancestorQuantityMultipliers,
      this.totalQuantity,
      this.price,
      this.lineItemGroups,
      this.lineItemTax,
      this.properties});

  LineItems.fromJson(Map<String, dynamic> json)
      : itemId = json['itemId'],
        igItemId = json['igItemId'],
        itemType = json['itemType'],
        lineItemId = json['lineItemId'],
        soldByWeight = json['soldByWeight'],
        lineItemState = json['lineItemState'],
        weight = json['weight'],
        tareWeight = json['tareWeight'],
        quantity = json['quantity'],
        ancestorQuantityMultipliers = json['ancestorQuantityMultipliers'],
        totalQuantity = json['totalQuantity'],
        price = Price.fromJson(json['price'] ?? {}),
        lineItemGroups = json['lineItemGroups'],
        lineItemTax = json['lineItemTax'],
        properties = Properties.fromJson(json['properties'] ?? {});

  Map<String, dynamic> toJson() => {
        'itemId': itemId,
        'igItemId': igItemId,
        'itemType': itemType,
        'lineItemId': lineItemId,
        'soldByWeight': soldByWeight,
        'lineItemState': lineItemState,
        'weight': weight,
        'tareWeight': tareWeight,
        'quantity': quantity,
        'ancestorQuantityMultipliers': ancestorQuantityMultipliers,
        'totalQuantity': totalQuantity,
        'price': price?.toJson(),
        'lineItemGroups': lineItemGroups,
        'lineItemTax': lineItemTax,
        'properties': properties?.toJson()
      };
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
/// request.order.taxBreakdown.salesTaxes
/// ```
class SalesTaxes {
  // request.order.taxBreakdown.salesTaxes#id
  final String id;
  // request.order.taxBreakdown.salesTaxes#taxClassName
  final String taxClassName;
  // request.order.taxBreakdown.salesTaxes#taxPercent
  final int taxPercent;
  // request.order.taxBreakdown.salesTaxes#amount
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
/// request.order.taxBreakdown
/// ```
class TaxBreakdown {
  // request.order.taxBreakdown#isVatEnabled
  final bool isVatEnabled;
  // request.order.taxBreakdown#salesTaxes
  final List<SalesTaxes> salesTaxes;
  // request.order.taxBreakdown#vatTaxes
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
/// request.deliveryProperties.deliveryOption
/// ```
class DeliveryOption {
  // request.deliveryProperties.deliveryOption#id
  final String id;
  // request.deliveryProperties.deliveryOption#kitchenText
  final String kitchenText;
  // request.deliveryProperties.deliveryOption#displayText
  final String displayText;
  // request.deliveryProperties.deliveryOption#isEnabled
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
/// request.deliveryProperties
/// ```
class DeliveryProperties {
  // request.deliveryProperties#deliveryOption
  final DeliveryOption deliveryOption;
  // request.deliveryProperties#nameString
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
/// request.receiptInfo.orderData
/// ```
class OrderData {
  // request.receiptInfo.orderData#orderId
  final String orderId;
  // request.receiptInfo.orderData#version
  final int version;
  // request.receiptInfo.orderData#tenantId
  final String tenantId;
  // request.receiptInfo.orderData#contextId
  final String contextId;
  // request.receiptInfo.orderData#created
  final String created;
  // request.receiptInfo.orderData#lastUpdated
  final String lastUpdated;
  // request.receiptInfo.orderData#orderState
  final String orderState;
  // request.receiptInfo.orderData#orderNumber
  final String orderNumber;
  // request.receiptInfo.orderData#currencyUnit
  final String currencyUnit;
  // request.receiptInfo.orderData#lineItems
  final List<LineItems> lineItems;
  // request.receiptInfo.orderData#discounts
  final List<dynamic> discounts;
  // request.receiptInfo.orderData#gratuityAmount
  final GratuityAmount gratuityAmount;
  // request.receiptInfo.orderData#serviceAmount
  final ServiceAmount serviceAmount;
  // request.receiptInfo.orderData#taxExcludedTotalAmount
  final TaxExcludedTotalAmount taxExcludedTotalAmount;
  // request.receiptInfo.orderData#taxExcludedServiceChargeAndGratuityIncludedTotalAmount
  final TaxExcludedServiceChargeAndGratuityIncludedTotalAmount
      taxExcludedServiceChargeAndGratuityIncludedTotalAmount;
  // request.receiptInfo.orderData#taxTotalAmount
  final TaxTotalAmount taxTotalAmount;
  // request.receiptInfo.orderData#taxIncludedTotalAmount
  final TaxIncludedTotalAmount taxIncludedTotalAmount;
  // request.receiptInfo.orderData#subTotalAmount
  final SubTotalAmount subTotalAmount;
  // request.receiptInfo.orderData#subTotalAmountWithoutDiscount
  final SubTotalAmountWithoutDiscount subTotalAmountWithoutDiscount;
  // request.receiptInfo.orderData#subTotalTaxAmount
  final SubTotalTaxAmount subTotalTaxAmount;
  // request.receiptInfo.orderData#totalPaymentAmount
  final TotalPaymentAmount totalPaymentAmount;
  // request.receiptInfo.orderData#totalTipAmount
  final TotalTipAmount totalTipAmount;
  // request.receiptInfo.orderData#totalDueAmount
  final TotalDueAmount totalDueAmount;
  // request.receiptInfo.orderData#amountModifications
  final List<dynamic> amountModifications;
  // request.receiptInfo.orderData#totalDiscountAmount
  final TotalDiscountAmount totalDiscountAmount;
  // request.receiptInfo.orderData#totalRoundAmount
  final TotalRoundAmount totalRoundAmount;
  // request.receiptInfo.orderData#taxBreakdown
  final TaxBreakdown taxBreakdown;
  // request.receiptInfo.orderData#payments
  final List<dynamic> payments;
  // request.receiptInfo.orderData#payments2
  final List<dynamic> payments2;
  // request.receiptInfo.orderData#properties
  final Properties properties;
  // request.receiptInfo.orderData#internalProperties
  final InternalProperties internalProperties;
  // request.receiptInfo.orderData#scheduledOrderCompletionTimeStamp
  final String scheduledOrderCompletionTimeStamp;
  // request.receiptInfo.orderData#scheduleEndTimeSlot
  final String scheduleEndTimeSlot;
  // request.receiptInfo.orderData#scheduledOrderTime
  final String scheduledOrderTime;

  OrderData(
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

  OrderData.fromJson(Map<String, dynamic> json)
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

