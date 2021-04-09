import 'package:ondemand/get_kitchens.dart' as _get_kitchens;
import 'package:ondemand/helper/account_inquiry_helper.dart';
import 'package:ondemand/ondemand.dart';

// The UID to make the inquiry to
const UID = 'my-uid';

Future<void> main(List<String> args) async {
  var onDemand = await Initialization.create();
  // The context ID, which should be the same no matter what
  var contextId = onDemand.config.contextID;

  // Fetch the kitchens available in the store
  var siteRequest = await onDemand.getKitchens(_get_kitchens.Request());

  // Just get the first kitchen, as a terminal ID is required
  var firstKitchen = siteRequest.kitchens.first;

  // Get the terminal ID
  var terminalId = firstKitchen.displayOptions.onDemandTerminalId;

  print('Using terminal: ${firstKitchen.name}');
  print('Terminal ID: $terminalId\n');

  // Check the account balance
  var tenderResponse = await makeInquiry(onDemand, contextId, terminalId, UID);
  for (var inq in tenderResponse) {
    print('Tender: ${TenderId.getTender(inq.tenderId).name}:');
    print('  Remaining: ${inq.amount.remaining} ${inq.amount.currency}');

    print('\n  Individual accounts:');
    for (var account in inq.accounts) {
      print('  ${account.name}: ${account.balance} ${account.currency}');
    }
  }
}
