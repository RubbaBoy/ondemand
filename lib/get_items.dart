import 'base.dart';

/// Url: https://ondemand.rit.edu/api/sites/1312/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/kiosk-items/get-items
/// Method: POST
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  // request#conceptId
  final String conceptId;
  // request#itemIds
  final List<String> itemIds;
  // request#storePriceLevel
  final String storePriceLevel;
  // request#currencyUnit
  final String currencyUnit;

  Request(
      {this.conceptId,
      this.itemIds,
      this.storePriceLevel,
      this.currencyUnit,
      Map<String, String> headers = const {}})
      : super(headers);

  Request.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : conceptId = json['conceptId'],
        itemIds = json['itemIds']?.cast<String>(),
        storePriceLevel = json['storePriceLevel'],
        currencyUnit = json['currencyUnit'],
        super(headers);

  Map<String, dynamic> toJson() => {
        'conceptId': conceptId,
        'itemIds': itemIds,
        'storePriceLevel': storePriceLevel,
        'currencyUnit': currencyUnit
      };
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
/// response.response.priceLevels
/// ```
class PriceLevels {
  // response.response.priceLevels#priceLevels
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
/// response.response.childGroups
/// ```
class ChildGroup {
  // response.response.childGroups#id
  final String id;
  // response.response.childGroups#childGroups
  final List<dynamic> childGroups;
  // response.response.childGroups#childItems
  final List<dynamic> childItems;
  // response.response.childGroups#isAvailableToGuests
  final bool isAvailableToGuests;
  // response.response.childGroups#isPreselectedToGuests
  final bool isPreselectedToGuests;

  ChildGroup(
      {this.id,
      this.childGroups,
      this.childItems,
      this.isAvailableToGuests,
      this.isPreselectedToGuests});

  ChildGroup.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        childGroups = json['childGroups'],
        childItems = json['childItems'],
        isAvailableToGuests = json['isAvailableToGuests'],
        isPreselectedToGuests = json['isPreselectedToGuests'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'childGroups': childGroups,
        'childItems': childItems,
        'isAvailableToGuests': isAvailableToGuests,
        'isPreselectedToGuests': isPreselectedToGuests
      };
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
/// response.response.properties
/// ```
class Properties {
  Properties.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

/// Json path:
/// ```
/// response.response
/// ```
class FoodItem {
  // response.response#id
  final String id;
  // response.response#contextId
  final String contextId;
  // response.response#tenantId
  final String tenantId;
  // response.response#itemId
  final String itemId;
  // response.response#name
  final String name;
  // response.response#isDeleted
  final bool isDeleted;
  // response.response#isActive
  final bool isActive;
  // response.response#lastUpdateTime
  final String lastUpdateTime;
  // response.response#revenueCategoryId
  final String revenueCategoryId;
  // response.response#productClassId
  final String productClassId;
  // response.response#kpText
  final String kpText;
  // response.response#kitchenDisplayText
  final String kitchenDisplayText;
  // response.response#receiptText
  final String receiptText;
  // response.response#price
  final Price price;
  // response.response#defaultPriceLevelId
  final String defaultPriceLevelId;
  // response.response#priceLevels
  final PriceLevels priceLevels;
  // response.response#isSoldByWeight
  final bool isSoldByWeight;
  // response.response#tareWeight
  final int tareWeight;
  // response.response#isDiscountable
  final bool isDiscountable;
  // response.response#allowPriceOverride
  final bool allowPriceOverride;
  // response.response#isTaxIncluded
  final bool isTaxIncluded;
  // response.response#taxClasses
  final List<String> taxClasses;
  // response.response#kitchenVideoLabel
  final String kitchenVideoLabel;
  // response.response#kitchenVideoId
  final String kitchenVideoId;
  // response.response#kitchenVideoCategoryId
  final int kitchenVideoCategoryId;
  // response.response#kitchenCookTimeSeconds
  final int kitchenCookTimeSeconds;
  // response.response#skus
  final List<String> skus;
  // response.response#itemType
  final String itemType;
  // response.response#childGroups
  final List<ChildGroup> childGroups;
  // response.response#displayText
  final String displayText;
  // response.response#itemImages
  final List<ItemImage> itemImages;
  // response.response#isAvailableToGuests
  final bool isAvailableToGuests;
  // response.response#isPreselectedToGuests
  final bool isPreselectedToGuests;
  // response.response#tagNames
  final List<dynamic> tagNames;
  // response.response#tagIds
  final List<dynamic> tagIds;
  // response.response#substituteItemId
  final String substituteItemId;
  // response.response#isSubstituteItem
  final bool isSubstituteItem;
  // response.response#properties
  final Properties properties;
  // response.response#amount
  final String amount;
  // response.response#image
  final String image;
  // response.response#thumbnail
  final String thumbnail;
  // response.response#options
  final List<dynamic> options;
  // response.response#attributes
  final List<dynamic> attributes;
  // response.response#conceptId
  final String conceptId;
  // response.response#longDescription
  final String longDescription;
  // response.response#description
  final String description;

  FoodItem(
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
      this.conceptId,
      this.longDescription,
      this.description});

  FoodItem.fromJson(Map<String, dynamic> json)
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
        skus = json['skus']?.cast<String>(),
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
        conceptId = json['conceptId'],
        longDescription = json['longDescription'],
        description = json['description'];

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
        'conceptId': conceptId,
        'longDescription': longDescription,
        'description': description
      };
}

/// Url: https://ondemand.rit.edu/api/sites/1312/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/kiosk-items/get-items
/// Method: POST
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#response
  final List<FoodItem> items;

  Response({this.items, Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(dynamic json, Map<String, String> headers)
      : items =
            (json as List)?.map((e) => FoodItem.fromJson(e ?? {}))?.toList(),
        super(headers);

  List<dynamic> toJson() => items?.map((e) => e?.toJson())?.toList();
}

