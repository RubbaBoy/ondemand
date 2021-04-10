import 'base.dart';

/// Url: https://ondemand.rit.edu/api/sites/1312/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/concepts/2162
/// Method: POST
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  // request#scheduleTime
  final ScheduleTime scheduleTime;
  // request#scheduledDay
  final int scheduledDay;

  Request(
      {this.scheduleTime,
      this.scheduledDay,
      Map<String, String> headers = const {}})
      : super(headers);

  Request.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : scheduleTime = ScheduleTime.fromJson(json['scheduleTime'] ?? {}),
        scheduledDay = json['scheduledDay'],
        super(headers);

  Map<String, dynamic> toJson() =>
      {'scheduleTime': scheduleTime?.toJson(), 'scheduledDay': scheduledDay};
}

/// Json path:
/// ```
/// response.response.conceptOptions
/// ```
class ConceptOptions {
  // response.response.conceptOptions#profitCenterId
  final String profitCenterId;
  // response.response.conceptOptions#apiUserName
  final String apiUserName;
  // response.response.conceptOptions#displayText
  final String displayText;
  // response.response.conceptOptions#showLogo
  final String showLogo;
  // response.response.conceptOptions#iFrameTenantID
  final String iFrameTenantID;
  // response.response.conceptOptions#iFrameUserApi
  final String iFrameUserApi;
  // response.response.conceptOptions#onDemandConceptLogo
  final String onDemandConceptLogo;
  // response.response.conceptOptions#clientId
  final String clientId;
  // response.response.conceptOptions#onDemandShowImage
  final String onDemandShowImage;
  // response.response.conceptOptions#onDemandMobileColor
  final String onDemandMobileColor;
  // response.response.conceptOptions#conceptBackground
  final String conceptBackground;
  // response.response.conceptOptions#iFrameApi
  final String iFrameApi;
  // response.response.conceptOptions#nonce
  final String nonce;
  // response.response.conceptOptions#onDemandDesktopColor
  final String onDemandDesktopColor;
  // response.response.conceptOptions#conceptLogo
  final String conceptLogo;
  // response.response.conceptOptions#onDemandDesktopBackgroundImage
  final String onDemandDesktopBackgroundImage;
  // response.response.conceptOptions#inUse
  final String inUse;
  // response.response.conceptOptions#onDemandDisplayText
  final String onDemandDisplayText;

  ConceptOptions(
      {this.profitCenterId,
      this.apiUserName,
      this.displayText,
      this.showLogo,
      this.iFrameTenantID,
      this.iFrameUserApi,
      this.onDemandConceptLogo,
      this.clientId,
      this.onDemandShowImage,
      this.onDemandMobileColor,
      this.conceptBackground,
      this.iFrameApi,
      this.nonce,
      this.onDemandDesktopColor,
      this.conceptLogo,
      this.onDemandDesktopBackgroundImage,
      this.inUse,
      this.onDemandDisplayText});

  ConceptOptions.fromJson(Map<String, dynamic> json)
      : profitCenterId = json['profitCenterId'],
        apiUserName = json['apiUserName'],
        displayText = json['displayText'],
        showLogo = json['showLogo'],
        iFrameTenantID = json['iFrameTenantID'],
        iFrameUserApi = json['iFrameUserApi'],
        onDemandConceptLogo = json['onDemandConceptLogo'],
        clientId = json['clientId'],
        onDemandShowImage = json['onDemandShowImage'],
        onDemandMobileColor = json['onDemandMobileColor'],
        conceptBackground = json['conceptBackground'],
        iFrameApi = json['iFrameApi'],
        nonce = json['nonce'],
        onDemandDesktopColor = json['onDemandDesktopColor'],
        conceptLogo = json['conceptLogo'],
        onDemandDesktopBackgroundImage = json['onDemandDesktopBackgroundImage'],
        inUse = json['inUse'],
        onDemandDisplayText = json['onDemandDisplayText'];

