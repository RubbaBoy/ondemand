import 'base.dart';

/// Json path:
/// ```
/// request.cartItems.properties
/// ```
class Properties {
  // request.cartItems.properties#cartGuid
  final String cartGuid;

  Properties({this.cartGuid});

  Properties.fromJson(Map<String, dynamic> json) : cartGuid = json['cartGuid'];

  Map<String, dynamic> toJson() => {'cartGuid': cartGuid};
}

/// Json path:
/// ```
/// request.cartItems.modifiers
/// ```
class Modifiers {
  // request.cartItems.modifiers#modifiers
  final List<Modifiers> modifiers;
  // request.cartItems.modifiers#addOnAmount
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
/// request.cartItems.defaultModifiersList
/// ```
class DefaultModifiersList {
  // request.cartItems.defaultModifiersList#modifiers
  final List<Modifiers> modifiers;
  // request.cartItems.defaultModifiersList#addOnAmount
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
/// request.cartItems
/// ```
class CartItems {
  // request.cartItems#id
  final String id;
  // request.cartItems#contextId
  final String contextId;
  // request.cartItems#tenantId
  final String tenantId;
  // request.cartItems#itemId
  final String itemId;
  // request.cartItems#name
  final String name;
  // request.cartItems#isDeleted
  final bool isDeleted;
  // request.cartItems#isActive
  final bool isActive;
  // request.cartItems#lastUpdateTime
  final String lastUpdateTime;
  // request.cartItems#revenueCategoryId
  final String revenueCategoryId;
  // request.cartItems#productClassId
  final String productClassId;
  // request.cartItems#kpText
  final String kpText;
  // request.cartItems#kitchenDisplayText
  final String kitchenDisplayText;
  // request.cartItems#receiptText
  final String receiptText;
  // request.cartItems#price
  final Price price;
  // request.cartItems#defaultPriceLevelId
  final String defaultPriceLevelId;
  // request.cartItems#priceLevels
  final PriceLevels priceLevels;
  // request.cartItems#isSoldByWeight
  final bool isSoldByWeight;
  // request.cartItems#tareWeight
  final int tareWeight;
  // request.cartItems#isDiscountable
  final bool isDiscountable;
  // request.cartItems#allowPriceOverride
  final bool allowPriceOverride;
  // request.cartItems#isTaxIncluded
  final bool isTaxIncluded;
  // request.cartItems#taxClasses
  final List<String> taxClasses;
  // request.cartItems#kitchenVideoLabel
  final String kitchenVideoLabel;
  // request.cartItems#kitchenVideoId
  final String kitchenVideoId;
  // request.cartItems#kitchenVideoCategoryId
  final int kitchenVideoCategoryId;
  // request.cartItems#kitchenCookTimeSeconds
  final int kitchenCookTimeSeconds;
  // request.cartItems#skus
  final List<dynamic> skus;
  // request.cartItems#itemType
  final String itemType;
  // request.cartItems#displayText
  final String displayText;
  // request.cartItems#itemImages
  final List<ItemImages> itemImages;
  // request.cartItems#isAvailableToGuests
  final bool isAvailableToGuests;
  // request.cartItems#isPreselectedToGuests
  final bool isPreselectedToGuests;
  // request.cartItems#tagNames
  final List<dynamic> tagNames;
  // request.cartItems#tagIds
  final List<dynamic> tagIds;
  // request.cartItems#substituteItemId
  final String substituteItemId;
  // request.cartItems#isSubstituteItem
  final bool isSubstituteItem;
  // request.cartItems#properties
  final Properties properties;
  // request.cartItems#amount
  final String amount;
  // request.cartItems#image
  final String image;
  // request.cartItems#thumbnail
  final String thumbnail;
  // request.cartItems#options
  final List<dynamic> options;
  // request.cartItems#attributes
  final List<dynamic> attributes;
  // request.cartItems#conceptId
  final String conceptId;
  // request.cartItems#count
  final int count;
  // request.cartItems#quantity
  final int quantity;
  // request.cartItems#selectedModifiers
  final List<SelectedModifiers> selectedModifiers;
  // request.cartItems#splInstruction
  final String splInstruction;
  // request.cartItems#modifierTotal
  final int modifierTotal;
  // request.cartItems#mealPeriodId
  final dynamic mealPeriodId;
  // request.cartItems#uniqueId
  final String uniqueId;
  // request.cartItems#cartItemId
  final String cartItemId;
  // request.cartItems#lineItemId
  final String lineItemId;
  // request.cartItems#modifiers
  final Modifiers modifiers;
  // request.cartItems#defaultModifiersList
  final DefaultModifiersList defaultModifiersList;

