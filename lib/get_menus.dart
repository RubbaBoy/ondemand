import 'base.dart';

/// Json path:
/// ```
/// request.menus.categories.categoryOptions
/// ```
class CategoryOptions {
  CategoryOptions.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

/// Json path:
/// ```
/// request.menus.categories.itemIdToItemPropertiesMap
/// ```
class ItemIdToItemPropertiesMap {
  ItemIdToItemPropertiesMap.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => {};
}

/// Json path:
/// ```
/// request.menus.categories
/// ```
class Categories {
  // request.menus.categories#name
  final String name;
  // request.menus.categories#categoryOptions
  final CategoryOptions categoryOptions;
  // request.menus.categories#items
  final List<String> items;
  // request.menus.categories#itemIdToItemPropertiesMap
  final ItemIdToItemPropertiesMap itemIdToItemPropertiesMap;
  // request.menus.categories#kioskImages
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
/// response.response
/// ```
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

/// Url: https://ondemand.rit.edu/api/sites/1312/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/concepts/2162/menus/3403
/// Method: POST
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  // request#menus
  final List<Menu> menus;
  // request#schedule
  final List<Schedule> schedule;
  // request#scheduleTime
  final ScheduleTime scheduleTime;
  // request#storePriceLevel
  final String storePriceLevel;
  // request#scheduledDay
  final int scheduledDay;
  // request#currencyUnit
  final String currencyUnit;

  Request(
      {this.menus,
      this.schedule,
      this.scheduleTime,
      this.storePriceLevel,
      this.scheduledDay,
      this.currencyUnit,
      Map<String, String> headers = const {}})
      : super(headers);

  Request.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : menus = (json['menus'] as List)
            ?.map((e) => Menu.fromJson(e ?? {}))
            ?.toList(),
        schedule = (json['schedule'] as List)
            ?.map((e) => Schedule.fromJson(e ?? {}))
            ?.toList(),
        scheduleTime = ScheduleTime.fromJson(json['scheduleTime'] ?? {}),
        storePriceLevel = json['storePriceLevel'],
        scheduledDay = json['scheduledDay'],
        currencyUnit = json['currencyUnit'],
        super(headers);

  Map<String, dynamic> toJson() => {
        'menus': menus?.map((e) => e?.toJson())?.toList(),
        'schedule': schedule?.map((e) => e?.toJson())?.toList(),
        'scheduleTime': scheduleTime?.toJson(),
        'storePriceLevel': storePriceLevel,
        'scheduledDay': scheduledDay,
        'currencyUnit': currencyUnit
      };
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
/// response.response.customLabels.Spicy
/// ```
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

/// Json path:
/// ```
/// response.response.customLabels.Vegetarian
/// ```
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

/// Json path:
/// ```
/// response.response.customLabels.Gluten Free
/// ```
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

/// Json path:
/// ```
/// response.response.customLabels.Healthy
/// ```
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

/// Json path:
/// ```
/// response.response.customLabels.Vegan
/// ```
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

/// Json path:
/// ```
/// response.response.customLabels
/// ```
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

/// Url: https://ondemand.rit.edu/api/sites/1312/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/concepts/2162/menus/3403
/// Method: POST
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#response
  final List<Menu> menus;

  Response({this.menus, Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(dynamic json, Map<String, String> headers)
      : menus = (json as List)?.map((e) => Menu.fromJson(e ?? {}))?.toList(),
        super(headers);

  List<dynamic> toJson() => menus?.map((e) => e?.toJson())?.toList();
}