  Map<String, dynamic> toJson() => {
        'profitCenterId': profitCenterId,
        'apiUserName': apiUserName,
        'displayText': displayText,
        'showLogo': showLogo,
        'iFrameTenantID': iFrameTenantID,
        'iFrameUserApi': iFrameUserApi,
        'onDemandConceptLogo': onDemandConceptLogo,
        'clientId': clientId,
        'onDemandShowImage': onDemandShowImage,
        'onDemandMobileColor': onDemandMobileColor,
        'conceptBackground': conceptBackground,
        'iFrameApi': iFrameApi,
        'nonce': nonce,
        'onDemandDesktopColor': onDemandDesktopColor,
        'conceptLogo': conceptLogo,
        'onDemandDesktopBackgroundImage': onDemandDesktopBackgroundImage,
        'inUse': inUse,
        'onDemandDisplayText': onDemandDisplayText
      };
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
/// response.response.menus
/// ```
class Menus {
  // response.response.menus#name
  final String name;
  // response.response.menus#description
  final String description;
  // response.response.menus#id
  final String id;
  // response.response.menus#categories
  final List<Categories> categories;
  // response.response.menus#lastUpdateTime
  final String lastUpdateTime;

  Menus(
      {this.name,
      this.description,
      this.id,
      this.categories,
      this.lastUpdateTime});

  Menus.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        description = json['description'],
        id = json['id'],
        categories = (json['categories'] as List)
            ?.map((e) => Categories.fromJson(e ?? {}))
            ?.toList(),
        lastUpdateTime = json['lastUpdateTime'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'id': id,
        'categories': categories?.map((e) => e?.toJson())?.toList(),
        'lastUpdateTime': lastUpdateTime
      };
}

/// Json path:
/// ```
/// response.response.schedule.properties
/// ```
class Properties {
  // response.response.schedule.properties#TRANSITION_MESSAGE
  final String transitionMessage;

  Properties({this.transitionMessage});

  Properties.fromJson(Map<String, dynamic> json)
      : transitionMessage = json['TRANSITION_MESSAGE'];

  Map<String, dynamic> toJson() => {'TRANSITION_MESSAGE': transitionMessage};
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
class Schedule {
  // response.response.schedule#@c
  final String c;
  // response.response.schedule#scheduledExpression
  final String scheduledExpression;
  // response.response.schedule#properties
  final Properties properties;
  // response.response.schedule#displayProfileState
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
/// response.response.availableAt
/// ```
class AvailableAt {
  // response.response.availableAt#open
  final String open;
  // response.response.availableAt#close
  final String close;
  // response.response.availableAt#time
  final int time;

  AvailableAt({this.open, this.close, this.time});

  AvailableAt.fromJson(Map<String, dynamic> json)
      : open = json['open'],
        close = json['close'],
        time = json['time'];

  Map<String, dynamic> toJson() => {'open': open, 'close': close, 'time': time};
}

/// Json path:
/// ```
/// response.response
/// ```
class Place {
  // response.response#id
  final String id;
  // response.response#image
  final String image;
  // response.response#name
  final String name;
  // response.response#conceptOptions
  final ConceptOptions conceptOptions;
  // response.response#menus
  final List<Menus> menus;
  // response.response#schedule
  final List<Schedule> schedule;
  // response.response#availableNow
  final bool availableNow;
  // response.response#availableAt
  final AvailableAt availableAt;

  Place(
      {this.id,
      this.image,
      this.name,
      this.conceptOptions,
      this.menus,
      this.schedule,
      this.availableNow,
      this.availableAt});

  Place.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        image = json['image'],
        name = json['name'],
        conceptOptions = ConceptOptions.fromJson(json['conceptOptions'] ?? {}),
        menus = (json['menus'] as List)
            ?.map((e) => Menus.fromJson(e ?? {}))
            ?.toList(),
        schedule = (json['schedule'] as List)
            ?.map((e) => Schedule.fromJson(e ?? {}))
            ?.toList(),
        availableNow = json['availableNow'],
        availableAt = AvailableAt.fromJson(json['availableAt'] ?? {});

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'name': name,
        'conceptOptions': conceptOptions?.toJson(),
        'menus': menus?.map((e) => e?.toJson())?.toList(),
        'schedule': schedule?.map((e) => e?.toJson())?.toList(),
        'availableNow': availableNow,
        'availableAt': availableAt?.toJson()
      };
}

/// Url: https://ondemand.rit.edu/api/sites/1312/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/concepts/2162
/// Method: POST
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#response
  final List<Place> places;

  Response({this.places, Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(dynamic json, Map<String, String> headers)
      : places = (json as List)?.map((e) => Place.fromJson(e ?? {}))?.toList(),
        super(headers);

  List<dynamic> toJson() => places?.map((e) => e?.toJson())?.toList();
}

