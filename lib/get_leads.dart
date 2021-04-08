import 'base.dart';

/// Json path:
/// ```
/// request.request
/// ```
class KitchenRequest {
  // request.request#kitchenContextId
  final String kitchenContextId;
  // request.request#dateTime
  final String dateTime;
  // request.request#clientTimeZone
  final String clientTimeZone;

  KitchenRequest({this.kitchenContextId, this.dateTime, this.clientTimeZone});

  KitchenRequest.fromJson(Map<String, dynamic> json)
      : kitchenContextId = json['kitchenContextId'],
        dateTime = json['dateTime'],
        clientTimeZone = json['clientTimeZone'];

  Map<String, dynamic> toJson() => {
        'kitchenContextId': kitchenContextId,
        'dateTime': dateTime,
        'clientTimeZone': clientTimeZone
      };
}

/// Url: https://ondemand.rit.edu/api/sites/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/getKitchenLeadTimeForStores
/// Method: POST
/// Json path:
/// ```
/// request
/// ```
class Request extends BaseRequest {
  // request#request
  final List<KitchenRequest> kitchenRequests;

  Request({this.kitchenRequests, Map<String, String> headers = const {}})
      : super(headers);

  Request.fromJson(dynamic json, Map<String, String> headers)
      : kitchenRequests = (json as List)
            ?.map((e) => KitchenRequest.fromJson(e ?? {}))
            ?.toList(),
        super(headers);

  List<dynamic> toJson() => kitchenRequests?.map((e) => e?.toJson())?.toList();
}

/// Json path:
/// ```
/// response[].leadTime
/// ```
class LeadTime {
  // response[].leadTime#delivery
  final int delivery;
  // response[].leadTime#pickup
  final int pickup;
  // response[].leadTime#default
  final int defaultField;
  // response[].leadTime#dineIn
  final int dineIn;

  LeadTime({this.delivery, this.pickup, this.defaultField, this.dineIn});

  LeadTime.fromJson(Map<String, dynamic> json)
      : delivery = json['delivery'],
        pickup = json['pickup'],
        defaultField = json['default'],
        dineIn = json['dineIn'];

  Map<String, dynamic> toJson() => {
        'delivery': delivery,
        'pickup': pickup,
        'default': defaultField,
        'dineIn': dineIn
      };
}

/// Json path:
/// ```
/// response[]
/// ```
class Kitchen {
  // response[]#key
  final String key;
  // response[]#kitchenCapacity
  final int kitchenCapacity;
  // response[]#minimumItemPreparationTimeInMinutes
  final int minimumItemPreparationTimeInMinutes;
  // response[]#leadTime
  final LeadTime leadTime;

  Kitchen(
      {this.key,
      this.kitchenCapacity,
      this.minimumItemPreparationTimeInMinutes,
      this.leadTime});
  String getKey() => key;

  Kitchen.fromJson(this.key, Map<String, dynamic> json)
      : kitchenCapacity = json['kitchenCapacity'],
        minimumItemPreparationTimeInMinutes =
            json['minimumItemPreparationTimeInMinutes'],
        leadTime = LeadTime.fromJson(json['leadTime'] ?? {});

  Map<String, dynamic> toJson() => {
        'kitchenCapacity': kitchenCapacity,
        'minimumItemPreparationTimeInMinutes':
            minimumItemPreparationTimeInMinutes,
        'leadTime': leadTime?.toJson()
      };
}

/// Url: https://ondemand.rit.edu/api/sites/dc9df36d-8a64-42cf-b7c1-fa041f5f3cfd/getKitchenLeadTimeForStores
/// Method: POST
/// Json path:
/// ```
/// response
/// ```
class Response extends BaseResponse {
  // response#response
  final List<Kitchen> kitchens;

  Response({this.kitchens, Map<String, String> headers = const {}})
      : super(headers);

  Response.fromJson(Map<String, dynamic> json, Map<String, String> headers)
      : kitchens =
            json.keys.map((e) => Kitchen.fromJson(e, json[e] ?? {})).toList(),
        super(headers);

  Map<String, dynamic> toJson() => {
        'response': Map.fromIterables(
            kitchens?.map((e) => e.getKey()), kitchens?.map((e) => e?.toJson()))
      };
}
