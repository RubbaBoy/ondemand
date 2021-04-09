import 'package:ondemand/account_inquiry.dart' as _account_inquiry;
import 'package:ondemand/get_kitchens.dart' as _get_kitchens;
import 'package:ondemand/ondemand.dart';

// The UID to make the inquiry to
const UID = 'my-uid';

Future<void> main(List<String> args) async {
  var initialization = await Initialization.create();
  // The context ID, which should be the same no matter what
  var contextId = initialization.config.contextID;
  var onDemand = initialization.onDemand;

  // Fetch the kitchens available in the store
  var siteRequest = await onDemand.getKitchens(_get_kitchens.Request());

  // Just get the first kitchen, as a terminal ID is required
  var firstKitchen = siteRequest.kitchens.first;

  // Get the terminal ID
  var terminalId = firstKitchen.displayOptions.onDemandTerminalId;

  print('Using terminal: ${firstKitchen.name}');
  print('Terminal ID: $terminalId\n');

  // Check the account balance
  await makeInquiry(onDemand, contextId, terminalId, UID);
}

/// Makes an account balance inquiry with the given [uid].
/// [contextId] is a context ID, and [terminalId] is the ID of the same terminal.
/// [uid] is the University ID of the account to inquiry.
Future<void> makeInquiry(
    OnDemand onDemand, String contextId, String terminalId, String uid) async {
  // Make the request (multiple inquiries may be made at once, for example
  // dining dollars and tiger bucks)
  var inquiry =
      await onDemand.accountInquiry(_account_inquiry.Request(inquiries: [
    _account_inquiry.Inquiry(
      // The constant ID of the tender dining dollars
      tenderId: TenderIds.DINING_DOLLARS,
      data: _account_inquiry.Data(
        tenantId: onDemand.siteNumber,
        contextId: contextId,
        // Another (different) constant ID for dining dollars
        tenderId: TenderIds.DINING_DOLLARS_DATA,
        // The terminal the quest is being made to (what terminal doesn't matter)
        atriumTerminal: _account_inquiry.AtriumTerminal(terminalId: terminalId),
        // Who this request is being made for
        customer: _account_inquiry.Customer(
          customerType: CUSTOMER_TYPE_UID,
          id: uid,
        ),
      ),
    ),
  ]));

  // List over the inquiries made (only one in this case)
  for (var inq in inquiry.inquiries) {
    print('Tender: ${TenderIds.TENDERS[inq.tenderId]}:');
    print('  Remaining: ${inq.amount.remaining} ${inq.amount.currency}');

    print('\n  Individual accounts:');
    for (var account in inq.accounts) {
      print('  ${account.name}: ${account.balance} ${account.currency}');
    }
  }
}
