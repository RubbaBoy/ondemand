import 'base.dart';

/// Url: https://ondemand.rit.edu/api/sites/1312/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/kiosk-items/5f121d554f05a8000c1b87df
/// Method: POST
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  // request#storePriceLevel
  final String storePriceLevel;
  // request#currencyUnit
  final String currencyUnit;

  Request(
      {this.storePriceLevel,
      this.currencyUnit,
      Map<String, String> headers = const {}})
      : super(headers);

  Request.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : storePriceLevel = json['storePriceLevel'],
        currencyUnit = json['currencyUnit'],
        super(headers);

  Map<String, dynamic> toJson() =>
      {'storePriceLevel': storePriceLevel, 'currencyUnit': currencyUnit};
}

/// Json path:
/// ```
/// response.childGroups.childItems.priceLevels
/// ```
class PriceLevels {
  // response.childGroups.childItems.priceLevels#priceLevels
  final List<PriceLevelsNum> priceLevels;

  PriceLevels({this.priceLevels});

  PriceLevels.fromJson(Map<String, dynamic> json)
      : priceLevels = json.keys
            .map((e) => PriceLevelsNum.fromJson(e, json[e] ?? {}))
            .toList();

  Map<String, dynamic> toJson() => {
        'priceLevels': Map.fromIterables(priceLevels?.map((e) => e.getKey()),
            priceLevels?.map((e) => e?.toJson()))
      };
}

/// Json path:
/// ```
/// response.childGroups.childItems.properties
/// ```
class Properties {
  Properties.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

/// Json path:
/// ```
/// response.childGroups.childItems
/// ```
class ChildItems {
  // response.childGroups.childItems#id
  final String id;
  // response.childGroups.childItems#contextId
  final String contextId;
  // response.childGroups.childItems#tenantId
  final String tenantId;
  // response.childGroups.childItems#itemId
  final String itemId;
  // response.childGroups.childItems#name
  final String name;
  // response.childGroups.childItems#isDeleted
  final bool isDeleted;
  // response.childGroups.childItems#isActive
  final bool isActive;
  // response.childGroups.childItems#lastUpdateTime
  final String lastUpdateTime;
  // response.childGroups.childItems#kpText
  final String kpText;
  // response.childGroups.childItems#kitchenDisplayText
  final String kitchenDisplayText;
  // response.childGroups.childItems#receiptText
  final String receiptText;
  // response.childGroups.childItems#price
  final Price price;
  // response.childGroups.childItems#defaultPriceLevelId
  final String defaultPriceLevelId;
  // response.childGroups.childItems#priceLevels
  final PriceLevels priceLevels;
  // response.childGroups.childItems#isSoldByWeight
  final bool isSoldByWeight;
  // response.childGroups.childItems#tareWeight
  final int tareWeight;
  // response.childGroups.childItems#isDiscountable
  final bool isDiscountable;
  // response.childGroups.childItems#allowPriceOverride
  final bool allowPriceOverride;
  // response.childGroups.childItems#isTaxIncluded
  final bool isTaxIncluded;
  // response.childGroups.childItems#taxClasses
  final List<dynamic> taxClasses;
  // response.childGroups.childItems#kitchenVideoLabel
  final String kitchenVideoLabel;
  // response.childGroups.childItems#kitchenVideoCategoryId
  final int kitchenVideoCategoryId;
  // response.childGroups.childItems#kitchenCookTimeSeconds
  final int kitchenCookTimeSeconds;
  // response.childGroups.childItems#skus
  final List<dynamic> skus;
  // response.childGroups.childItems#itemType
  final String itemType;
  // response.childGroups.childItems#childGroups
  final List<dynamic> childGroups;
  // response.childGroups.childItems#displayText
  final String displayText;
  // response.childGroups.childItems#itemImages
  final List<dynamic> itemImages;
  // response.childGroups.childItems#isAvailableToGuests
  final bool isAvailableToGuests;
  // response.childGroups.childItems#isPreselectedToGuests
  final bool isPreselectedToGuests;
  // response.childGroups.childItems#tagNames
  final List<dynamic> tagNames;
  // response.childGroups.childItems#tagIds
  final List<dynamic> tagIds;
  // response.childGroups.childItems#substituteItemId
  final String substituteItemId;
  // response.childGroups.childItems#isSubstituteItem
  final bool isSubstituteItem;
  // response.childGroups.childItems#properties
  final Properties properties;

  ChildItems(
      {this.id,
      this.contextId,
      this.tenantId,
      this.itemId,
      this.name,
      this.isDeleted,
      this.isActive,
      this.lastUpdateTime,
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
      this.kitchenVideoCategoryId,
      this.kitchenCookTimeSeconds,
      this.skus,
      this.itemType,
      this.childGroups,
      this.displayText,
      this.itemImages,
      this.isAvailableToGuests,
      this.isPreselectedToGuests,
      this.tagNames,
      this.tagIds,
      this.substituteItemId,
      this.isSubstituteItem,
      this.properties});