  CartItems(
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

  CartItems.fromJson(Map<String, dynamic> json)
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

/// Url: https://ondemand.rit.edu/api/order/1312/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/getWaitTimeForItems
/// Method: POST
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  // request#cartItems
  final List<CartItems> cartItems;
  // request#varianceEnabled
  final bool varianceEnabled;
  // request#variancePercentage
  final int variancePercentage;
  // request#kitchenContextId
  final String kitchenContextId;
  // request#deliveryType
  final String deliveryType;

  Request(
      {this.cartItems,
      this.varianceEnabled,
      this.variancePercentage,
      this.kitchenContextId,
      this.deliveryType,
      Map<String, String> headers = const {}})
      : super(headers);

  Request.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : cartItems = (json['cartItems'] as List)
            ?.map((e) => CartItems.fromJson(e ?? {}))
            ?.toList(),
        varianceEnabled = json['varianceEnabled'],
        variancePercentage = json['variancePercentage'],
        kitchenContextId = json['kitchenContextId'],
        deliveryType = json['deliveryType'],
        super(headers);

  Map<String, dynamic> toJson() => {
        'cartItems': cartItems?.map((e) => e?.toJson())?.toList(),
        'varianceEnabled': varianceEnabled,
        'variancePercentage': variancePercentage,
        'kitchenContextId': kitchenContextId,
        'deliveryType': deliveryType
      };
}

/// Json path:
/// ```
/// response.minTime.periodType
/// ```
class PeriodType {
  // response.minTime.periodType#name
  final String name;

  PeriodType({this.name});

  PeriodType.fromJson(Map<String, dynamic> json) : name = json['name'];

  Map<String, dynamic> toJson() => {'name': name};
}

/// Json path:
/// ```
/// response.minTime.fieldType
/// ```
class FieldType {
  // response.minTime.fieldType#name
  final String name;

  FieldType({this.name});

  FieldType.fromJson(Map<String, dynamic> json) : name = json['name'];

  Map<String, dynamic> toJson() => {'name': name};
}

/// Json path:
/// ```
/// response.minTime
/// ```
class MinTime {
  // response.minTime#periodType
  final PeriodType periodType;
  // response.minTime#minutes
  final int minutes;
  // response.minTime#fieldType
  final FieldType fieldType;

  MinTime({this.periodType, this.minutes, this.fieldType});

  MinTime.fromJson(Map<String, dynamic> json)
      : periodType = PeriodType.fromJson(json['periodType'] ?? {}),
        minutes = json['minutes'],
        fieldType = FieldType.fromJson(json['fieldType'] ?? {});

  Map<String, dynamic> toJson() => {
        'periodType': periodType?.toJson(),
        'minutes': minutes,
        'fieldType': fieldType?.toJson()
      };
}

/// Json path:
/// ```
/// response.maxTime
/// ```
class MaxTime {
  // response.maxTime#periodType
  final PeriodType periodType;
  // response.maxTime#minutes
  final int minutes;
  // response.maxTime#fieldType
  final FieldType fieldType;

  MaxTime({this.periodType, this.minutes, this.fieldType});

  MaxTime.fromJson(Map<String, dynamic> json)
      : periodType = PeriodType.fromJson(json['periodType'] ?? {}),
        minutes = json['minutes'],
        fieldType = FieldType.fromJson(json['fieldType'] ?? {});

  Map<String, dynamic> toJson() => {
        'periodType': periodType?.toJson(),
        'minutes': minutes,
        'fieldType': fieldType?.toJson()
      };
}

/// Url: https://ondemand.rit.edu/api/order/1312/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/getWaitTimeForItems
/// Method: POST
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#minTime
  final MinTime minTime;
  // response#maxTime
  final MaxTime maxTime;

  Response({this.minTime, this.maxTime, Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : minTime = MinTime.fromJson(json['minTime'] ?? {}),
        maxTime = MaxTime.fromJson(json['maxTime'] ?? {}),
        super(headers);

  Map<String, dynamic> toJson() =>
      {'minTime': minTime?.toJson(), 'maxTime': maxTime?.toJson()};
}

