import 'base.dart';

/// Json path:
/// ```
/// request.schedule.properties
/// ```
class Properties {
  // request.schedule.properties#TRANSITION_MESSAGE
  final String transitionMessage;

  Properties({this.transitionMessage});

  Properties.fromJson(Map<String, dynamic> json)
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
  final Properties properties;
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
        properties = Properties.fromJson(json['properties'] ?? {}),
        displayProfileState =
            DisplayProfileState.fromJson(json['displayProfileState'] ?? {});

  Map<String, dynamic> toJson() => {
        '@c': c,
        'scheduledExpression': scheduledExpression,
        'properties': properties?.toJson(),
        'displayProfileState': displayProfileState?.toJson()
      };
}

/// Url: https://ondemand.rit.edu/api/order/1312/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/orders/5e446350-e67d-4ec3-a348-2393ccc63691
/// Method: PUT
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  // request#item
  final Item item;
  // request#currencyDetails
  final CurrencyDetails currencyDetails;
  // request#schedule
  final List<CartSchedule> schedule;
  // request#scheduleTime
  final ScheduleTime scheduleTime;
  // request#storePriceLevel
  final String storePriceLevel;
  // request#scheduledDay
  final int scheduledDay;

  Request(
      {this.item,
      this.currencyDetails,
      this.schedule,
      this.scheduleTime,
      this.storePriceLevel,
      this.scheduledDay,
      Map<String, String> headers = const {}})
      : super(headers);

  Request.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : item = Item.fromJson(json['item'] ?? {}),
        currencyDetails =
            CurrencyDetails.fromJson(json['currencyDetails'] ?? {}),
        schedule = (json['schedule'] as List)
            ?.map((e) => CartSchedule.fromJson(e ?? {}))
            ?.toList(),
        scheduleTime = ScheduleTime.fromJson(json['scheduleTime'] ?? {}),
        storePriceLevel = json['storePriceLevel'],
        scheduledDay = json['scheduledDay'],
        super(headers);

  Map<String, dynamic> toJson() => {
        'item': item?.toJson(),
        'currencyDetails': currencyDetails?.toJson(),
        'schedule': schedule?.map((e) => e?.toJson())?.toList(),
        'scheduleTime': scheduleTime?.toJson(),
        'storePriceLevel': storePriceLevel,
        'scheduledDay': scheduledDay
      };
}

