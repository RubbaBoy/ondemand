import 'package:ondemand/get_config.dart' as _get_config;
import 'package:ondemand/get_item.dart' as _get_item;
import 'package:ondemand/get_items.dart' as _get_items;
import 'package:ondemand/get_kitchens.dart' as _get_kitchens;
import 'package:ondemand/get_menus.dart' as _get_menus;
import 'package:ondemand/helper/kitchen_helper.dart';
import 'package:ondemand/list_places.dart' as _list_places;
import 'package:ondemand/ondemand.dart';

Future<void> main() async {
  var initialization = await Initialization.create();
  var contextId = initialization.config.contextID;
  var onDemand = initialization;

  configPrint(initialization.config);

  // Gets all kitchens
  var kitchens = await onDemand.getKitchens(_get_kitchens.Request());
  printKitchens(kitchens);

  // Gets the commons kitchen
  var commons =
      kitchens.kitchens.firstWhere((kitchen) => kitchen.name == 'The Commons');

  // The menu being used today
  var menuResponse = await getMenu(onDemand, commons, '7:00 pm', '7:15 pm');
  var mainMenu = menuResponse.menu;

  print('\nThe menu being used today is "${mainMenu.name}" (${mainMenu.id})');
  print(
      'Categories: ${mainMenu.categories.map((category) => category.name).join(', ')}\n');

  // Gets the grill category from the main menu
  var grillCategory =
      mainMenu.categories.firstWhere((category) => category.name == 'Grill');

  // Gets the item details for all item IDs in the grill category
  var items = await onDemand.getItems(
      _get_items.Request(
        // The place ID
        conceptId: menuResponse.place.id,
        // The items IDs to get (this shouldn't be restricted to one category)
        itemIds: grillCategory.items,
        currencyUnit: CURRENCY,
        storePriceLevel: PRICE_LEVEL,
      ),
      contextId: contextId);

  // Prints out the available items
  print('Retrieved items:');
  for (var item in items.items) {
    print('${item.name} ${item.price.amount} ${item.price.currencyUnit}');
  }

  // Gets a hamburger from the items
  var hamburger =
      items.items.firstWhere((item) => item.name == 'Commons Hamburger');

  // If childGroups is FILLED, do get_item request (childGroups#id is the id of something idk)
  print('ChildGroups: ${hamburger.childGroups.map((e) => e.id).toList()}');

  // Gets extra information pertaining to the hamburger
  var gotItem = await onDemand.getItem(
      _get_item.Request(
        storePriceLevel: PRICE_LEVEL,
        currencyUnit: CURRENCY,
      ),
      contextId: contextId,
      itemID: hamburger.id);

  print('Select options for ${gotItem.name}:');

  // Information such as toppings
  for (var child in gotItem.childGroups) {
    print(
        '${child.name} - min: ${child.minimum} max: ${child.maximum} type: ${child.groupType}');
    for (var option in child.childItems) {
      print('\t${option.displayText}');
    }
  }
}

/// Prints the available kitchens and their operating times
void printKitchens(_get_kitchens.Response response) {
  print('${response.kitchens.length} kitchens found:\n');
  for (var kitchen in response.kitchens) {
    print(
        '${kitchen.name}\t${kitchen.availableAt.opens} - ${kitchen.availableAt.closes}');
  }
}

/// Prints basic config data
void configPrint(_get_config.Response config) {
  print('Using config tenant #${config.tenantID}:');
  print('Contains ${config.storeList.length} stores:');
  for (var value in config.storeList) {
    print('\tStore "${value.storeInfo.storeName}"');
  }
}
