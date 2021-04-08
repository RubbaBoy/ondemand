import 'base.dart';

/// Json path:
/// ```
/// request.item.price
/// ```
class Price {
  // request.item.price#currencyUnit
  final String currencyUnit;
  // request.item.price#amount
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
/// response.addedItem.priceLevels
/// ```
class PriceLevels {
  // response.addedItem.priceLevels#1
  final Num1 num1;

  PriceLevels({this.num1});

  PriceLevels.fromJson(Map<String, dynamic> json)
      : num1 = Num1.fromJson(json['1'] ?? {});

  Map<String, dynamic> toJson() => {'1': num1?.toJson()};
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
class Properties {
  // request.item.properties#cartGuid
  final String cartGuid;

  Properties({this.cartGuid});

  Properties.fromJson(Map<String, dynamic> json) : cartGuid = json['cartGuid'];

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
/// request.item
/// ```
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
  final Properties properties;
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
/// request.schedule.displayProfileState.conceptStates
/// ```
class ConceptStates {
  // request.schedule.displayProfileState.conceptStates#conceptId
  final String conceptId;
  // request.schedule.displayProfileState.conceptStates#menuId
  final String menuId;

  ConceptStates({this.conceptId, this.menuId});

  ConceptStates.fromJson(Map<String, dynamic> json)
      : conceptId = json['conceptId'],
        menuId = json['menuId'];

  Map<String, dynamic> toJson() => {'conceptId': conceptId, 'menuId': menuId};
}

/// Json path:
/// ```
/// request.schedule.displayProfileState
/// ```
class DisplayProfileState {
  // request.schedule.displayProfileState#displayProfileId
  final String displayProfileId;
  // request.schedule.displayProfileState#conceptStates
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
/// request.schedule
/// ```
class Schedule {
  // request.schedule#@c
  final String c;
  // request.schedule#scheduledExpression
  final String scheduledExpression;
  // request.schedule#properties
  final Properties properties;
  // request.schedule#displayProfileState
  final DisplayProfileState displayProfileState;

  Schedule(
      {this.c,
      this.scheduledExpression,
      this.properties,
      this.displayProfileState});

  Schedule.fromJson(Map<String, dynamic> json)
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

/// Url: https://ondemand.rit.edu/api/order/1312/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/orders
/// Method: POST
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
  final List<Schedule> schedule;
  // request#orderTimeZone
  final String orderTimeZone;
  // request#scheduleTime
  final ScheduleTime scheduleTime;
  // request#storePriceLevel
  final String storePriceLevel;
  // request#scheduledDay
  final int scheduledDay;
  // request#useIgOrderApi
  final bool useIgOrderApi;
  // request#onDemandTerminalId
  final String onDemandTerminalId;
  // request#properties
  final Properties properties;
  // request#scheduledOrderCompletionTimeStamp
  final String scheduledOrderCompletionTimeStamp;

  Request(
      {this.item,
      this.currencyDetails,
      this.schedule,
      this.orderTimeZone,
      this.scheduleTime,
      this.storePriceLevel,
      this.scheduledDay,
      this.useIgOrderApi,
      this.onDemandTerminalId,
      this.properties,
      this.scheduledOrderCompletionTimeStamp,
      Map<String, String> headers = const {}})
      : super(headers);

  Request.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : item = Item.fromJson(json['item'] ?? {}),
        currencyDetails =
            CurrencyDetails.fromJson(json['currencyDetails'] ?? {}),
        schedule = (json['schedule'] as List)
            ?.map((e) => Schedule.fromJson(e ?? {}))
            ?.toList(),
        orderTimeZone = json['orderTimeZone'],
        scheduleTime = ScheduleTime.fromJson(json['scheduleTime'] ?? {}),
        storePriceLevel = json['storePriceLevel'],
        scheduledDay = json['scheduledDay'],
        useIgOrderApi = json['useIgOrderApi'],
        onDemandTerminalId = json['onDemandTerminalId'],
        properties = Properties.fromJson(json['properties'] ?? {}),
        scheduledOrderCompletionTimeStamp =
            json['scheduledOrderCompletionTimeStamp'],
        super(headers);