/// Json path:
/// ```
/// response.orderDetails.lineItems
/// ```
class LineItems {
  // response.orderDetails.lineItems#itemId
  final String itemId;
  // response.orderDetails.lineItems#igItemId
  final String igItemId;
  // response.orderDetails.lineItems#itemType
  final String itemType;
  // response.orderDetails.lineItems#lineItemId
  final String lineItemId;
  // response.orderDetails.lineItems#soldByWeight
  final bool soldByWeight;
  // response.orderDetails.lineItems#lineItemState
  final String lineItemState;
  // response.orderDetails.lineItems#weight
  final int weight;
  // response.orderDetails.lineItems#tareWeight
  final int tareWeight;
  // response.orderDetails.lineItems#quantity
  final int quantity;
  // response.orderDetails.lineItems#ancestorQuantityMultipliers
  final List<dynamic> ancestorQuantityMultipliers;
  // response.orderDetails.lineItems#totalQuantity
  final int totalQuantity;
  // response.orderDetails.lineItems#price
  final Price price;
  // response.orderDetails.lineItems#lineItemGroups
  final List<dynamic> lineItemGroups;
  // response.orderDetails.lineItems#lineItemTax
  final dynamic lineItemTax;
  // response.orderDetails.lineItems#properties
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
/// response.orderDetails.taxBreakdown.salesTaxes.amount
/// ```
class Amount {
  // response.orderDetails.taxBreakdown.salesTaxes.amount#currencyUnit
  final String currencyUnit;
  // response.orderDetails.taxBreakdown.salesTaxes.amount#amount
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
/// response.orderDetails.taxBreakdown.salesTaxes
/// ```
class SalesTaxes {
  // response.orderDetails.taxBreakdown.salesTaxes#id
  final String id;
  // response.orderDetails.taxBreakdown.salesTaxes#taxClassName
  final String taxClassName;
  // response.orderDetails.taxBreakdown.salesTaxes#taxPercent
  final int taxPercent;
  // response.orderDetails.taxBreakdown.salesTaxes#amount
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
/// response.orderDetails.taxBreakdown
/// ```
class TaxBreakdown {
  // response.orderDetails.taxBreakdown#isVatEnabled
  final bool isVatEnabled;
  // response.orderDetails.taxBreakdown#salesTaxes
  final List<SalesTaxes> salesTaxes;
  // response.orderDetails.taxBreakdown#vatTaxes
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
/// response.orderDetails.internalProperties
/// ```
class InternalProperties {
  InternalProperties.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

/// Json path:
/// ```
/// response.orderDetails
/// ```
class OrderDetails {
  // response.orderDetails#orderId
  final String orderId;
  // response.orderDetails#version
  final int version;
  // response.orderDetails#tenantId
  final String tenantId;
  // response.orderDetails#contextId
  final String contextId;
  // response.orderDetails#created
  final String created;
  // response.orderDetails#lastUpdated
  final String lastUpdated;
  // response.orderDetails#orderState
  final String orderState;
  // response.orderDetails#orderNumber
  final String orderNumber;
  // response.orderDetails#currencyUnit
  final String currencyUnit;
  // response.orderDetails#lineItems
  final List<LineItems> lineItems;
  // response.orderDetails#discounts
  final List<dynamic> discounts;
  // response.orderDetails#gratuityAmount
  final GratuityAmount gratuityAmount;
  // response.orderDetails#serviceAmount
  final ServiceAmount serviceAmount;
  // response.orderDetails#taxExcludedTotalAmount
  final TaxExcludedTotalAmount taxExcludedTotalAmount;
  // response.orderDetails#taxExcludedServiceChargeAndGratuityIncludedTotalAmount
  final TaxExcludedServiceChargeAndGratuityIncludedTotalAmount
      taxExcludedServiceChargeAndGratuityIncludedTotalAmount;
  // response.orderDetails#taxTotalAmount
  final TaxTotalAmount taxTotalAmount;
  // response.orderDetails#taxIncludedTotalAmount
  final TaxIncludedTotalAmount taxIncludedTotalAmount;
  // response.orderDetails#subTotalAmount
  final SubTotalAmount subTotalAmount;
  // response.orderDetails#subTotalAmountWithoutDiscount
  final SubTotalAmountWithoutDiscount subTotalAmountWithoutDiscount;
  // response.orderDetails#subTotalTaxAmount
  final SubTotalTaxAmount subTotalTaxAmount;
  // response.orderDetails#totalPaymentAmount
  final TotalPaymentAmount totalPaymentAmount;
  // response.orderDetails#totalTipAmount
  final TotalTipAmount totalTipAmount;
  // response.orderDetails#totalDueAmount
  final TotalDueAmount totalDueAmount;
  // response.orderDetails#amountModifications
  final List<dynamic> amountModifications;
  // response.orderDetails#totalDiscountAmount
  final TotalDiscountAmount totalDiscountAmount;
  // response.orderDetails#totalRoundAmount
  final TotalRoundAmount totalRoundAmount;
  // response.orderDetails#taxBreakdown
  final TaxBreakdown taxBreakdown;
  // response.orderDetails#payments
  final List<dynamic> payments;
  // response.orderDetails#payments2
  final List<dynamic> payments2;
  // response.orderDetails#properties
  final Properties properties;
  // response.orderDetails#internalProperties
  final InternalProperties internalProperties;
  // response.orderDetails#scheduledOrderCompletionTimeStamp
  final String scheduledOrderCompletionTimeStamp;

  OrderDetails(
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
      this.scheduledOrderCompletionTimeStamp});

