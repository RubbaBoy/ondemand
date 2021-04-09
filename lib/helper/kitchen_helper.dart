import 'package:ondemand/get_kitchens.dart' as _get_kitchens;
import 'package:ondemand/get_menus.dart' as _get_menus;
import 'package:ondemand/list_places.dart' as _list_places;
import 'package:ondemand/ondemand.dart';

/// Lists the actively used menu for the [kitchen]. If not as soon as possible,
/// [startTime] and [endTime] should be set to the same times used when listing
/// kitchens. [startTime] and [endTime] should be in the same format as
/// `7:15 pm` or `12:03 am` for example.
Future<MenuResponse> getMenu(OnDemand onDemand, _get_kitchens.Kitchen kitchen, [String startTime, String endTime]) async {
  // TODO: Combine like classes!
  _list_places.ScheduleTime scheduledTime;
  _get_menus.ScheduleTime scheduledTime2;

  if (startTime != null && endTime != null) {
    scheduledTime = _list_places.ScheduleTime(
        startTime: startTime, endTime: endTime);

    scheduledTime2 = _get_menus.ScheduleTime(
        startTime: startTime, endTime: endTime);
  }

  // Lists the places available in the kitchen (There should always be 1)
  var places = await onDemand.listPlaces(
      _list_places.Request(scheduleTime: scheduledTime),
      contextId: onDemand.config.contextID,
      displayId: kitchen.displayProfileId);

  // Get the first (and most likely only) place, where more data is available
  // about the kitchen compared to the `commons` object
  var place = places.places.first;

  var menus = await onDemand.getMenus(
      _get_menus.Request(
          menus: place.menus
              .map((e) => _get_menus.Menu.fromJson(e.toJson()))
              .toList(),
          scheduleTime: scheduledTime2,
          schedule: place.schedule
              .map((e) => _get_menus.Schedule.fromJson(e.toJson()))
              .toList(),
          scheduledDay: 0,
          storePriceLevel: PRICE_LEVEL,
          currencyUnit: CURRENCY),
      contextId: onDemand.config.contextID,
      displayId: kitchen.displayProfileId,
      placeId: place.id);

  // It should always return one menu
  return MenuResponse(place, menus.menus.first);
}

class MenuResponse {
  /// The place, usually used for the conceptId
  final _list_places.Place place;

  /// The main menu being used by the place
  final _get_menus.Menu menu;

  MenuResponse(this.place, this.menu);
}