  Map<String, dynamic> toJson() => {
        'item': item?.toJson(),
        'currencyDetails': currencyDetails?.toJson(),
        'schedule': schedule?.map((e) => e?.toJson())?.toList(),
        'orderTimeZone': orderTimeZone,
        'scheduleTime': scheduleTime?.toJson(),
        'storePriceLevel': storePriceLevel,
        'scheduledDay': scheduledDay,
        'useIgOrderApi': useIgOrderApi,
        'onDemandTerminalId': onDemandTerminalId,
        'properties': properties?.toJson(),
        'scheduledOrderCompletionTimeStamp': scheduledOrderCompletionTimeStamp
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
  final List<LineItemGroups> lineItemGroups;
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
        lineItemGroups = (json['lineItemGroups'] as List)
            ?.map((e) => LineItemGroups.fromJson(e ?? {}))
            ?.toList(),
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
        'lineItemGroups': lineItemGroups?.map((e) => e?.toJson())?.toList(),
        'lineItemTax': lineItemTax,
        'properties': properties?.toJson()
      };
}

/// Json path:
/// ```
/// response.orderDetails.lineItems.lineItemGroups
/// ```
class LineItemGroups {
  // response.orderDetails.lineItems.lineItemGroups#groupId
  final String groupId;
  // response.orderDetails.lineItems.lineItemGroups#minimum
  final int minimum;
  // response.orderDetails.lineItems.lineItemGroups#maximum
  final int maximum;
  // response.orderDetails.lineItems.lineItemGroups#lineItems
  final List<LineItems> lineItems;

  LineItemGroups({this.groupId, this.minimum, this.maximum, this.lineItems});

  LineItemGroups.fromJson(Map<String, dynamic> json)
      : groupId = json['groupId'],
        minimum = json['minimum'],
        maximum = json['maximum'],
        lineItems = (json['lineItems'] as List)
            ?.map((e) => LineItems.fromJson(e ?? {}))
            ?.toList();

  Map<String, dynamic> toJson() => {
        'groupId': groupId,
        'minimum': minimum,
        'maximum': maximum,
        'lineItems': lineItems?.map((e) => e?.toJson())?.toList()
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
  // response.addedItem#selectedModifiers
  final List<SelectedModifiers> selectedModifiers;
  // response.addedItem#splInstruction
  final String splInstruction;
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
      this.selectedModifiers,
      this.splInstruction,
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
        selectedModifiers = (json['selectedModifiers'] as List)
            ?.map((e) => SelectedModifiers.fromJson(e ?? {}))
            ?.toList(),
        splInstruction = json['splInstruction'],
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
        'selectedModifiers':
            selectedModifiers?.map((e) => e?.toJson())?.toList(),
        'splInstruction': splInstruction,
        'modifierTotal': modifierTotal,
        'mealPeriodId': mealPeriodId,
        'uniqueId': uniqueId,
        'cartItemId': cartItemId,
        'lineItemId': lineItemId
      };
}

/// Url: https://ondemand.rit.edu/api/order/1312/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/orders
/// Method: POST
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#orderDetails
  final OrderDetails orderDetails;
  // response#addedItem
  final AddedItem addedItem;
  // response#mealPeriodId
  final String mealPeriodId;

  Response(
      {this.orderDetails,
      this.addedItem,
      this.mealPeriodId,
      Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : orderDetails = OrderDetails.fromJson(json['orderDetails'] ?? {}),
        addedItem = AddedItem.fromJson(json['addedItem'] ?? {}),
        mealPeriodId = json['mealPeriodId'],
        super(headers);

  Map<String, dynamic> toJson() => {
        'orderDetails': orderDetails?.toJson(),
        'addedItem': addedItem?.toJson(),
        'mealPeriodId': mealPeriodId
      };
}
