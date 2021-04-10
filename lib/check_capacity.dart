import 'base.dart';

/// Json path:
/// ```
/// request.storeConfig.openWindowFrames
/// ```
class OpenWindowFrames {
  // request.storeConfig.openWindowFrames#opens
  final String opens;
  // request.storeConfig.openWindowFrames#closes
  final String closes;

  OpenWindowFrames({this.opens, this.closes});

  OpenWindowFrames.fromJson(Map<String, dynamic> json)
      : opens = json['opens'],
        closes = json['closes'];

  Map<String, dynamic> toJson() => {'opens': opens, 'closes': closes};
}

/// Json path:
/// ```
/// request.storeConfig
/// ```
class StoreConfig {
  // request.storeConfig#bufferTime
  final int bufferTime;
  // request.storeConfig#intervalTime
  final int intervalTime;
  // request.storeConfig#storeTimeZone
  final String storeTimeZone;
  // request.storeConfig#openWindowFrames
  final List<OpenWindowFrames> openWindowFrames;

  StoreConfig(
      {this.bufferTime,
      this.intervalTime,
      this.storeTimeZone,
      this.openWindowFrames});

  StoreConfig.fromJson(Map<String, dynamic> json)
      : bufferTime = json['bufferTime'],
        intervalTime = json['intervalTime'],
        storeTimeZone = json['storeTimeZone'],
        openWindowFrames = (json['openWindowFrames'] as List)
            ?.map((e) => OpenWindowFrames.fromJson(e ?? {}))
            ?.toList();

  Map<String, dynamic> toJson() => {
        'bufferTime': bufferTime,
        'intervalTime': intervalTime,
        'storeTimeZone': storeTimeZone,
        'openWindowFrames': openWindowFrames?.map((e) => e?.toJson())?.toList()
      };
}

/// Json path:
/// ```
/// request.scheduleOrderData
/// ```
class ScheduleOrderData {
  // request.scheduleOrderData#scheduleType
  final String scheduleType;
  // request.scheduleOrderData#scheduleTime
  final String scheduleTime;
  // request.scheduleOrderData#daysToAdd
  final int daysToAdd;
  // request.scheduleOrderData#calendarDaysToAdd
  final int calendarDaysToAdd;

  ScheduleOrderData(
      {this.scheduleType,
      this.scheduleTime,
      this.daysToAdd,
      this.calendarDaysToAdd});

  ScheduleOrderData.fromJson(Map<String, dynamic> json)
      : scheduleType = json['scheduleType'],
        scheduleTime = json['scheduleTime'],
        daysToAdd = json['daysToAdd'],
        calendarDaysToAdd = json['calendarDaysToAdd'];

  Map<String, dynamic> toJson() => {
        'scheduleType': scheduleType,
        'scheduleTime': scheduleTime,
        'daysToAdd': daysToAdd,
        'calendarDaysToAdd': calendarDaysToAdd
      };
}

/// Json path:
/// ```
/// request.conceptTimeFrames[]
/// ```
class ConceptTimeFrame {
  // request.conceptTimeFrames[]#key
  final String key;
  // request.conceptTimeFrames[]#open
  final String open;
  // request.conceptTimeFrames[]#close
  final String close;
  // request.conceptTimeFrames[]#time
  final int time;

  ConceptTimeFrame({this.key, this.open, this.close, this.time});
  String getKey() => key;

  ConceptTimeFrame.fromJson(this.key, Map<String, dynamic> json)
      : open = json['open'],
        close = json['close'],
        time = json['time'];

  Map<String, dynamic> toJson() => {'open': open, 'close': close, 'time': time};
}

/// Json path:
/// ```
/// request.conceptTimeFrames
/// ```
class ConceptTimeFrames {
  // request.conceptTimeFrames#conceptTimeFrames
  final List<ConceptTimeFrame> conceptTimeFrames;

  ConceptTimeFrames({this.conceptTimeFrames});

  ConceptTimeFrames.fromJson(Map<String, dynamic> json)
      : conceptTimeFrames = json.keys
            .map((e) => ConceptTimeFrame.fromJson(e, json[e] ?? {}))
            .toList();

  Map<String, dynamic> toJson() => {
        'conceptTimeFrames': Map.fromIterables(
            conceptTimeFrames?.map((e) => e.getKey()),
            conceptTimeFrames?.map((e) => e?.toJson()))
      };
}

/// Url: https://ondemand.rit.edu/api/order/capacityCheck
/// Method: PUT
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  // request#scheduleTime
  final String scheduleTime;
  // request#daysToAdd
  final int daysToAdd;
  // request#orderId
  final String orderId;
  // request#storeConfig
  final StoreConfig storeConfig;
  // request#contextId
  final String contextId;
  // request#scheduleOrderData
  final ScheduleOrderData scheduleOrderData;
  // request#conceptTimeFrames
  final ConceptTimeFrames conceptTimeFrames;
  // request#conceptIds
  final List<String> conceptIds;
  // request#kitchenContextId
  final String kitchenContextId;
  // request#fulfillmentType
  final String fulfillmentType;
  // request#userUtcTimeOnOrdering
  final String userUtcTimeOnOrdering;

  Request(
      {this.scheduleTime,
      this.daysToAdd,
      this.orderId,
      this.storeConfig,
      this.contextId,
      this.scheduleOrderData,
      this.conceptTimeFrames,
      this.conceptIds,
      this.kitchenContextId,
      this.fulfillmentType,
      this.userUtcTimeOnOrdering,
      Map<String, String> headers = const {}})
      : super(headers);

  Request.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : scheduleTime = json['scheduleTime'],
        daysToAdd = json['daysToAdd'],
        orderId = json['orderId'],
        storeConfig = StoreConfig.fromJson(json['storeConfig'] ?? {}),
        contextId = json['contextId'],
        scheduleOrderData =
            ScheduleOrderData.fromJson(json['scheduleOrderData'] ?? {}),
        conceptTimeFrames =
            ConceptTimeFrames.fromJson(json['conceptTimeFrames'] ?? {}),
        conceptIds = json['conceptIds']?.cast<String>(),
        kitchenContextId = json['kitchenContextId'],
        fulfillmentType = json['fulfillmentType'],
        userUtcTimeOnOrdering = json['userUtcTimeOnOrdering'],
        super(headers);

  Map<String, dynamic> toJson() => {
        'scheduleTime': scheduleTime,
        'daysToAdd': daysToAdd,
        'orderId': orderId,
        'storeConfig': storeConfig?.toJson(),
        'contextId': contextId,
        'scheduleOrderData': scheduleOrderData?.toJson(),
        'conceptTimeFrames': conceptTimeFrames?.toJson(),
        'conceptIds': conceptIds,
        'kitchenContextId': kitchenContextId,
        'fulfillmentType': fulfillmentType,
        'userUtcTimeOnOrdering': userUtcTimeOnOrdering
      };
}

/// Url: https://ondemand.rit.edu/api/order/capacityCheck
/// Method: PUT
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#isToSuggest
  final bool isToSuggest;
  // response#strategy
  final String strategy;

  Response(
      {this.isToSuggest, this.strategy, Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : isToSuggest = json['isToSuggest'],
        strategy = json['strategy'],
        super(headers);

  Map<String, dynamic> toJson() =>
      {'isToSuggest': isToSuggest, 'strategy': strategy};
}

