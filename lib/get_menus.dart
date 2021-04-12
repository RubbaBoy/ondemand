import 'base.dart';

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
  final List<MenuSchedule> schedule;
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
            ?.map((e) => MenuSchedule.fromJson(e ?? {}))
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