  ChildItems.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        contextId = json['contextId'],
        tenantId = json['tenantId'],
        itemId = json['itemId'],
        name = json['name'],
        isDeleted = json['isDeleted'],
        isActive = json['isActive'],
        lastUpdateTime = json['lastUpdateTime'],
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
        taxClasses = json['taxClasses'],
        kitchenVideoLabel = json['kitchenVideoLabel'],
        kitchenVideoCategoryId = json['kitchenVideoCategoryId'],
        kitchenCookTimeSeconds = json['kitchenCookTimeSeconds'],
        skus = json['skus'],
        itemType = json['itemType'],
        childGroups = json['childGroups'],
        displayText = json['displayText'],
        itemImages = json['itemImages'],
        isAvailableToGuests = json['isAvailableToGuests'],
        isPreselectedToGuests = json['isPreselectedToGuests'],
        tagNames = json['tagNames'],
        tagIds = json['tagIds'],
        substituteItemId = json['substituteItemId'],
        isSubstituteItem = json['isSubstituteItem'],
        properties = Properties.fromJson(json['properties'] ?? {});

  Map<String, dynamic> toJson() => {
        'id': id,
        'contextId': contextId,
        'tenantId': tenantId,
        'itemId': itemId,
        'name': name,
        'isDeleted': isDeleted,
        'isActive': isActive,
        'lastUpdateTime': lastUpdateTime,
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
        'kitchenVideoCategoryId': kitchenVideoCategoryId,
        'kitchenCookTimeSeconds': kitchenCookTimeSeconds,
        'skus': skus,
        'itemType': itemType,
        'childGroups': childGroups,
        'displayText': displayText,
        'itemImages': itemImages,
        'isAvailableToGuests': isAvailableToGuests,
        'isPreselectedToGuests': isPreselectedToGuests,
        'tagNames': tagNames,
        'tagIds': tagIds,
        'substituteItemId': substituteItemId,
        'isSubstituteItem': isSubstituteItem,
        'properties': properties?.toJson()
      };
}

/// Json path:
/// ```
/// response.childGroups
/// ```
class ChildGroup {
  // response.childGroups#id
  final String id;
  // response.childGroups#tenantId
  final String tenantId;
  // response.childGroups#contextId
  final String contextId;
  // response.childGroups#groupId
  final String groupId;
  // response.childGroups#name
  final String name;
  // response.childGroups#groupType
  final String groupType;
  // response.childGroups#minimum
  final int minimum;
  // response.childGroups#maximum
  final int maximum;
  // response.childGroups#terminalPrompt
  final String terminalPrompt;
  // response.childGroups#displayName
  final String displayName;
  // response.childGroups#childGroups
  final List<dynamic> childGroups;
  // response.childGroups#childItems
  final List<ChildItems> childItems;
  // response.childGroups#isAvailableToGuests
  final bool isAvailableToGuests;
  // response.childGroups#isPreselectedToGuests
  final bool isPreselectedToGuests;

  ChildGroup(
      {this.id,
      this.tenantId,
      this.contextId,
      this.groupId,
      this.name,
      this.groupType,
      this.minimum,
      this.maximum,
      this.terminalPrompt,
      this.displayName,
      this.childGroups,
      this.childItems,
      this.isAvailableToGuests,
      this.isPreselectedToGuests});

  ChildGroup.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        tenantId = json['tenantId'],
        contextId = json['contextId'],
        groupId = json['groupId'],
        name = json['name'],
        groupType = json['groupType'],
        minimum = json['minimum'],
        maximum = json['maximum'],
        terminalPrompt = json['terminalPrompt'],
        displayName = json['displayName'],
        childGroups = json['childGroups'],
        childItems = (json['childItems'] as List)
            ?.map((e) => ChildItems.fromJson(e ?? {}))
            ?.toList(),
        isAvailableToGuests = json['isAvailableToGuests'],
        isPreselectedToGuests = json['isPreselectedToGuests'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'tenantId': tenantId,
        'contextId': contextId,
        'groupId': groupId,
        'name': name,
        'groupType': groupType,
        'minimum': minimum,
        'maximum': maximum,
        'terminalPrompt': terminalPrompt,
        'displayName': displayName,
        'childGroups': childGroups,
        'childItems': childItems?.map((e) => e?.toJson())?.toList(),
        'isAvailableToGuests': isAvailableToGuests,
        'isPreselectedToGuests': isPreselectedToGuests
      };
}

/// Json path:
/// ```
/// response.modifiers.modifiers
/// ```
class Modifier {
  // response.modifiers.modifiers#id
  final String id;
  // response.modifiers.modifiers#description
  final String description;
  // response.modifiers.modifiers#type
  final String type;
  // response.modifiers.modifiers#maximum
  final int maximum;
  // response.modifiers.modifiers#minimum
  final int minimum;
  // response.modifiers.modifiers#options
  final List<Options> options;