  OrderDetails.fromJson(Map<String, dynamic> json)
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
            json['scheduledOrderCompletionTimeStamp'];

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
        'scheduledOrderCompletionTimeStamp': scheduledOrderCompletionTimeStamp
      };
}

/// Json path:
/// ```
/// response.addedItem
/// ```
class AddedItem {
  // response.addedItem#id
  final String id;
  // response.addedItem#contextId
  final String contextId;
  // response.addedItem#tenantId
  final String tenantId;
  // response.addedItem#itemId
  final String itemId;
  // response.addedItem#name
  final String name;
  // response.addedItem#isDeleted
  final bool isDeleted;
  // response.addedItem#isActive
  final bool isActive;
  // response.addedItem#lastUpdateTime
  final String lastUpdateTime;
  // response.addedItem#revenueCategoryId
  final String revenueCategoryId;
  // response.addedItem#productClassId
  final String productClassId;
  // response.addedItem#kpText
  final String kpText;
  // response.addedItem#kitchenDisplayText
  final String kitchenDisplayText;
  // response.addedItem#receiptText
  final String receiptText;
  // response.addedItem#price
  final Price price;
  // response.addedItem#defaultPriceLevelId
  final String defaultPriceLevelId;
  // response.addedItem#priceLevels
  final PriceLevels priceLevels;
  // response.addedItem#isSoldByWeight
  final bool isSoldByWeight;
  // response.addedItem#tareWeight
  final int tareWeight;
  // response.addedItem#isDiscountable
  final bool isDiscountable;
  // response.addedItem#allowPriceOverride
  final bool allowPriceOverride;
  // response.addedItem#isTaxIncluded
  final bool isTaxIncluded;
  // response.addedItem#taxClasses
  final List<String> taxClasses;
  // response.addedItem#kitchenVideoLabel
  final String kitchenVideoLabel;
  // response.addedItem#kitchenVideoId
  final String kitchenVideoId;
  // response.addedItem#kitchenVideoCategoryId
  final int kitchenVideoCategoryId;
  // response.addedItem#kitchenCookTimeSeconds
  final int kitchenCookTimeSeconds;
  // response.addedItem#skus
  final List<dynamic> skus;
  // response.addedItem#itemType
  final String itemType;
  // response.addedItem#displayText
  final String displayText;
  // response.addedItem#itemImages
  final List<ItemImages> itemImages;
  // response.addedItem#isAvailableToGuests
  final bool isAvailableToGuests;
  // response.addedItem#isPreselectedToGuests
  final bool isPreselectedToGuests;
  // response.addedItem#tagNames
  final List<dynamic> tagNames;
  // response.addedItem#tagIds
  final List<dynamic> tagIds;
  // response.addedItem#substituteItemId
  final String substituteItemId;
  // response.addedItem#isSubstituteItem
  final bool isSubstituteItem;
  // response.addedItem#properties
  final Properties properties;
  // response.addedItem#amount
  final String amount;
  // response.addedItem#image
  final String image;
  // response.addedItem#thumbnail
  final String thumbnail;
  // response.addedItem#options
  final List<dynamic> options;
  // response.addedItem#attributes
  final List<dynamic> attributes;
  // response.addedItem#conceptId
  final String conceptId;
  // response.addedItem#count
  final int count;
  // response.addedItem#quantity
  final int quantity;
  // response.addedItem#modifierTotal
  final int modifierTotal;
  // response.addedItem#mealPeriodId
  final dynamic mealPeriodId;
  // response.addedItem#uniqueId
  final String uniqueId;
  // response.addedItem#cartItemId
  final String cartItemId;
  // response.addedItem#lineItemId
  final String lineItemId;

  AddedItem(
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
      this.modifierTotal,
      this.mealPeriodId,
      this.uniqueId,
      this.cartItemId,
      this.lineItemId});

  AddedItem.fromJson(Map<String, dynamic> json)
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
        modifierTotal = json['modifierTotal'],
        mealPeriodId = json['mealPeriodId'],
        uniqueId = json['uniqueId'],
        cartItemId = json['cartItemId'],
        lineItemId = json['lineItemId'];

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
        'modifierTotal': modifierTotal,
        'mealPeriodId': mealPeriodId,
        'uniqueId': uniqueId,
        'cartItemId': cartItemId,
        'lineItemId': lineItemId
      };
}

/// Url: https://ondemand.rit.edu/api/order/1312/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/orders/5e446350-e67d-4ec3-a348-2393ccc63691
/// Method: PUT
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#orderDetails
  final OrderDetails orderDetails;
  // response#addedItem
  final AddedItem addedItem;

  Response(
      {this.orderDetails,
      this.addedItem,
      Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : orderDetails = OrderDetails.fromJson(json['orderDetails'] ?? {}),
        addedItem = AddedItem.fromJson(json['addedItem'] ?? {}),
        super(headers);

  Map<String, dynamic> toJson() => {
        'orderDetails': orderDetails?.toJson(),
        'addedItem': addedItem?.toJson()
      };
}