  Modifier(
      {this.id,
      this.description,
      this.type,
      this.maximum,
      this.minimum,
      this.options});

  Modifier.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        description = json['description'],
        type = json['type'],
        maximum = json['maximum'],
        minimum = json['minimum'],
        options = (json['options'] as List)
            ?.map((e) => Options.fromJson(e ?? {}))
            ?.toList();

  Map<String, dynamic> toJson() => {
        'id': id,
        'description': description,
        'type': type,
        'maximum': maximum,
        'minimum': minimum,
        'options': options?.map((e) => e?.toJson())?.toList()
      };
}

/// Json path:
/// ```
/// response.modifiers
/// ```
class Modifiers {
  // response.modifiers#modifiers
  final List<Modifier> modifiers;
  // response.modifiers#addOnAmount
  final int addOnAmount;

  Modifiers({this.modifiers, this.addOnAmount});

  Modifiers.fromJson(Map<String, dynamic> json)
      : modifiers = (json['modifiers'] as List)
            ?.map((e) => Modifier.fromJson(e ?? {}))
            ?.toList(),
        addOnAmount = json['addOnAmount'];

  Map<String, dynamic> toJson() => {
        'modifiers': modifiers?.map((e) => e?.toJson())?.toList(),
        'addOnAmount': addOnAmount
      };
}

/// Url: https://ondemand.rit.edu/api/sites/1312/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/kiosk-items/5f121d554f05a8000c1b87df
/// Method: POST
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#id
  final String id;
  // response#contextId
  final String contextId;
  // response#tenantId
  final String tenantId;
  // response#itemId
  final String itemId;
  // response#name
  final String name;
  // response#isDeleted
  final bool isDeleted;
  // response#isActive
  final bool isActive;
  // response#lastUpdateTime
  final String lastUpdateTime;
  // response#revenueCategoryId
  final String revenueCategoryId;
  // response#productClassId
  final String productClassId;
  // response#kpText
  final String kpText;
  // response#kitchenDisplayText
  final String kitchenDisplayText;
  // response#receiptText
  final String receiptText;
  // response#price
  final Price price;
  // response#defaultPriceLevelId
  final String defaultPriceLevelId;
  // response#priceLevels
  final PriceLevels priceLevels;
  // response#isSoldByWeight
  final bool isSoldByWeight;
  // response#tareWeight
  final int tareWeight;
  // response#isDiscountable
  final bool isDiscountable;
  // response#allowPriceOverride
  final bool allowPriceOverride;
  // response#isTaxIncluded
  final bool isTaxIncluded;
  // response#taxClasses
  final List<String> taxClasses;
  // response#kitchenVideoLabel
  final String kitchenVideoLabel;
  // response#kitchenVideoId
  final String kitchenVideoId;
  // response#kitchenVideoCategoryId
  final int kitchenVideoCategoryId;
  // response#kitchenCookTimeSeconds
  final int kitchenCookTimeSeconds;
  // response#skus
  final List<dynamic> skus;
  // response#itemType
  final String itemType;
  // response#childGroups
  final List<ChildGroup> childGroups;
  // response#displayText
  final String displayText;
  // response#itemImages
  final List<ItemImage> itemImages;
  // response#isAvailableToGuests
  final bool isAvailableToGuests;
  // response#isPreselectedToGuests
  final bool isPreselectedToGuests;
  // response#tagNames
  final List<dynamic> tagNames;
  // response#tagIds
  final List<dynamic> tagIds;
  // response#substituteItemId
  final String substituteItemId;
  // response#isSubstituteItem
  final bool isSubstituteItem;
  // response#properties
  final Properties properties;
  // response#amount
  final String amount;
  // response#image
  final String image;
  // response#thumbnail
  final String thumbnail;
  // response#options
  final List<dynamic> options;
  // response#attributes
  final List<dynamic> attributes;
  // response#modifiers
  final Modifiers modifiers;

  Response(
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
      this.childGroups,
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
      this.modifiers,
      Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(Map<String, dynamic> json, Map<String, String> headers)
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
        childGroups = (json['childGroups'] as List)
            ?.map((e) => ChildGroup.fromJson(e ?? {}))
            ?.toList(),
        displayText = json['displayText'],
        itemImages = (json['itemImages'] as List)
            ?.map((e) => ItemImage.fromJson(e ?? {}))
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
        modifiers = Modifiers.fromJson(json['modifiers'] ?? {}),
        super(headers);

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
        'childGroups': childGroups?.map((e) => e?.toJson())?.toList(),
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
        'modifiers': modifiers?.toJson()
      };
}

